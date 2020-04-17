import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                BoldText(
                  boldText: 'Let us help you better.',
                ),
                BoldText(
                  boldText: 'Get Pro🚀',
                ),
                 SizedBox(
                  height: 10,
                ),
                CustomListTile(
                    titleText: 'No Ads',
                    subtitleText:
                        'Stay focused by removing pesky banner and Video Ads'),
                CustomListTile(
                    titleText: 'Offline Syllabus',
                    subtitleText:
                        'Skip long donwload times and check your syllabus anytime.'),
                CustomListTile(
                    titleText: 'Share Paper',
                    subtitleText:
                        'Easily share paper with your friends or open them in other apps'),
                CustomListTile(
                    titleText: 'Premium Features',
                    subtitleText:
                        'Unlock upcoming pro features like dark mode, printing papers and more!'),
                CustomListTile(
                    titleText: 'Faster Updates',
                    subtitleText:
                        'Your contributions will motivate me to provide better features & the latest papers'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Your first week is free-on us.',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () {
                      // _launchURL(instagramUrl);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                // Color(0xFFED74CE),
                                // Color(0xFF522AEA),
                                Color(0xFF7B4EFF),
                                Color(0xFF41C2FF),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(6.0)),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: 25,
                                width: 80,
                                
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)
                                  ),
                                  color: Color(0xFF69F0AE),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 3,),
                                    Text('Save 20%',textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                          fontSize: 16.0,)
                                ),
                                  ],
                                )
                              ),
                            ),
                            Container(
                                constraints: BoxConstraints(
                                    maxWidth: 300.0, minHeight: 60.0),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '\$2.0 per month',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Billed Yearly',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                )),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50.0,
                  child: OutlineButton(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFF2196F3),
                    ),
                    onPressed: () {
                      // _launchURL(instagramUrl);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 300.0, minHeight: 40.0),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '\$2.0 per month',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black),
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Cancel anytime *'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;

  const CustomListTile(
      {Key key, @required this.titleText, @required this.subtitleText})
      : assert(titleText != null),
        assert(subtitleText != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.check_circle,
        color: Color(0xFF7C4DFF),
      ),
      title: Text(
        titleText,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
      ),
    );
  }
}

class BoldText extends StatelessWidget {
  final String boldText;

  const BoldText({Key key, @required this.boldText})
      : assert(boldText != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        boldText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}
