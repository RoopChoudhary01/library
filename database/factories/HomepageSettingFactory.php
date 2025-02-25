<?php

namespace Database\Factories;

use App\Models\HomepageSetting;
use Illuminate\Database\Eloquent\Factories\Factory;

class HomepageSettingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'key'          => $this->faker->unique()->name,
            'value'        => $this->faker->word,
            'display_name' => $this->faker->word,
        ];
    }
}
