import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.bookmark_add,
            size: 40.0,
          ),
          Text(
            'Your saved movies will be shown here.',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
