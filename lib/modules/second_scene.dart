part of '../pages.dart';
class SecondScene extends StatefulWidget {
  const SecondScene({Key? key}) : super(key: key);

  @override
  _SecondSceneState createState() => _SecondSceneState();
}

class _SecondSceneState extends State<SecondScene> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Color(0xff2B637B),
    minimumSize: Size(318,20),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstScene()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Second Scene',style: TextStyle(color: Colors.black, fontSize: 12)),
    ),
    body: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome'),
            Text('user')
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 50),
          child: Text('Name'),
        ),
        Container(
          // margin:  EdgeInsets.only(top: 20),
          height: 41,
          child: Container(
              child:
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScene()),
                  );
                },
                child: Text('Choose a user',style: TextStyle(color: Colors.white, fontSize: 12)),
              )
          ),
        ),
      ],
    ),
    );
  }
}
