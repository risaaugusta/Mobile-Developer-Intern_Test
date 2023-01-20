part of '../pages.dart';

class ThirdScene extends StatefulWidget {
  const ThirdScene({Key? key}) : super(key: key);

  @override
  _ThirdSceneState createState() => _ThirdSceneState();
}

class _ThirdSceneState extends State<ThirdScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Color(0xff554AF0)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstScene()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Third Scene',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: Fonts.BOLD, fontSize: 16)),
      ),

    );
  }
}
