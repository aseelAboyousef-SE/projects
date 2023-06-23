import 'package:flutter/material.dart';
import 'package:toku/Models/numbers_class.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class InterCatogere extends StatelessWidget {
  const InterCatogere({super.key, required this.number});
  final Numbers number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpText,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.enGText,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AssetsAudioPlayer.newPlayer().open(
                  Audio(number.sound),
                  autoStart: true,
                  showNotification: true,
                );
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
