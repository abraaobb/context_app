import 'package:flutter/material.dart';
import 'package:context_app/constants/strings.dart';
import 'package:context_app/constants/dimensions.dart';

class FaqText extends StatelessWidget {
  const FaqText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Dimensions.defaultPadding,
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.help_center_outlined),
              SizedBox(
                width: 10,
              ),
              Text(
                'FAQ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              Strings.faq1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            children: <Widget>[
              ListTile(
                  title: Text(
                Strings.faqAnswer1,
                style: TextStyle(fontSize: 14),
              )),
            ],
          ),
          ExpansionTile(
            title: Text(
              Strings.faq2,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            children: <Widget>[
              ListTile(
                  title: Text(
                Strings.faqAnswer2,
                style: TextStyle(fontSize: 14),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
