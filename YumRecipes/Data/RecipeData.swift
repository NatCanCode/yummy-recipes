//
//  RecipeData.swift
//  YumRecipes
//
//  Created by N N on 28/10/2022.
//

import Foundation

var recipes: [RecipeModel] = [
    
    RecipeModel(
        image: "banana-bread",
        formImage: nil,
        name: "Banana bread",
        category: .dessert,
        cost: .average,
        level: .easy,
        season: .winter,
        prepTime: 20,
        cookingTime: 30,
        restTime: 0,
        ingredients: [
            "125g coconut oil plus extra for the tin",
            "2 large ripe bananas",
            "3 medium eggs",
            "125g golden caster sugar",
            "2 tbsp coconut yogurt",
            "200g plain flour",
            "2 tsp baking powder",
            "seeds from 12 cardamom pods , crushed"
        ],
        description: "Banana bread is a moist and sweet quick bread made from mashed bananas.",
        step: [
            Step(title: "Step 1", description: "Heat oven to 180C/160C fan/gas 4."),
            Step(title: "Step 2", description: "Butter a loaf tin and line the base and sides with baking parchment."),
            Step(title: "Step 3", description: "Cream 125g softened coconut oil and 125g caster sugar until light and fluffy, then slowly add 3 beaten large eggs with a little of the 140g flour."),
            Step(title: "Step 4", description: "Fold in the remaining flour, 1 tsp baking powder and 2 mashed bananas."),
            Step(title: "Step 5", description: "Pour the mixture into the prepared tin and bake for about 50 mins, or until cooked through. Check the loaf at 5-min intervals from around 30-40 mins in the oven by testing it with a skewer (it should be able to be inserted and removed cleanly), as the time may vary depending on the shape of your loaf tin."),
            Step(title: "Step 6", description: "Cool in the tin for 10 mins, then remove to a wire rack.")
        ]
    ),
    
    RecipeModel(
        image: "chocolate-cookies",
        formImage: nil,
        name: "Chocolate chip cookies",
        category: .dessert,
        cost: .cheap,
        level: .easy,
        season: .spring,
        prepTime: 20,
        cookingTime: 15,
        restTime: 0,
        ingredients: [
            "100g chocolate",
            "75g coconut sugar",
            "75g coconut oil",
            "90g ground oats/oat flour",
            "70g buckwheat flour",
            "60g brown rice flour",
            "½ teaspoon of baking powder",
            "40ml water",
            "pinch of salt"
        ],
        description: "A chocolate chip cookie is a yummy drop cookie with chocolate chips or chocolate morsels.",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    ),
    
    RecipeModel(
        image: "banoffee-pie",
        formImage: nil,
        name: "Banoffee pie",
        category: .dessert,
        cost: .average,
        level: .intermediate,
        season: .autumn,
        prepTime: 20,
        cookingTime: 210,
        restTime: 0,
        ingredients: [
            "150g digestive biscuits (about 10)",
            "75g butter or coconut oil",
            "1 x 397g tin of full-fat sweetened condensed milk",
            "3 small just-ripe bananas",
            "1 lemon juice",
            "50g dark chocolate, broken into pieces, or 1 tbsp cocoa powder (or omit)",
            "300ml double cream (or omit)"
            
        ],
        description: "Banoffee pie is a British dessert pie made from bananas, cream and a thick caramel sauce, combined on a buttery crumbled biscuit base. Its name is a portmanteau constructed from the words \"banana\" and \"toffee\".",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    ),
    
    RecipeModel(
        image: "caesar-salad",
        formImage: nil,
        name: "Perfect Caesar Salad",
        category: .starter,
        cost: .average,
        level: .easy,
        season: .spring,
        prepTime: 15,
        cookingTime: 15,
        restTime: 0,
        ingredients: [
            "1 medium garlic clove, minced or grated",
            "¼ cup grated Parmesan cheese",
            "½ lemon juice",
            "¼ cup mayonnaise",
            "½ cup Greek yogurt",
            "1 tablespoon olive oil",
            "½ tablespoon Dijon mustard",
            "1 teaspoon anchovy paste or Worcestershire sauce (or omit)",
            "¼ teaspoon salt",
            "¼ teaspoon ground black pepper",
            "3 romaine hearts or 1 large head romaine",
            "½ cup Parmesan cheese shavings"
        ],
        description: "The very best Caesar salad recipe! This stunner has the perfect balance of creamy homemade dressing, crunchy croutons, and crisp lettuce.",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    ),
    
    RecipeModel(
        image: "caesar-salad",
        formImage: nil,
        name: "Spinach Apple Salad",
        category: .starter,
        cost: .cheap,
        level: .easy,
        season: .autumn,
        prepTime: 10,
        cookingTime: 0,
        restTime: 0,
        ingredients: [
            "½ cup Walnuts",
            "1 recipe Best Balsamic Dressing",
            "1 apple",
            "1 ripe pear",
            "3 cups baby spinach leaves",
            "3 cups baby mixed greens"
        ],
        description: "A chocolate chip cookie is a yummy drop cookie with chocolate chips or chocolate morsels.",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    ),
    
    RecipeModel(
        image: "caesar-salad",
        formImage: nil,
        name: "Banoffee pie",
        category: .starter,
        cost: .average,
        level: .intermediate,
        season: .spring,
        prepTime: 20,
        cookingTime: 210,
        restTime: 0,
        ingredients: [
            "150g digestive biscuits (about 10)",
            "75g butter or coconut oil",
            "1 x 397g tin of full-fat sweetened condensed milk",
            "3 small just-ripe bananas",
            "1 lemon juice",
            "50g dark chocolate, broken into pieces, or 1 tbsp cocoa powder (or none)",
            "300ml double cream (or none)"
            
        ],
        description: "Banoffee pie is a British dessert pie made from bananas, cream and a thick caramel sauce, combined on a buttery crumbled biscuit base. Its name is a portmanteau constructed from the words \"banana\" and \"toffee\".",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    ),
    
    RecipeModel(
        image: "caesar-salad",
        formImage: nil,
        name: "Banana bread",
        category: .main,
        cost: .average,
        level: .easy,
        season: .spring,
        prepTime: 20,
        cookingTime: 30,
        restTime: 0,
        ingredients: [
            "125g coconut oil plus extra for the tin",
            "2 large ripe bananas",
            "3 medium eggs",
            "125g golden caster sugar",
            "2 tbsp coconut yogurt",
            "200g plain flour",
            "2 tsp baking powder",
            "seeds from 12 cardamom pods , crushed"
        ],
        description: "Banana bread is a moist and sweet quick bread made from mashed bananas.",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    ),
    
    RecipeModel(
        image: "caesar-salad",
        formImage: nil,
        name: "Chocolate chip cookies",
        category: .main,
        cost: .cheap,
        level: .easy,
        season: .spring,
        prepTime: 20,
        cookingTime: 15,
        restTime: 0,
        ingredients: [
            "100g chocolate",
            "75g coconut sugar",
            "75g coconut oil",
            "90g ground oats/oat flour",
            "70g buckwheat flour",
            "60g brown rice flour",
            "½ teaspoon of baking powder",
            "40ml water",
            "pinch of salt"
        ],
        description: "A chocolate chip cookie is a yummy drop cookie with chocolate chips or chocolate morsels.",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    ),
    
    RecipeModel(
        image: "caesar-salad",
        formImage: nil,
        name: "Banoffee pie",
        category: .main,
        cost: .average,
        level: .intermediate,
        season: .spring,
        prepTime: 20,
        cookingTime: 210,
        restTime: 0,
        ingredients: [
            "150g digestive biscuits (about 10)",
            "75g butter or coconut oil",
            "1 x 397g tin of full-fat sweetened condensed milk",
            "3 small just-ripe bananas",
            "1 lemon juice",
            "50g dark chocolate, broken into pieces, or 1 tbsp cocoa powder (or omit)",
            "300ml double cream (or omit)"
            
        ],
        description: "Banoffee pie is a British dessert pie made from bananas, cream and a thick caramel sauce, combined on a buttery crumbled biscuit base. Its name is a portmanteau constructed from the words \"banana\" and \"toffee\".",
        step: [
            Step(title: "", description: ""),
            Step(title: "", description: ""),
            Step(title: "", description: "")
        ]
    )
]

