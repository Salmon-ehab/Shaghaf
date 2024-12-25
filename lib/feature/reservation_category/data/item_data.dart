import '../../../core/assets/images.dart';

class Item {
  final String text1;
  final String text2;
  final int Salary;
  final String image;
  bool isPressed;
  int number;
  int totalSalary;


  Item(
      {
        this.totalSalary =0,
    required this.text1,
    required this.text2,
    required this.Salary,
    required this.image,
    this.isPressed = false,
    this.number = 0,

  });
  static List<Item> Cakes = [
    Item(
        text1: 'From 1 to 6 persons',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 300),
    Item(
        text1: 'From 7 to 10 persons',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 500),
    Item(
        text1: 'From 11 to 20 persons',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 750),
  ];

  static List<Item> Decoration = [
    Item(
        text1: '2 helium balloons, a happy birthday ribbon, and two balloons',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 450),
    Item(
        text1: 'Without helium balloons',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 350),
  ];

  static List<Item> photoSession = [
    Item(
        text1: 'Filming with a video camera outside the rooms',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 500),
    Item(
        text1: 'Filming with a video camera in the rooms',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 250),
    Item(
        text1: 'Filming with a photo camera. Camera entry fee to the place',
        text2: ' LE',
        image: Images().trainingRoom,
        Salary: 400),
  ];
}
