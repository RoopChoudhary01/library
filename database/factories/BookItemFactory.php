<?php

namespace Database\Factories;

use App\Models\Book;
use App\Models\BookItem;
use App\Models\BookLanguage;
use App\Models\Publisher;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class BookItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $book = Book::factory()->create();
        $bookLanguage = BookLanguage::factory()->create();
        $publisher = Publisher::factory()->create();

        return [
            'book_id'      => $book->id,
            'book_code'    => Str::random(8),
            'price'        => $this->faker->randomDigitNotNull,
            'language_id'  => $bookLanguage->id,
            'publisher_id' => $publisher->id,
            'format'       => BookItem::FORMAT_PAPERBACK,
            'status'       => BookItem::STATUS_AVAILABLE,
            'edition'      => $this->faker->randomDigitNotNull,
        ];
    }
}
