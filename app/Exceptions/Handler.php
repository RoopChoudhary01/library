<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Http\Response as HttpResponse;
use Illuminate\Validation\ValidationException;
use Response;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Throwable  $exception
     * @return void
     * @throws \Throwable
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $exception
     * @return \Illuminate\Http\JsonResponse|\Illuminate\Http\Response|\Symfony\Component\HttpFoundation\Response
     */
    public function render($request, Throwable $exception)
    {
        $code = $exception->getCode();
        $message = $exception->getMessage();

        if (method_exists($exception, 'getStatusCode') && $exception->getStatusCode() == 403) {
            return Response::json([
                'success' => false,
                'message' => 'Unauthorized action.',
            ], HttpResponse::HTTP_FORBIDDEN);
        }

        if ($code < 100 || $code >= 600) {
            $code = HttpResponse::HTTP_INTERNAL_SERVER_ERROR;
        }

        if ($exception instanceof ModelNotFoundException) {
            /*
            * Try to convert error message like:
            *     No query results for model [App\Models\Model].
            * To:
            *     Model not found
            */
            if (preg_match('@\\\\(\w+)\]@', $message, $matches)) {
                $model = $matches[1];
                $model = preg_replace('/Table/i', '', $model);
                $message = "{$model} not found.";
            }
            $code = HttpResponse::HTTP_NOT_FOUND;
        } else {
            if ($exception instanceof ValidationException) {
                $code = HttpResponse::HTTP_UNPROCESSABLE_ENTITY;
                $validator = $exception->validator;
                $message = $validator->errors()->first();
            }
        }

        if ($exception instanceof AuthenticationException) {
            $code = HttpResponse::HTTP_UNAUTHORIZED;
        }

        if ($request->expectsJson() or $request->isXmlHttpRequest()) {
            return Response::json([
                'success' => false,
                'message' => $message,
            ], $code);
        }

        return parent::render($request, $exception);
    }
}
