import 'package:flutter/material.dart';
import 'package:project_ukk/constants/color_constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageNavBar extends StatefulWidget {
  const PageNavBar({Key? key}) : super(key: key);

  @override
  State<PageNavBar> createState() => _PageNavBarState();
}

class BNBCustomPainter extends CustomPainter {
  final Color color;

  BNBCustomPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, kBlackColor, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class _PageNavBarState extends State<PageNavBar> {
  int selectedIndex = 0;

  Color navBarColor() {
    switch (selectedIndex) {
      case 0:
        return Colors.amber;
      case 1:
        return Colors.pink;
      default:
        return kWhiteColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kDarkGreyColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(color: navBarColor()),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                      onPressed: () {
                        print('add button pressed');
                      },
                      backgroundColor: kLightRedColor,
                      child: const FaIcon(
                        FontAwesomeIcons.plus,
                        color: kWhiteColor,
                      ),
                      elevation: 0.1,
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.home),
                          onPressed: () {
                            selectedIndex = 0;
                          },
                        ),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.gavel),
                          onPressed: () {},
                        ),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                          icon: const Icon(Icons.collections),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.person),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
