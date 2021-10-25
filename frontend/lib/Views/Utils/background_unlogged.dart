import 'package:flutter/material.dart';

class BackgroundUnlogged extends StatelessWidget {
  final Widget child;

  const BackgroundUnlogged({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/BG.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          child
        ],
      ),
    );
  }
}
