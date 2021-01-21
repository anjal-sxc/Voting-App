import 'package:flutter/material.dart';
import 'package:votingapp/Homepage.dart';
import 'RegisterPage.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/animation.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      image: Image.asset('images/splash.png', color: Colors.blue[600]),
      navigateAfterSeconds: new VotingAppLogin(),
      photoSize: 200.0,
      // // title: new Text(
      //   'GeeksForGeeks',
      //   textScaleFactor: 2,
      // ),
      // loadingText: Text("Loading"),
      // loaderColor: Colors.blue,
      // color: Colors.blue[700],
    );
  }
}

class VotingAppLogin extends StatefulWidget {
  @override
  _VotingAppLoginState createState() => _VotingAppLoginState();
}

class _VotingAppLoginState extends State<VotingAppLogin>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    /*animation.addStatusListener((status) {
    if (status == AnimationStatus.completed) {
      controller.reverse();
    } else if (status == AnimationStatus.dismissed) {
      controller.forward();
    }
  });*/
//this will start the animation
    controller.forward();
  }

  @override

// Changes the selected value on 'onChanged' click on each radio button
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // SizedBox(
            //   height: 200.0,
            // ),
            FadeTransition(
              opacity: animation,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 60.0),
                  child: Image(
                    image: AssetImage('images/prixa_image.png'),
                  ),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 8.0),
              child: TextFormField(
                decoration:
                    InputDecoration(labelText: 'Enter your email address'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 20.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter your password'),
              ),
            ),

            SizedBox(
              height: 60.0,
            ),
            RaisedButton(
              padding: EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VotingHomePageApp()));
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              color: Colors.blue[600],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blue[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
