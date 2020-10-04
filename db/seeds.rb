# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
caretaker = Caretaker.create(name:'Jill Burns', location:'Chicago', setting:'Home')
user = User.create(name:'Candice', email:'cep104@gmail.com', password_digest: 'ghost')
dog = Dog.create(name:'Ghost', rescue_date:Date.today, age:2, gender:'female', breed:'Pitbull', house_trained: 'true', good_with:'dogs, cats, and kids', size:'medium', bio:'great dog', medication:'none', caretaker_id:1, user_id:1)
dog_2 = Dog.create(name:'Ninja', rescue_date:Date.today, age:1, gender:'mix', breed:'Pitbull', house_trained: 'true', good_with:'dogs, cats, and kids', size:'huge', bio:'great dog', medication:'none', caretaker_id:1, user_id:1)