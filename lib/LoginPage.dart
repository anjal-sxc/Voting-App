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
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          // reverse: true,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.99,
              // height: MediaQuery.of(context).size.height * ,
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FadeTransition(
                    opacity: animation,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                40.0, 80.0, 40.0, 60.0),
                            child: Image(
                              image: AssetImage('images/prixa_image.png'),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                      // color: Colors.blue,
                      margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.032,
                        horizontal: MediaQuery.of(context).size.width * 0.15,
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Enter your email address'),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.018,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Enter your password'),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.095,
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
                              fontSize: 15.0,
                              color: Colors.black.withOpacity(0.5),
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
                                fontSize: 15.0,
                                color: Colors.blue[400],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
