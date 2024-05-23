import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

class NewView extends StatefulWidget {
  const NewView({super.key, this.message = "Hello, World!"});

  final String message;

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.75),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Text(widget.message)
                .textColor(Colors.white)
                .fontWeight(FontWeight.bold)
                .padding(horizontal: 30, vertical: 15)),
      ],
    );
  }
}

main() async {
  return buildApp(home: NewView());
}
