<?php

namespace Database\Factories;

use App\Models\MembershipPlan;
use Illuminate\Database\Eloquent\Factories\Factory;

class MembershipPlanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'        => $this->faker->name,
            'price'       => $this->faker->word,
            'frequency'   => MembershipPlan::MONTHLY_FREQUENCY,
            'description' => $this->faker->text,
        ];
    }
}
