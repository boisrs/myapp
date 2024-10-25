import 'package:flutter/material.dart';
import 'package:myapp/CardMember.dart';
import 'package:myapp/MessagePage.dart';
import 'package:myapp/ServicePage.dart';
import 'package:myapp/SettingPage.dart';
import 'package:myapp/drawer_menu.dart';

const List screenPage=[
  CardMember(),
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
  int selectidx = 0;

  void onTabTapped(int idx){
    setState(() {
      selectidx = idx;
    });

  }

  Widget BNavagateBar(){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 28,
      backgroundColor: Colors.amber[800],
      currentIndex: selectidx,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.card_membership, color: Colors.white,),
          label: 'ບັດ',
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
      ),

      body: screenPage[selectidx],
      drawer: drawer_menu(),

      bottomNavigationBar: BNavagateBar(),
    );
  }
}