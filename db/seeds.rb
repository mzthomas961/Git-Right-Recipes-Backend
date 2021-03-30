# Diets
d1 = Diet.create(name: "Vegetarian", description: "Vegetarian meals do not contain fish, meat, or chicken.", image: "https://media.istockphoto.com/photos/bowl-dish-with-brown-rice-cucumber-tomato-green-peas-red-cabbage-picture-id1047798504?k=6&m=1047798504&s=612x612&w=0&h=SqHh8UZas82kGOifausDLjh5WcJRT4T4pFtBNB-BVg4=")
d2 = Diet.create(name:"Vegan", description: "No ingredients may contain meat or meat by-products, such as bones or gelatin, nor may they contain eggs, dairy, or honey. ", image:"https://images.immediate.co.uk/production/volatile/sites/30/2020/08/satay-sweet-potato-curry_1-710fb3f.jpg?quality=90&resize=960,872")
d3 = Diet.create(name:"Paleo", description:"Allowed ingredients include meat (especially grass fed), fish, eggs, vegetables, some oils (e.g. coconut and olive oil), and in smaller quantities, fruit, nuts, and sweet potatoes. We also allow honey and maple syrup. Ingredients not allowed include legumes (e.g. beans and lentils), grains, dairy, refined sugar, and processed foods.", image:"https://images.everydayhealth.com/images/diet-nutrition/paleo-diet/can-a-paleo-diet-treat-uc-1440x810.jpg?sfvrsn=aa69fdba_0")


#User
u1 = User.create(name: "Scout", password: "Scout123", image: "https://i.pinimg.com/474x/8b/c0/95/8bc0959b121dac853564de8856ebf999.jpg")
u2 = User.create(name:"Kenny",password:"Kenny123", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9DQHd3e20lb4KV3SFqATpULx9sER4QWo5Aw&usqp=CAU")


# Recipe
r1 = Recipe.create(name: "Vegetable Soup", image: "https://images.themodernproper.com/billowy-turkey/production/posts/2020/Vegetable-Soup-8.jpg?w=667&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1600877034&s=3cd2c2ede393325fb4b39768142d6dc3", ingredients: " olive oil, celery, onion, vegetables, herbs and spices, stock, canned tomatoes x2, salt", instructions: "1. Sauté onions and celery until fragrant and translucent. Take your time—remember, this is where your real flavor begins.
    2. Add the garlic, zucchini and green beans and give them a little sauté, too. This step will deepen their flavor a bit before the soup gets all liquidy. A layer of flavor.
    3. Pour in everything else and bring the pot of soup to a boil.
    4. Turn it to a low simmer and cover the pot. Simmer for about half an hour, until the vegetables are super tender and it looks like vegetable soup you’d like to eat!
    5. Eat! We like to serve it topped with lots of freshly grated Parmigiano and fresh basil.", 
    breakfast: false, lunch: true, dinner: true, snack: false, dessert: false)
r2 = Recipe.create(name: "Instant Pot Mac and Cheese", image:"https://images.themodernproper.com/billowy-turkey/production/posts/2020/instant-pot-mac-and-cheese-8.jpg?w=667&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1610374934&s=2143d8528902c741c0495ad05b34204b", ingredients:"macaroni, salt, heavy cream, parmesan cheddar cheese",
instructions:"
1. The pasta, water, and salt go into the Instant Pot.
2. Lock the lid and pressure cook for 3 minutes.
3. Quick release the steam so the macaroni noodles don’t overcook.
4. Open the lid and stir in the cheeses and heavy cream.
5. Eat up!", 
breakfast:false, lunch:true, dinner:true, snack:false, dessert:false)

r3 = Recipe.create(name:"Vegan Roasted Sweet Potato Salad", image: "https://images.themodernproper.com/billowy-turkey/production/posts/2019/Vegan-Roasted-Sweet-Potato-Salad-5.jpg?w=1200&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1599768722&s=15424cd57c44d2f2768653a2326996ce", ingredients: "1/2cup Cilantro, 3 Garlic Cloves, 1/2tbsp Sea salt, 3 tbsp Olive Oil, 3/4 cup Water, 1/2 Jalapeno, seeded, 1/2 Avocado", instructions: "1. Preheat oven at 400°F.
    2. Cut sweet potatoes into 2 inch cubes. In a large bowl, toss the sweet potatoes with olive oil and taco seasoning. Arrange on a baking sheet, careful not to overcrowd. Roast on the center rack in oven for 30 minutes, flipping the sweet potatoes half way through. (If sweet potatoes aren't tender enough, cook for an additional 5 minutes.)
    3. In a high-powered blender, blend all ingredients for the dressing. You should end up with about 1 ¼ cups of the vegan cilantro-lime dressing.
    *For a thinner dressing, add a little more lime juice.
    4. In a large bowl, toss the kale, cilantro, green onions, black beans, roasted sweet potatoes, avocado, with desired amount of dressing. Enjoy!", breakfast: false , lunch:true , dinner: true , snack: false, dessert: false)

r4 = Recipe.create(name: "Zucchini Fritters", image: "https://www.justataste.com/wp-content/uploads/2015/07/5-ingredient-zucchini-fritters-recipe-1-580x875.jpg", ingredients: "1 1/2 pounds zucchini, grated (about 3 cups)
1 teaspoon salt
1/4 cup all-purpose flour
1/4 cup grated Parmesan
2 cloves garlic, minced
1 large egg, beaten
Kosher salt and freshly ground black pepper, to taste
2 tablespoons olive oil", instructions: "1. Place grated zucchini in a colander over the sink. Add salt and gently toss to combine; let sit for 10 minutes. Using a clean dish towel or cheese cloth, drain zucchini completely. 2. In a large bowl, combine zucchini, flour, Parmesan, garlic and egg; season with salt and pepper, to taste.
3. Heat olive oil in a large skillet over medium high heat. Scoop tablespoons of batter for each fritter, flattening with a spatula, and cook until the underside is nicely golden brown, about 2 minutes. Flip and cook on the other side, about 1-2 minutes longer.
4. Serve immediately.", breakfast: false, lunch: true, dinner: true, snack: true, dessert: false)

# Preference
p1 = Preference.create(user_id: 1, diet_id: 1, restriction: "none")
p2 = Preference.create(user_id:2, diet_id: 3, restriction: "peanuts")

#RecipeDiet
rd1 = RecipeDiet.create(recipe_id: 1, diet_id: 1)
rd2 = RecipeDiet.create(recipe_id: 4, diet_id: 1)
rd2 = RecipeDiet.create(recipe_id: 3, diet_id: 2)
rd4 = RecipeDiet.create(recipe_id: 2, diet_id: 1)
    


puts "Let's get some recipes 🔥🔥🔥🔥🔥!"