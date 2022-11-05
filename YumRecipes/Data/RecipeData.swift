//
//  RecipeData.swift
//  YumRecipes
//
//  Created by N N on 28/10/2022.
//

import Foundation

var recipes: [RecipeModel] = [
    
    RecipeModel(
        image: "caesar-salad",
        formImage: nil,
        name: "Caesar Salad",
        category: .starter,
        cost: .average,
        level: .easy,
        diet: .allDiets,
        season: .spring,
        prepTime: 15,
        cookingTime: 15,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "ail", ingredientName: "1 medium garlic clove, minced or grated"),
            Ingredient(ingredientImage: "parmesan-powder", ingredientName: "¼ cup grated Parmesan cheese"),
            Ingredient(ingredientImage: "citron", ingredientName: "½ lemon juice"),
            Ingredient(ingredientImage: "mayonnaise", ingredientName: "¼ cup mayonnaise"),
            Ingredient(ingredientImage: "yaourt", ingredientName: "½ cup Greek yogurt"),
            Ingredient(ingredientImage: "huile-olive", ingredientName: "1 tbsp olive oil"),
            Ingredient(ingredientImage: "mustard", ingredientName: "½ tbsp Dijon mustard"),
            Ingredient(ingredientImage: "anchovy-paste", ingredientName: "1 tsp anchovy paste or Worcestershire sauce (or omit)"),
            Ingredient(ingredientImage: "sel", ingredientName: "¼ tsp salt"),
            Ingredient(ingredientImage: "poivre", ingredientName: "¼ tsp ground black pepper"),
            Ingredient(ingredientImage: "salade", ingredientName: "3 romaine hearts or 1 large head romaine"),
            Ingredient(ingredientImage: "parmesan-block", ingredientName: "½ cup Parmesan cheese shavings"),
            Ingredient(ingredientImage: "croutons", ingredientName: "Homemade croutons (optional)")
        ],
        description: "The very best Caesar salad recipe! This stunner has the perfect balance of creamy homemade dressing, crunchy croutons, and crisp lettuce.",
        step: [
            Step(title: "Step 1", description: "Whisk together the dressing ingredients in a bowl. Store leftovers refrigerated in a covered jar for up to 1 week."),
            Step(title: "Step 2", description: "Tear the romaine leaves into pieces or chop them. Top each salad with Parmesan cheese shavings, croutons, and dressing. Enjoy!")
        ]
    ),
    
    RecipeModel(
        image: "spinach-salad",
        formImage: nil,
        name: "Spinach Apple Salad",
        category: .starter,
        cost: .cheap,
        level: .easy,
        diet: .vegan,
        season: .autumn,
        prepTime: 10,
        cookingTime: 0,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "walnuts", ingredientName: "½ cup Walnuts"),
            Ingredient(ingredientImage: "vinaigre-balsamique", ingredientName: "Balsamic dressing"),
            Ingredient(ingredientImage: "huile-olive", ingredientName: "Olive oil"),
            Ingredient(ingredientImage: "apple", ingredientName: "1 apple"),
            Ingredient(ingredientImage: "pear", ingredientName: "1 ripe pear"),
            Ingredient(ingredientImage: "epinards", ingredientName: "3 cups baby spinach leaves"),
            Ingredient(ingredientImage: "mesclun", ingredientName: "3 cups baby mixed greens")
        ],
        description: "This spinach apple salad is so delicious and easy to prepare, it will be your new go-to!",
        step: [
            Step(title: "Step 1", description: "Make the Glazed Walnuts or Glazed Pecans. While they cook, prep the rest of the salad. Or, make these ahead!"),
            Step(title: "Step 2", description: """
            Prepare a balsamic dressing:
                 2 tbsp aged balsamic vinegar
                 2 tbsp Dijon mustard
                 1 tbsp maple syrup or honey
                 ¼ tsp salt
                 6 tbsp olive oil
            """),
            Step(title: "Step 3", description: "Core the apple and pear, cut them into thin slices."),
            Step(title: "Step 4", description: "Place the greens on serving plates and top with apples, pears, and walnuts. Pour over the dressing and serve."),
            Step(title: "Pro tip", description: "Dress it up by adding cubed Manchego cheese!")
        ]
    ),
    
    RecipeModel(
        image: "mozzarella-salad",
        formImage: nil,
        name: "Mozzarella salad",
        category: .starter,
        cost: .cheap,
        level: .easy,
        diet: .vegetarian,
        season: .spring,
        prepTime: 5,
        cookingTime: 0,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "laitue", ingredientName: "100g lettuce or baby spinach leaves, or a mixture of both"),
            Ingredient(ingredientImage: "tomates", ingredientName: "100g fresh or semi-dried tomatoes in oil from a jar (reserve 1 tbsp oil for drizzling)"),
            Ingredient(ingredientImage: "mozzarella", ingredientName: "125g ball light buffalo mozzarella, cut into slices"),
            Ingredient(ingredientImage: "pumpkin-seeds", ingredientName: "2 tsp pumpkin seeds"),
            Ingredient(ingredientImage: "vinaigre-balsamique", ingredientName: "2 tsp balsamic vinegar"),
            Ingredient(ingredientImage: "huile-olive", ingredientName: "1 tbsp olive oil")
        ],
        description: "A basic vegetarian go-to salad with fresh or semi-dried tomatoes, cheese and seeds. Easy; super quick, and delicious!",
        step: [
            Step(title: "Step 1", description: "Put the salad leaves, tomatoes and pepper in a large bowl and toss together. Divide the salad between 2 serving plates."),
            Step(title: "Step 2", description: "Divide the mozzarella equally between the plates, scatter with pumpkin seeds, and drizzle with balsamic vinegar and olive oil.")
        ]
    ),
    
    RecipeModel(
        image: "pumpkin-soup",
        formImage: nil,
        name: "Pumpkin Soup",
        category: .main,
        cost: .average,
        level: .intermediate,
        diet: .vegan,
        season: .autumn,
        prepTime: 20,
        cookingTime: 10,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "potimarron", ingredientName: "1.2kg pumpkin or butternut squash (unpeeled weight)"),
            Ingredient(ingredientImage: "oignon", ingredientName: "1 onion, sliced (white, brown, yellow)"),
            Ingredient(ingredientImage: "ail", ingredientName: "2 garlic cloves"),
            Ingredient(ingredientImage: "bouillon-legumes", ingredientName: "3 cups/750ml vegetable or chicken broth/stock, low sodium"),
            Ingredient(ingredientImage: "eau", ingredientName: "1 cup/250ml water"),
            Ingredient(ingredientImage: "poivre", ingredientName: "Salt and pepper"),
            Ingredient(ingredientImage: "coconut-milk", ingredientName: "½ or more cup/125 to 185ml coconut milk or cream")
        ],
        description: "This is THE pumpkin soup recipe you will make now and forever!",
        step: [
            Step(title: "Step 1", description: "Cut the pumpkin into 3cm slices. Cut the skin off and scrape seeds out. Cut into 4cm chunks."),
            Step(title: "Step 2", description: "Place the pumpkin, onion, garlic, broth and water in a pot – liquid won't quite cover all the pumpkin. Bring to a boil, uncovered, then reduce heat and let simmer rapidly until pumpkin is tender (check with butter knife) – about 10 mins."),
            Step(title: "Step 3", description: "Remove from heat and use a stick blender to blend until smooth."),
            Step(title: "Step 4", description: "Season to taste with salt and pepper, stir through coconut milk or cream."),
            Step(title: "Step 5", description: "Ladle soup into bowls, drizzle over a bit of coconut milk or cream, sprinkle with pepper and parsley if desired. Serve with crusty bread!"),
            Step(title: "Pro tip", description: "Serve with crusty bread!")
        ]
    ),
    
    RecipeModel(
        image: "pizza",
        formImage: nil,
        name: "Vegetable pizza",
        category: .main,
        cost: .cheap,
        level: .easy,
        diet: .vegetarian,
        season: .spring,
        prepTime: 25,
        cookingTime: 25,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "dough", ingredientName: "1 homemade store-bought pizza dough"),
            Ingredient(ingredientImage: "sauce-tomate", ingredientName: "½ cup pizza sauce or marinara"),
            Ingredient(ingredientImage: "epinards", ingredientName: "1 cup baby spinach"),
            Ingredient(ingredientImage: "mozzarella", ingredientName: "1 to 3 cups (115 to 230g) shredded low-moisture part-skim mozzarella cheese"),
            Ingredient(ingredientImage: "artichaut-bocal", ingredientName: "¼ cup jarred or canned artichoke, cut"),
            Ingredient(ingredientImage: "poivrons", ingredientName: "¼ cup fresh red or orange bell pepper, cut into narrow strips"),
            Ingredient(ingredientImage: "oignon-rouge", ingredientName: "¼ cup red onion, cut into thin wedges"),
            Ingredient(ingredientImage: "tomate-cerise", ingredientName: "¼ cup halved cherry tomatoes"),
            Ingredient(ingredientImage: "olives", ingredientName: "¼ cup olives, halved lengthwise"),
            Ingredient(ingredientImage: "basilic", ingredientName: "Optional garnishes: Fresh basil, red pepper flakes and finely grated Parmesan cheese")
        ],
        description: "This ultimate vegetarian pizza recipe will delight vegetarians and carnivores alike.",
        step: [
            Step(title: "Step 1", description: "Preheat the oven to 260C with a rack in the upper third of the oven."),
            Step(title: "Step 2", description: "Spread sauce evenly over the pizza, leaving about 2.5cm bare around the edges. Evenly distribute the spinach on top of the sauce, followed by the cheese."),
            Step(title: "Step 3", description: "Top the pizza with artichoke, bell pepper, red onion, tomatoes and olives."),
            Step(title: "Step 4", description: "Bake the pizza on the top rack until the crust is golden and the cheese is golden and bubbly, about 10 to 12 mins — keep an eye on it."),
            Step(title: "Step 5", description: "Transfer the pizza to a cutting board and sprinkle with with fresh basil, red pepper flakes and Parmesan, if using. Slice and serve!"),
            Step(title: "Prop tip", description: "Leftover pizza keeps well in the refrigerator for 4 days, or for several months in the freezer.")
        ]
    ),
    
    RecipeModel(
        image: "ratatouille",
        formImage: nil,
        name: "Ratatouille",
        category: .main,
        cost: .cheap,
        level: .easy,
        diet: .vegan,
        season: .autumn,
        prepTime: 20,
        cookingTime: 75,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "oignon-rouge", ingredientName: "2 red onions"),
            Ingredient(ingredientImage: "ail", ingredientName: "4 cloves of garlic"),
            Ingredient(ingredientImage: "aubergines", ingredientName: "2 aubergines"),
            Ingredient(ingredientImage: "courgette", ingredientName: "3 courgettes"),
            Ingredient(ingredientImage: "poivrons", ingredientName: "3 red or yellow peppers"),
            Ingredient(ingredientImage: "tomates", ingredientName: "6 ripe tomatoes"),
            Ingredient(ingredientImage: "basilic", ingredientName: "½ a bunch of fresh basil (15g)"),
            Ingredient(ingredientImage: "huile-olive", ingredientName: "Olive oil"),
            Ingredient(ingredientImage: "thym", ingredientName: "a few sprigs of fresh thyme"),
            Ingredient(ingredientImage: "tomates-pelees", ingredientName: "1 x 400 g tin of quality plum tomatoes"),
            Ingredient(ingredientImage: "vinaigre-balsamique", ingredientName: "1 tbsp balsamic vinegar"),
            Ingredient(ingredientImage: "citron", ingredientName: "½ lemon")
        ],
        description: "This moreish Mediterranean-style vegetable stew is perfect for a super-healthy midweek supper.",
        step: [
            Step(title: "Step 1", description: "Prep your ingredients before you start – peel and cut the onions into wedges, then peel and finely slice the garlic. Trim the aubergines and courgettes, deseed the peppers and chop into 2.5cm chunks. Roughly chop the tomatoes. Pick the basil leaves and set aside, then finely slice the stalks."),
            Step(title: "Step 2", description: "Heat 2 tablespoons of oil in a large casserole pan or saucepan over a medium heat, add the chopped aubergines, courgettes and peppers (you may need to do this in batches) and fry for around 5 minutes, or until golden and softened, but not cooked through. Spoon the cooked veg into a large bowl."),
            Step(title: "Step 3", description: "To the pan, add the onion, garlic, basil stalks and thyme leaves with another drizzle of oil, if needed. Fry for 10 to 15 minutes, or until softened and golden."),
            Step(title: "Step 4", description: "Return the cooked veg to the pan and stir in the fresh and tinned tomatoes, the balsamic and a good pinch of sea salt and black pepper."),
            Step(title: "Step 5", description: "Mix well, breaking up the tomatoes with the back of a spoon. Cover the pan and simmer over a low heat for 30 to 35 minutes, or until reduced, sticky and sweet."),
            Step(title: "Step 6", description: "Tear in the basil leaves, finely grate in the lemon zest and adjust the seasoning, if needed. Serve with a hunk of bread or steamed rice.")
        ]
    ),
    
    RecipeModel(
        image: "banana-bread",
        formImage: nil,
        name: "Banana bread",
        category: .dessert,
        cost: .average,
        level: .easy,
        diet: .vegetarian,
        season: .winter,
        prepTime: 20,
        cookingTime: 30,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "banane", ingredientName: "2 large ripe bananas"),
            Ingredient(ingredientImage: "oeuf", ingredientName: "3 medium eggs"),
            Ingredient(ingredientImage: "caster-sugar", ingredientName: "125g golden caster sugar"),
            Ingredient(ingredientImage: "yaourt", ingredientName: "2 tbsp coconut yogurt"),
            Ingredient(ingredientImage: "farine", ingredientName: "200g plain flour"),
            Ingredient(ingredientImage: "levure", ingredientName: "2 tsp baking powder"),
            Ingredient(ingredientImage: "cardamom", ingredientName: "seeds from 12 cardamom pods, crushed")
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
        diet: .vegan,
        season: .allSeasons,
        prepTime: 20,
        cookingTime: 12,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "chocolate", ingredientName: "100g chocolate"),
            Ingredient(ingredientImage: "caster-sugar", ingredientName: "75g coconut sugar"),
            Ingredient(ingredientImage: "coconut-oil", ingredientName: "75g coconut oil"),
            Ingredient(ingredientImage: "oats", ingredientName: "90g ground oats/oat flour"),
            Ingredient(ingredientImage: "farine", ingredientName: "70g buckwheat flour"),
            Ingredient(ingredientImage: "farine", ingredientName: "60g brown rice flour"),
            Ingredient(ingredientImage: "levure", ingredientName: "½ teaspoon of baking powder"),
            Ingredient(ingredientImage: "eau", ingredientName: "40ml water"),
            Ingredient(ingredientImage: "sel", ingredientName: "pinch of salt")
        ],
        description: "A chocolate chip cookie is a yummy drop cookie with chocolate chips or chocolate morsels.",
        step: [
            Step(title: "Step 1", description: "Pre-heat the oven to 170C, fan oven."),
            Step(title: "Step 2", description: "Start by melting the coconut oil on on a low heat - don’t let it come to the boil. Once it's liquid, pour it into a mixing bowl with the coconut sugar and stir until combined."),
            Step(title: "Step 3", description: "Next add in the ground oats, brown rice flour, buckwheat flour, baking powder and salt. Mix well, then stir in the water. Now stir in the chocolate chips."),
            Step(title: "Step 4", description: "Roll the mix into balls, then flatten and place onto baking paper lined baking trays."),
            Step(title: "Step 5", description: "Bake for 12 mins. The cookies come out soft at this point and finish setting on the tray once they’re out the oven, so do leave them for a few minutes before digging in!")
        ]
    ),
    
    RecipeModel(
        image: "banoffee-pie",
        formImage: nil,
        name: "Banoffee pie",
        category: .dessert,
        cost: .average,
        level: .easy,
        diet: .allDiets,
        season: .autumn,
        prepTime: 20,
        cookingTime: 240,
        restTime: 120,
        ingredients: [
            Ingredient(ingredientImage: "digestive-biscuits", ingredientName: "150g digestive biscuits (about 10)"),
            Ingredient(ingredientImage: "beurre", ingredientName: "75g butter or coconut oil"),
            Ingredient(ingredientImage: "lait-concentre", ingredientName: "1 x 397g tin of sweetened condensed milk"),
            Ingredient(ingredientImage: "banane", ingredientName: "3 small just-ripe bananas"),
            Ingredient(ingredientImage: "citron", ingredientName: "1 lemon juice"),
            Ingredient(ingredientImage: "chocolate", ingredientName: "50g dark chocolate, broken into pieces, or 1 tbsp cocoa powder (or omit)"),
            Ingredient(ingredientImage: "yaourt", ingredientName: "300ml double cream (or omit)")
        ],
        description: "Banoffee pie is a British dessert pie made from bananas, cream and a thick caramel sauce, combined on a buttery crumbled biscuit base. Its name is a portmanteau constructed from the words \"banana\" and \"toffee\".",
        step: [
            Step(title: "Step 1", description: "Fill a deep medium saucepan with water. Bring to the boil. Carefully place the can in the saucepan, ensuring there’s enough water to completely cover the can at all times, topping up water frequently throughout the cooking process. Simmer, uncovered for 3 hours. Ensure the can is completely covered with water at all times during cooking. Carefully remove the can from the boiling water. Allow to cool completely before opening and using as a caramel spread or dip."),
            Step(title: "Step 2", description: "Line the sides of the 20cm tin with strips of cling film (using a little water to help the cling film stick) and then line the base with a disc of baking paper."),
            Step(title: "Step 3", description: "Then make the pie base. Place the biscuits in a freezer bag and finely crush with a rolling pin. Melt the butter coconut oil, add the biscuits and combine. Spoon into the base of the tin, pressing down with the back of the spoon to level. Chill for 15 mins."),
            Step(title: "Step 4", description: "Peel and slice the bananas and arrange in neat rounds on top of the caramel. Whip the cream to soft peaks and spoon or pipe it over the bananas, then level the top before chilling in the fridge for an hour."),
            Step(title: "Step 5", description: "Meanwhile, melt the chocolate in a bowl set over pan of gently simmering water. Remove from the heat and allow to cool."),
            Step(title: "Step 6", description: "Remove the edges of the tin from the banoffee pie, peel off the cling film and transfer to a serving plate, slipping the baking paper from underneath. Zigzag the melted chocolate over the top (if using), making sure it’s cool or it will melt the cream, or dust with cocoa powder."),
            Step(title: "Pro tip", description: "The base and filling can be made up to a day ahead and kept in the fridge. Ideally, the pie should be assembled with the banana and cream on the day. However, it can be assembled a day in advance: as long as the banana is completely covered in the cream, it will not discolour.")
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
        diet: .vegetarian,
        season: .autumn,
        prepTime: 20,
        cookingTime: 30,
        restTime: 0,
        ingredients: [
            Ingredient(ingredientImage: "coconut-oil", ingredientName: "125g coconut oil plus extra for the tin"),
            Ingredient(ingredientImage: "banane", ingredientName: "2 large ripe bananas"),
            Ingredient(ingredientImage: "oeuf", ingredientName: "3 medium eggs"),
            Ingredient(ingredientImage: "caster-sugar", ingredientName: "125g golden caster sugar"),
            Ingredient(ingredientImage: "yaourt", ingredientName: "2 tbsp coconut yogurt"),
            Ingredient(ingredientImage: "farine", ingredientName: "200g plain flour"),
            Ingredient(ingredientImage: "levure", ingredientName: "2 tsp baking powder"),
            Ingredient(ingredientImage: "cardamom", ingredientName: "seeds from 12 cardamom pods, crushed")
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
