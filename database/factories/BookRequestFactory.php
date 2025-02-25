<?php

namespace Database\Factories;

use App\Models\BookItem;
use App\Models\BookRequest;
use App\Models\Member;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookRequestFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $member = Member::factory()->create();

        return [
            'member_id' => $member->id,
            'book_name' => $this->faker->unique()->name,
            'isbn'      => $this->faker->unique()->isbn10,
            'edition'   => $this->faker->word,
            'format'    => BookItem::FORMAT_PAPERBACK,
            'status'    => BookRequest::PENDING,
        ];
    }
}
