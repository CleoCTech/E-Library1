<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
class Customer
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::user()->is_admin == 1 && Auth::user()->role == "Customer"){
            return $next($request);
        }
        return redirect()->back()->with("error", "Access denied.");
    }
}
