<?php

namespace App\Http\Controllers\API\B1;

use App\Http\Controllers\AppBaseController;
use App\Repositories\SubscriptionRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

/**
 * Class SubscriptionAPIController
 */
class SubscriptionAPIController extends AppBaseController
{
    /** @var SubscriptionRepository */
    private $subscriptionRepository;

    public function __construct(SubscriptionRepository $subscriptionRepo)
    {
        $this->subscriptionRepository = $subscriptionRepo;
    }

    /**
     * @param Request $request
     *
     * @return JsonResponse
     */
    public function index(Request $request): JsonResponse
    {
        $input = $request->except(['skip', 'limit']);
        $subscriptions = $this->subscriptionRepository->all(
            $input,
            $request->get('skip'),
            $request->get('limit')
        );
        
        return $this->sendResponse(
            $subscriptions->toArray(),
            'Subscriptions retrieved successfully.',
            ['totalRecords' => $this->subscriptionRepository->all($input)->count()]
        );
    }

    public function update($id, Request  $request) {
        
        $subscription = $this->subscriptionRepository->findOrFail($id);
        
        $input = $request->all();

        $subscription->update($input);
        
        return $this->sendSuccess('Subscription Updated successfully');
    }
}
