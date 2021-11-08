import 'package:flutter/material.dart';
import 'package:frontend/Config/constants.dart';
import 'package:frontend/Config/constants.dart';

import 'drawer.dart';


class Background extends StatefulWidget {
  final Widget child;
  final Widget leading;
  final String header;
  final Color headerColor;
  final Color appbarBG;
  final List<Widget> actions;

  const Background({
    Key key,
    @required this.child,
    this.leading,
    @required this.header,
    this.appbarBG = LabelColor,
    this.headerColor = PrimaryBGColor,
    this.actions,
  }) : super(key: key);
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
        leading: widget.leading,
        iconTheme: IconThemeData(color: PrimaryBGColor),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            widget.header,
            style:
            TextStyle(fontWeight: FontWeight.bold, color: widget.headerColor),
          ),
        ),
        elevation: 0,
        backgroundColor: widget.appbarBG,
        actions: widget.actions,
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/BG.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            widget.child,
          ],
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
