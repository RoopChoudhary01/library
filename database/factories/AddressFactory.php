<?php

namespace Database\Factories;

use App\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class AddressFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'address_1'  => $this->faker->address,
            'owner_id'   => $this->faker->randomDigit,
            'owner_type' => $this->faker->word,
            'city'       => $this->faker->city,
            'state'      => $this->faker->country,
            'country_id' => $this->faker->randomDigitNotNull,
            'zip'        => $this->faker->postcode,
        ];
    }
}
