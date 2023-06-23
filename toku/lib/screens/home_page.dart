import 'package:flutter/material.dart';
import 'package:toku/components/section_item.dart';
import 'package:toku/screens/members_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          CatogeresItem(
            text: 'Members',
            color: Colors.orange,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return MembersPage();
              }));
            },
          ),
          CatogeresItem(text: 'Family Members', color: Colors.green),
          CatogeresItem(
              text: 'Colors', color: Color.fromARGB(255, 182, 9, 173)),
          CatogeresItem(
              text: 'Phrases', color: Color.fromARGB(255, 100, 180, 245)),
        ],
      ),
    );
  }
}
