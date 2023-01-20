part of '../pages.dart';
class SecondScene extends StatefulWidget {
  const SecondScene({Key? key}) : super(key: key);

  @override
  _SecondSceneState createState() => _SecondSceneState();
}

class _SecondSceneState extends State<SecondScene> {
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
        title: Text('Second Scene',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: Fonts.BOLD, fontSize: 16)),
    ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome', style: TextStyle(color: Colors.black, fontFamily:Fonts.MEDIUM,fontSize: 12)),
                Text(Global.name,style: TextStyle(color: Colors.black, fontFamily:Fonts.BOLD,fontSize: 18))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 250),
              child: Center(child: Text('Name',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontFamily:Fonts.BOLD,fontSize: 20))),
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              height: 55,
              child: Container(
                  child:
                  ElevatedButton(
                    style: ButtonStyle.raisedButtonStyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdScene()),
                      );
                    },
                    child: Text('Choose a user',style: TextStyle(color: Colors.white, fontFamily:Fonts.MEDIUM,fontSize: 12)),
                  )
              ),
            ),
          ],
        ),
      ),
      );
  }
}
