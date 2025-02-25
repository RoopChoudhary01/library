<?php

namespace Database\Factories;

use App\Models\Member;
use App\Models\MembershipPlan;
use Illuminate\Database\Eloquent\Factories\Factory;

class MemberFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $membershipPlan = MembershipPlan::factory()->create();

        return [
            'member_id'          => $this->faker->unique()->uuid,
            'first_name'         => $this->faker->firstName,
            'last_name'          => $this->faker->lastName,
            'email'              => $this->faker->unique()->safeEmail,
            'password'           => $this->faker->password(8), // password
            'phone'              => $this->faker->phoneNumber,
        ];
    }
}
