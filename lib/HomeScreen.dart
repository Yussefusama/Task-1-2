
import 'package:first_flutter/Counter.dart';
import 'package:first_flutter/Login.dart';
import 'package:first_flutter/login%20choices.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context)
{
  return Scaffold(
    body: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,),),
            DrawerHeader(
                  child:
                  Image.network('https://media.istockphoto.com/photos/group-of-people-in-graduation-caps-and-gowns-picture-id1319965440',
            fit:BoxFit.cover)),

            ListTile(
              title: Text('MyAccount'),
              trailing: Icon(Icons.account_box_outlined,),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute<void>(
                    builder: (BuildContext context) => LoginScreen()));
                   },
            ),
            ListTile(
              title: Text('Grades'),
              trailing: Icon(Icons.stars,),
              onTap: (){
                Navigator.push(context,MaterialPageRoute<void>(builder: (BuildContext)=> CounterScreen()));

              },
            ),
            ListTile(
              title: Text('Schedules'),
              trailing: Icon(Icons.calendar_today_outlined),
              onTap: (){},
            ),
            ListTile(
              title: Text('Settings'),
              trailing: Icon(Icons.settings,),
          onTap: (){},
            ),
            ListTile(
              title: Text('SignOut',),
              trailing: Icon(Icons.exit_to_app_rounded,),
              onTap: (){
                Navigator.push(context,MaterialPageRoute<void>(builder: (BuildContext)=> HomeScreen()));
              },
            )

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green[900],


        title: Text(
          'NCA'),
      centerTitle: true,
      actions: [
        Icon(
          Icons.search,),
      ]

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text ('تمكين الخريجين من الظهور على مستوى من المهارات العلمية والنظرية في علوم الكمبيوتر مع المعرفة من التقنيات والتكنولوجيات المتاحة.أستكشاف المبادئ التى تدعم التطورات في منطقه تتغير بسرعه توفير فرص للطلاب لفهم لتطور التكنولوجي الدائم.',
              style: TextStyle(
                fontSize: 15.0,
              )
              ),
              SizedBox(height: 20.0),
              Image(
                    image: NetworkImage('https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/107701150_1186656455060206_4666921787396035443_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=k_pDPS-G0wYAX9Kfcox&_nc_ht=scontent.fcai20-2.fna&oh=00_AT_pe4HKudb0qeXzSbKtSz9YqJOWgMuKPZCq5I2LZtMWKQ&oe=6219AC22')
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green[900],
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(() {
            currentIndex = index;
          });
        },
          items:
          [
          BottomNavigationBarItem(
          icon: Icon(
          Icons.home,
              ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            label: 'About',

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box_outlined,
            ),
            label: 'MyAccount',

          ),


        ],
      ),

    )
    );
  }
}
