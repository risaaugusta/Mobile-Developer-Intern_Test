part of '../pages.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  var data = ApiServices()._fecthDataUsers();
  var moreData = ApiServices()._fetchDataPage2();

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
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Third Screen',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: Fonts.BOLD, fontSize: 16)),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: data,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return
                RefreshIndicator(
                  onRefresh: refreshData,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(10),
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondScreen()),
                            );
                            setState(() {
                              Global.selectedName = snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name'];
                            });
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                              NetworkImage(snapshot.data[index]['avatar']),
                            ),
                            title: Text(snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name'], style: TextStyle(color: Colors.black, fontFamily: Fonts.MEDIUM,fontSize: 16)),
                            subtitle: Text(snapshot.data[index]['email'], style: TextStyle(color: Color(0xff686777), fontFamily: Fonts.MEDIUM,fontSize: 10)),
                          ),
                        );
                      })
                );
            } else {
              return const Center(child: Text('Data is empty'));
            }
          },
        ),
      ),
    );;
  }

  Future refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      data = ApiServices()._fetchDataPage2();
    });
  }
}
