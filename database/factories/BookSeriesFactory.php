<?php

namespace Database\Factories;

use App\Models\BookSeries;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookSeriesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->unique()->name,
        ];
    }
}
