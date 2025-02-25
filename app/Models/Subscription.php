<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Carbon;


/**
 * App\Models\Subscription
 *
 * @property-read \App\Models\Member|null $member
 * @property-read \App\Models\MembershipPlan|null $subscriptionPlan
 * @property-read \App\Models\Transaction|null $transactions
 * @method static \Illuminate\Database\Eloquent\Builder|Subscription newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscription newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscription query()
 * @mixin \Eloquent
 */
class Subscription extends Model
{
    /**
     * @var string
     */
    protected $table = 'subscriptions';
    
    public $fillable = ['member_id', 'plan_id', 'transaction_id', 'plan_amount', 'plan_frequency', 'start_date','end_date','trial_ends_at','status'];

    /**
     * @var string[]
     */
    protected $casts = [
        'member_id'      => 'integer',
        'plan_id'        => 'integer',
        'transaction_id' => 'integer',
        'starts_at'      => 'datetime',
        'ends_at'        => 'datetime',
        'trial_ends_at'  => 'datetime',
        'status'         => 'boolean',
    ];

    const ACTIVE = 1;
    const INACTIVE = 0;
    
    /**
     * @return BelongsTo
     */
    public function subscriptionPlan(): BelongsTo
    {
        return $this->belongsTo(MembershipPlan::class, 'plan_id', 'id');
    }

    /**
     * @return BelongsTo
     */
    public function member(): BelongsTo
    {
        return $this->belongsTo(Member::class, 'member_id');
    }
    
}
