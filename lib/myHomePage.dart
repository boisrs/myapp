import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/Login/LoginPage.dart';
import 'package:myapp/MessagePage.dart';
import 'package:myapp/ServicePage.dart';
import 'package:myapp/SettingPage.dart';
import 'package:myapp/drawer_menu.dart';



const List screenPage=[
  LoginPage(),
  MessagePage(),
  SettingPage(),
  ServicePage()

];

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int selectidx = 1;

  void onTabTapped(int idx){
    setState(() {
      selectidx = idx;
    });

  }
  Widget PopUpMenuitemBar(){
    return PopupMenuButton <String>(itemBuilder: (c)=>[
      PopupMenuDivider(),
      PopupMenuItem(child: ListTile(
        leading:Icon(Icons.settings,
        color: Colors.amber.shade900,),
        title: Text("ຕັ້ງຄ່າ",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20
        ),
        ),
        onTap: (){
          Navigator.of(context).pop();
        },
      )),
      PopupMenuDivider(),
      PopupMenuItem(child: ListTile(
        leading:Icon(Icons.storage,
        color: Colors.amber.shade900,),
        title: Text("ເຊື່ອມຕໍ່ກັບຖານຂໍ້ມູນ",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20
        ),
        ),
        onTap: (){
          Navigator.of(context).pop();
        },
      )),
      PopupMenuDivider(),
      PopupMenuItem(child: ListTile(
        leading:Icon(Icons.wifi,
        color: Colors.amber.shade900,),
        title: Text("ເຊື່ອມຕໍ່ກັບ Internet",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20
        ),
        ),
        onTap: (){
          Navigator.of(context).pop();
        },
      ))
    ]);
  }

  Widget BNavagateBar(){
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),
      type: BottomNavigationBarType.fixed,
      iconSize: 20,
      backgroundColor: Colors.amber[800],
      currentIndex: selectidx,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.card_membership, color: Colors.white,),
          label: 'ເຂົ້າສູ້ລະບົບ',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.message, color: Colors.white,),
          label: 'ຂໍ້ຄວາມ'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.white,),
          label: 'ຕັ້ງຄ່າ'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.more_vert, color: Colors.white,),
          label: 'ບໍລິການ'
          ),

      ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຮ້ານ Cafe Neverland'),
        actions: [PopUpMenuitemBar(),],
      ),

      body: screenPage[selectidx],
      drawer: drawer_menu(),

      bottomNavigationBar: BNavagateBar(),
    );
  }
}