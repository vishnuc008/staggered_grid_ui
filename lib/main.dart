import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: staggeredui(),debugShowCheckedModeBanner: false,));
}
class staggeredui extends StatelessWidget{
  staggeredui({super.key});
  final List<mydetails> details=[
    mydetails(name:"NS 200",image:"assets/images/images.jpg"),
    mydetails(name:"BULLET",image:"assets/images/bul.jpg"),
    mydetails(name:"CHETAKH",image:"assets/images/chetakh.jpg"),
    mydetails(name:"HIMALAYA",image:"assets/images/45bd2d0e605941deb45da762a0dcb7c9.jpg"),
    mydetails(name:"KTM 250",image:"assets/images/modified-ktm-duke-250-front.jpg"),
    mydetails(name:"YAMAHA V3",image:"assets/images/91c779f0a1214c2465b5c12f68a6a766.jpg")
  ];
  final List<StaggeredTile>_cardTile=<StaggeredTile>[
    const StaggeredTile.count(1,3),
    const StaggeredTile.count(1,2),
    const StaggeredTile.count(1,2),
    const StaggeredTile.count(1,1),
    const StaggeredTile.count(1,3),
    const StaggeredTile.count(1,1),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        staggeredTiles: _cardTile,
        children: details,
      )
    );
  }
  
}
class mydetails extends StatelessWidget{
  final String image;
  final String name;
  mydetails({required this.name,required this.image});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(image,fit: BoxFit.fitHeight,),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            const Text("vehicle",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),)
          ],
        ),
      ),);
  }
}