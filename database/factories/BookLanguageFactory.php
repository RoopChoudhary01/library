<?php

namespace Database\Factories;

use App\Models\BookLanguage;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookLanguageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'language_code' => $this->faker->unique()->name,
            'language_name' => $this->faker->unique()->name,
        ];
    }
}
