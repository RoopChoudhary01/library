<?php

namespace Database\Factories;

use App\Models\BookSeries;
use App\Models\SeriesBook;
use Illuminate\Database\Eloquent\Factories\Factory;

class SeriesBookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $book = \App\Models\Book::factory()->create();
        $bookSeries = BookSeries::factory()->create();

        return [
            'book_id'   => $book->id,
            'series_id' => $bookSeries->id,
            'sequence'  => $this->faker->unique()->randomDigit,
        ];
    }
}
