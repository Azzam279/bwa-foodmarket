part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1546025904/nq8cfsqac6n2jjfrbogu.jpg",
      name: "Sate Sayur Sultan",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.popular, FoodType.recommended]),
  Food(
      id: 2,
      picturePath:
          "https://upload.wikimedia.org/wikipedia/commons/0/0f/1001_yukhoe.jpg",
      name: "Korean Raw Beef Tartare",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      ingredients: "Daging Sapi Korea, Telur, Biji Wijen",
      price: 350000,
      rate: 3.4),
  Food(
      id: 3,
      picturePath: "https://faktualnews.co/images/2018/04/Sundubu-jjigae.jpg",
      name: "Sup Wortel Pedas",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      ingredients: "Wortel, Seledri, Kacang Tanah, Labu, Garam, Gula",
      price: 60000,
      rate: 4.8,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          "https://tastykitchen.com/recipes/wp-content/uploads/sites/2/2016/07/Vegan-Mexican-Chopped-Salad-with-Avocado-Dressing-by-Elena-410x273.jpg",
      name: "Mexican Chopped Salad",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      ingredients: "Jagung, Selada, Tomat Ceri, Keju, Wortel",
      price: 105900,
      rate: 3.9,
      types: [FoodType.recommended]),
];
