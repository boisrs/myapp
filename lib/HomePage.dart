import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/ManageHomePage/CategoryPage.dart';
import 'package:myapp/ManageHomePage/CurrentExchangePage.dart';
import 'package:myapp/ManageHomePage/CustomerPage.dart';
import 'package:myapp/ManageHomePage/EmployeePage.dart';
import 'package:myapp/ManageHomePage/ProductsPage.dart';
import 'package:myapp/ManageHomePage/SupplierPage.dart';
import 'package:myapp/ShowListDataPage.dart';
import 'package:myapp/myHomePage.dart';

List itmbase =["ຫົວຫນ່ວຍ","ປະເພດສິນຄ້າ","ຂໍ້ມູນສິນຄ້າ","ຜູ້ສະຫນອງ","ພະນັກງານ","ຂໍ້ມູນລູກຄ້າ","ອັດຕາແລກປ່ຽນ"];
List iconColor=[Colors.red.shade800];
List iconSize = [100];
List icon =[Icon(Icons.ac_unit,color: iconColor[0],size: iconSize[0],),
Icon(Icons.category,color: iconColor[0],size: iconSize[0],),
Icon(Icons.folder_open,color: iconColor[0],size: iconSize[0],),
Icon(Icons.local_shipping,color: iconColor[0],size: iconSize[0],),
Icon(Icons.person,color: iconColor[0],size: iconSize[0],),
Icon(Icons.person_add,color: iconColor[0],size: iconSize[0],),
Icon(Icons.currency_exchange,color: iconColor[0],size: iconSize[0],),

];

List routePage=[
  ShowListDataPage(),
  CategoryPage(),
  ProductsPage(),
  SupplierPage(),
  EmployeePage(),
  CustomerPage(),
  CurrentExchangePage(),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void selectPage(int idx){
    setState(() {
      MaterialPageRoute route = MaterialPageRoute(builder: (_)=>routePage[idx]);
      Navigator.of(context).push(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5),
        child: GridView.builder(
          itemCount: itmbase.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            ),
            
            itemBuilder:(c,idx){
              return InkWell(
                onTap: ()=>selectPage(idx),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  width: 160,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green,width: 1),
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      icon[idx],
                      Spacer(),
                      Text('${itmbase[idx]}',
                      style: TextStyle(
                      color: Colors.red.shade700,
                      fontSize: 20,
                      fontWeight: FontWeight.bold                
                      ),
                      ),
                
                      
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}