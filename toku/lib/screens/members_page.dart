import 'package:flutter/material.dart';
import 'package:toku/Models/numbers_class.dart';
import 'package:toku/components/interSection_item.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  final List<Numbers> num = const [
    Numbers(
        image: 'assets/images/numbers/number_one.png',
        jpText: 'ichi',
        enGText: 'one',
        sound: 'assets/sounds/numbers/number_one_sound.mp3'),
    Numbers(
        image: 'assets/images/numbers/number_two.png',
        jpText: 'ni',
        enGText: 'two',
        sound: 'assets/sounds/numbers/number_two_sound.mp3'),
    Numbers(
      image: 'assets/images/numbers/number_three.png',
      jpText: 'san',
      enGText: 'three',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_four.png',
      jpText: 'shi',
      enGText: 'four',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_five.png',
      jpText: 'go',
      enGText: 'five',
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_six.png',
      jpText: 'roku',
      enGText: 'six',
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_seven.png',
      jpText: 'sebun',
      enGText: 'seven',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    Numbers(
      image: 'assets/images/numbers/number_eight.png',
      jpText: 'hachi',
      enGText: 'eight',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Members'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: num.length,
        itemBuilder: (context, index) => InterCatogere(number: num[index]),
      ),
    );
  }
}
