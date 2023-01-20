part of '../pages.dart';
class FirstScene extends StatefulWidget {
  const FirstScene({Key? key}) : super(key: key);

  @override
  _FirstSceneState createState() => _FirstSceneState();
}

class _FirstSceneState extends State<FirstScene> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Color(0xff2B637B),
    minimumSize: Size(300,36),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Scaffold(
          backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      child: new Image.asset('assets/img/ic_photo.png')
                  ),
                  Container(
                    width: 300,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(top: 70),
                    child: Material(
                      elevation: 20.0,
                      shadowColor: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: 'NIK',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                        onChanged: (value) {
                          // Global.nik = value;
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.symmetric(vertical: 50),
                    height: 60,
                    child: ButtonTheme(
                      minWidth: 300,
                      child: Container(
                        // child: RaisedButton(
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(30),
                        //       side: BorderSide(color: Color(0xff2B637B))),
                        //   onPressed: () async {
                        //
                        //   },
                        //   color: Color(0xff2B637B),
                        //   textColor: Colors.white,
                        //   child: Text("Get Started",
                        //       style: TextStyle(color: Colors.white, fontSize: 18)),
                        // ),
                      child:
                      ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () { },
                      child: Text('Check'),
                    )


                  ),
                    ),
                  ),
                ],
              ),
            ),
        ),
        Image.asset('assets/img/background 1.png'),
      ],
    );
  }
}
