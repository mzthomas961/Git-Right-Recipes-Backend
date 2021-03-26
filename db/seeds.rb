# Diets
d1 = Diet.create(name: "Vegetarian", description: "Vegetarian meals do not contain fish, meat, or chicken.", image: "https://media.istockphoto.com/photos/bowl-dish-with-brown-rice-cucumber-tomato-green-peas-red-cabbage-picture-id1047798504?k=6&m=1047798504&s=612x612&w=0&h=SqHh8UZas82kGOifausDLjh5WcJRT4T4pFtBNB-BVg4=")

#User
u1 = User.create(name: "Milo", password: "Milo123", image:"https://scontent-lga3-2.xx.fbcdn.net/v/t1.0-9/104209251_10104193109362184_4188311370884100240_o.jpg?_nc_cat=101&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=UTzEfZSepWEAX8i7XWP&_nc_ht=scontent-lga3-2.xx&oh=6bb762579306971815ff992d950b4780&oe=60818F9E")


# Recipe
r1 = Recipe.create(name: "Vegetable Soup", image: "https://images.themodernproper.com/billowy-turkey/production/posts/2020/Vegetable-Soup-8.jpg?w=667&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1600877034&s=3cd2c2ede393325fb4b39768142d6dc3", ingredients: " olive oil, celery, onion, vegetables, herbs and spices, stock, canned tomatoes x2, salt", instructions: "1. Sauté onions and celery until fragrant and translucent. Take your time—remember, this is where your real flavor begins.
    2. Add the garlic, zucchini and green beans and give them a little sauté, too. This step will deepen their flavor a bit before the soup gets all liquidy. A layer of flavor.
    3. Pour in everything else and bring the pot of soup to a boil.
    4. Turn it to a low simmer and cover the pot. Simmer for about half an hour, until the vegetables are super tender and it looks like vegetable soup you’d like to eat!
    5. Eat! We like to serve it topped with lots of freshly grated Parmigiano and fresh basil.", breakfast: false, lunch: true, dinner: true, snack: false, dessert: false)

# Preference
p1 = Preference.create(user_id: 1, diet_id: 1, restriction: "none")

#RecipeDiet
rd1 = RecipeDiet.create(recipe_id: 1, diet_id: 1)


puts "Let's get some recipes 🔥🔥🔥🔥🔥!"