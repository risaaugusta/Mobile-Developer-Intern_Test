part of '../pages.dart';
class FirstScene extends StatefulWidget {
  const FirstScene({Key? key}) : super(key: key);

  @override
  _FirstSceneState createState() => _FirstSceneState();
}

class _FirstSceneState extends State<FirstScene> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Image.asset('assets/img/background 1.png',fit:BoxFit.cover, width: MediaQuery.of(context).size.width  ),
          Scaffold(
          backgroundColor: Colors.transparent,
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
                    width: 318,
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
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: 'Name',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                        onChanged: (value) {
                          Global.name = value;
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 318,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Material(
                      elevation: 20.0,
                      shadowColor: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: 'Palindrome',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                        onChanged: (value) {
                          Global.palindrome = value;
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.symmetric(vertical: 20),
                    height: 53,
                      child: Container(
                      child:
                        ElevatedButton(
                        style: ButtonStyle.raisedButtonStyle,
                        onPressed: () {
                          for (int j = Global.palindrome.length - 1; j >= 0; j--) {
                            Global.reverse += Global.palindrome[j];
                          }

                          if(Global.palindrome == Global.reverse)
                          {
                            Global.result = 'isPalindrome';
                          }else{
                            Global.result = 'not palindrome';
                          }

                          _dialogResult();
                        },
                        child: Text('CHECK',style: TextStyle(color: Colors.white, fontFamily: Fonts.MEDIUM,fontSize: 12)),
                    )
                    ),
                  ),
                  Container(
                    // margin:  EdgeInsets.only(top: 20),
                    height: 53,
                      child: Container(
                      child:
                        ElevatedButton(
                        style: ButtonStyle.raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondScene()),
                          );
                        },
                        child: Text('NEXT',style: TextStyle(color: Colors.white, fontFamily: Fonts.MEDIUM,fontSize: 12)),
                    )
                    ),
                  ),
                ],
              ),
            ),
        ),

      ],
    );
  }

  ///dialog
  Future<void> _dialogResult() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Result'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(Global.result,style: TextStyle(color: Colors.black, fontFamily: Fonts.MEDIUM,fontSize: 14)),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Oke'),
              onPressed: () {
                setState(() {
                  Global.palindrome = '';
                  Global.reverse = '';
                  Global.result = '';
                });

                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }


}
