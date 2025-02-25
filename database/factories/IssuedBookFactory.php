<?php

namespace Database\Factories;

use App\Models\BookItem;
use App\Models\IssuedBook;
use App\Models\Member;
use App\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class IssuedBookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $bookItem = BookItem::factory()->create();
        $member = Member::factory()->create();
        $user = User::factory()->create();
        $returnDueDate = date('Y-m-d H:i:s', strtotime('+7 days'));

        return [
            'book_item_id'    => $bookItem->id,
            'member_id'       => $member->id,
            'reserve_date'    => $this->faker->dateTime,
            'issued_on'       => $this->faker->dateTime,
            'return_due_date' => $returnDueDate,
            'note'            => $this->faker->sentence,
            'return_date'     => $this->faker->dateTime,
            'status'          => IssuedBook::STATUS_AVAILABLE,
            'issuer_id'       => $user->id,
            'returner_id'     => $user->id,
        ];
    }
}
