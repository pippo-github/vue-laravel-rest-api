<?php

namespace Database\Factories;

use App\Models\Articolo;
use Illuminate\Database\Eloquent\Factories\Factory;

class ArticoloFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Articolo::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
            "titolo" =>  $this->faker->text(22),
            "body" => $this->faker->sentence(22),
        ];
    }
}
