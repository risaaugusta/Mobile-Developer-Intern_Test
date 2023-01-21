part of '../pages.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
              MaterialPageRoute(builder: (context) => FirstScreen()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Second Screen',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: Fonts.BOLD, fontSize: 16)),
    ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome', style: TextStyle(color: Colors.black, fontFamily:Fonts.MEDIUM,fontSize: 14)),
                Text(Global.name,style: TextStyle(color: Colors.black, fontFamily:Fonts.BOLD,fontSize: 18))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 500,
              child: Center(child: Text(
                  Global.selectedName == '' ? 'Selected User Name' : Global.selectedName,
                  textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontFamily:Fonts.BOLD,fontSize: 20))),
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 20),
              height: 55,
              child:
                  ElevatedButton(
                    style: ButtonStyle.raisedButtonStyle,
                    onPressed: () {
                      setState(() {
                        Global.selectedName == '';
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdScreen()),
                      );
                    },
                    child: Text('Choose a user',style: TextStyle(color: Colors.white, fontFamily:Fonts.MEDIUM,fontSize: 14)),
                  )
            ),
          ],
        ),
      ),
      );
  }
}
