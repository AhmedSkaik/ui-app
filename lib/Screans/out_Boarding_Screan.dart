import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_momo_fashion/Widgets/out_boarding_indector.dart';
import 'package:ui_momo_fashion/Widgets/out_boarding_item.dart';

class OutBoardingScrean extends StatefulWidget {
  const OutBoardingScrean({Key? key}) : super(key: key);

  @override
  State<OutBoardingScrean> createState() => _OutBoardingScreanState();
}

class _OutBoardingScreanState extends State<OutBoardingScrean> {
  int _currentpageindex = 0;
  late PageController _pageController;

  void initState() {
    super.initState();
    _pageController = PageController();
  }

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 15,
              ),
              Visibility(
                // maintainAnimation: true,
                // maintainSize: true,
                // maintainState: true,
                visible: _currentpageindex != 2,
                child: TextButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeOutCirc);
                    },
                    child: Text('SKIP')),
                replacement: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_Screan');
                    },
                    child: Text('START')),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int currentpageindex) {
                    setState(() {
                      _currentpageindex = currentpageindex;
                    });
                  },
                  children: const [
                    OutBoardingItem(
                      title: 'Welcome!',
                      images:
                          'https://img.freepik.com/free-vector/business-team-brainstorm-idea-lightbulb-from-jigsaw-working-team-collaboration-enterprise-cooperation-colleagues-mutual-assistance-concept-pinkish-coral-bluevector-isolated-illustration_335657-1651.jpg?w=2000',
                    ),
                    OutBoardingItem(
                      title: 'Add to Cart',
                      images:
                          'https://cdn.dribbble.com/users/1568450/screenshots/5436466/attachments/1177465/work_3_dribbble-01.png?compress=1&resize=400x300&vertical=top',
                    ),
                    OutBoardingItem(
                      title: 'Enjoy Purchase!',
                      images:
                          'https://www.pngitem.com/pimgs/m/672-6727122_maintenance-man-character-spanner-working-illustrations-web-design.png',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutBoardingIndector(
                    selected: _currentpageindex == 0,
                    MarginEnd: 13,
                  ),
                  OutBoardingIndector(
                      selected: _currentpageindex == 1, MarginEnd: 13),
                  OutBoardingIndector(selected: _currentpageindex == 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      if (_currentpageindex != 0)
                        _pageController.previousPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeIn);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: _currentpageindex == 0 ? Colors.grey : Colors.black,
                  ),
                  Visibility(
                    visible: _currentpageindex != 2,
                    maintainState: true,
                    maintainSize: true,
                    maintainAnimation: true,
                    child: IconButton(
                        onPressed: () {
                          _pageController.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.easeIn);
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_Screan');
                    },
                    child: Text('START'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                  )),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
