<?php

namespace App\Http\Middleware;

use App;
use App\Models\Member;
use App\Traits\CommonMiddlewareFunctions;
use Auth;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Validation\UnauthorizedException;
use Symfony\Component\HttpFoundation\Response;

class MemberAuth
{
    use CommonMiddlewareFunctions;

    /**
     * @param  Request  $request
     * @param  Closure  $next
     * @param  string|null  $guard
     *
     * @return mixed
     */
    public function handle(Request $request, Closure $next, $guard = null)
    {
        if (App::runningUnitTests()) {
            return $next($request);
        }

        /** @var Member $member */
        $member = Auth::user();
//        if (! $member->email_verified_at) {
//            throw new UnauthorizedException('Please verify your email.', 401);
//        }

        if (! $member->is_active) {
            throw new UnauthorizedException('Your account is not active.', 401);
        }
        
        return $next($request);
    }
}
