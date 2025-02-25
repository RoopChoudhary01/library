<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'         => $this->faker->name,
            'description'  => $this->faker->sentence,
            'url'          => $this->faker->url,
            'isbn'         => $this->faker->isbn10,
            'is_featured'  => $this->faker->boolean,
        ];
    }
}
