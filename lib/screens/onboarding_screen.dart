import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meagan_bday/screens/home_screen.dart';
import '../models/page.dart';
import '../widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  PageController _controller;
  int currentPage = 0;
  bool lastPage = false;
  AnimationController animationController;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: currentPage);
    animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween(begin: 0.6, end: 1.0).animate(animationController);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color.fromRGBO(69, 74, 96, 1),
              const Color.fromRGBO(52, 55, 75, 1)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
            stops: [0, 1]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PageView.builder(
              itemCount: pageList.length,
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                  if (currentPage == pageList.length - 1) {
                    lastPage = true;
                    animationController.forward();
                  } else {
                    lastPage = false;
                  }
                });
              },
              itemBuilder: (context, index) {
                return Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        var page = pageList[index];

                        return Stack(
                          children: <Widget>[
                            Image.asset(page.imageUrl),
                            Positioned(
                              child: Container(
                                width: 370,
                                child: Text(
                                  page.body,
                                  softWrap: true,
                                  style: GoogleFonts.tinos(
                                      color: const Color.fromRGBO(
                                          204, 173, 125, 1),
                                      fontSize: 56),
                                ),
                              ),
                              bottom: 150,
                              left: 25,
                            )
                          ],
                        );
                      },
                    )
                  ],
                );
              },
            ),
            Positioned(
              left: 35,
              bottom: 55,
              child: Container(
                width: 160,
                child: PageIndicator(currentPage, pageList.length),
              ),
            ),
            Positioned(
              right: 30,
              bottom: 30,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: lastPage
                    ? FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                        },
                      )
                    : Container(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
