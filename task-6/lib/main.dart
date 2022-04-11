import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  void _EndWelcomePage(context) {
    Navigator.pop(context);
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: const Color(0xffd6cbc7),
        pages: listPagesViewModel(),
        onDone: () {_EndWelcomePage(context);
        },
        
        showNextButton: true,
        next: const Text('Swipe Next'),
        
        done: const Text("Get Started",
            style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            
            color: Color.fromARGB(66, 16, 10, 10),
            spacing: const EdgeInsets.symmetric(horizontal: 4.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0))),
      ),
    );
  }

  List<PageViewModel> listPagesViewModel() {
    return [
      
      PageViewModel(image: Center(child: Image.asset("pictures/yoga.png"),),
          title: 'YOGA SURGE',
          body: 'Welcome to Yoga World',
          footer: const Text('Inhale the future, Exhale the Past'),
          decoration: const PageDecoration(
          )),
      PageViewModel(
          image: Center(child: Image.asset("pictures/welcome.png"),),
          title: 'Healthy Freak Exercises',
          body: 'Letting Go is the Hardest Part',
          decoration: const PageDecoration(
          )),
      PageViewModel(
          image: Center(child: Image.asset("pictures/cycling.png"),),
          title: 'Cycling',
          body:
          'You cannot always control what goes on outside. But you can always control what goes on inside.',
          decoration: const PageDecoration(
          )),
      PageViewModel(
          image: Center(child: Image.asset("pictures/meditation.png"),),
          title: 'Meditation',
          body: 'The longest journey of any person is the journey inwards.',
          decoration: const PageDecoration(
          ))
    ];
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Welcome'),backgroundColor: Color.fromARGB(255, 5, 14, 75),),
        body: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                
                  children: <Widget>[
                    Image.asset('pictures/night.jpg'),
                    const Text('Nikhil', textScaleFactor: 2),
                    const Text(
                      'alias - Night king ',
                      textScaleFactor: 1,
                    )
                  ])
            ]));
  }
}













