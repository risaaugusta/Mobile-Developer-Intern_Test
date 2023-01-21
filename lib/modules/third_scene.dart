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
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: ApiServices()._fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        NetworkImage(snapshot.data[index]['avatar']),
                      ),
                      title: Text(snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name'], style: TextStyle(color: Colors.black, fontFamily: Fonts.MEDIUM,fontSize: 16)),
                      subtitle: Text(snapshot.data[index]['email'], style: TextStyle(color: Color(0xff686777), fontFamily: Fonts.MEDIUM,fontSize: 10)),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );;
  }
}
