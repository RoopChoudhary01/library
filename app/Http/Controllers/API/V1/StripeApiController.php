<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\AppBaseController;
use App\Models\MembershipPlan;
use App\Repositories\StripeRepository;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Stripe\Exception\ApiErrorException;
use Stripe\Stripe;

/**
 * Class StripeApiController
 */
class StripeApiController extends AppBaseController
{
    /**
     * @var StripeRepository 
     */
    private $stripeRepository;

    public function __construct(StripeRepository $stripeRepository)
    {
        $this->stripeRepository = $stripeRepository;
    }

    /**
     * @param $id
     *
     * @throws ApiErrorException
     *
     * @throws \JsonException
     * @return JsonResponse
     */
    public function createSession($id): JsonResponse
    {
        /** @var MembershipPlan $plan */
        $plan = MembershipPlan::whereId($id)->firstOrFail();
        $user = Auth::user();
        $stripeKey = getSettingValueByKey('stripe_secret');
        Stripe::setApiKey($stripeKey);
        $data = [
            'plan_id' => $plan->id,
            'member_id'=> $user->id,
        ];
        $session = \Stripe\Checkout\Session::create([
            'payment_method_types'       => ['card'],
            'customer_email'             => $user->email,
            'line_items'                 => [
                [
                    'price_data'  => [
                        'product_data' => [
                            'name' => 'BILL OF PLAN '.$plan->name,
                        ],
                        'unit_amount'  => (getSettingValueByKey('currency') != 'JPY') ? $plan->price * 100 : $plan->price,
                        'currency'     => getSettingValueByKey('currency'),
                    ],
                    'quantity'    => 1,
                    'description' => 'BILL OF PLAN '.$plan->name,
                ],
            ],
            'billing_address_collection' => 'auto',
            'client_reference_id'        => json_encode($data, JSON_THROW_ON_ERROR),
            'mode'                       => 'payment',
            'success_url'                => url('api/v1/payment-success').'?session_id={CHECKOUT_SESSION_ID}',
            'cancel_url'                 => url('api/v1/failed-payment?error=payment_cancelled'),
        ]);
        $result = [
            'sessionId' => $session['id'],
        ];

        return $this->sendResponse($result, 'Session created successfully.');
    }

    /**
     * @param Request $request
     *
     * @throws ApiErrorException
     * @throws \JsonException
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function paymentSuccess(Request $request): \Illuminate\Http\RedirectResponse
    {
        $sessionId = $request->get('session_id');
        $this->stripeRepository->paymentSuccess($sessionId);

        return redirect(url("/#/app/books"));
    }

    /**
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handleFailedPayment(): \Illuminate\Http\RedirectResponse
    {

        return redirect(url("/#/app/books"));
    }

}