extension RecipeModel {
    static var recipeSample = RecipeModel(
        image: "banana-bread",
        formImage: nil,
        name: "Banana bread",
        category: .dessert,
        cost: .average,
        level: .easy,
        season: .autumn,
        prepTime: 20,
        cookingTime: 30,
        restTime: 0,
        ingredients: [
            "125g coconut oil plus extra for the tin",
            "2 large ripe bananas",
            "3 medium eggs",
            "125g golden caster sugar",
            "2 tbsp coconut yogurt",
            "200g plain flour",
            "2 tsp baking powder",
            "seeds from 12 cardamom pods, crushed"
        ],
        description: "Banana bread is a moist and sweet quick bread made from mashed bananas.",
        step: [
            Step(title: "Step 1", description: "Heat oven to 180C/160C fan/gas 4."),
            Step(title: "Step 2", description: "Butter a loaf tin and line the base and sides with baking parchment."),
            Step(title: "Step 3", description: "Cream 125g softened coconut oil and 125g caster sugar until light and fluffy, then slowly add 3 beaten large eggs with a little of the 140g flour."),
            Step(title: "Step 4", description: "Fold in the remaining flour, 1 tsp baking powder and 2 mashed bananas."),
            Step(title: "Step 5", description: "Pour the mixture into the prepared tin and bake for about 50 mins, or until cooked through. Check the loaf at 5-min intervals from around 30-40 mins in the oven by testing it with a skewer (it should be able to be inserted and removed cleanly), as the time may vary depending on the shape of your loaf tin."),
            Step(title: "Step 6", description: "Cool in the tin for 10 mins, then remove to a wire rack.")
        ]
    )
}
