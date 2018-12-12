import 'package:alcoholmanager/AlcoholStorageService.dart';
import 'package:alcoholmanager/Mainscreen/Mainscreen.dart';
import 'package:alcoholmanager/Mainscreen/Widget/DrinkCard.dart';
import 'package:alcoholmanager/Mainscreen/Widget/DrinkCard.dart';
import 'package:alcoholmanager/Mainscreen/Widget/DrinkCardStorage.dart';
import 'package:flutter/material.dart';
import 'package:sliver_fab/sliver_fab.dart';
class MainscreenView extends MainscreenState{

  void addItemToList(int index){
    setState(() {
          
    widget.selectedAlcohol.drinkList.add(widget.storedAlcohol.drinkList[index]);
    widget.calculationService.add(widget.storedAlcohol.drinkList[index].alcohol);
        });
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add), onPressed: () {
          showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
            return Container(
              child: ListView.builder(
                
              padding: new EdgeInsets.all(8.0),
              itemCount: widget.storedAlcohol.drinkList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child:DrinkCardStorage(widget.storedAlcohol.drinkList[index]),
                  onTap: (){
                  addItemToList(index);
                  print(widget.selectedAlcohol.drinkList.length);
                }
                  
                )
                ;
              }),
            );
          });   
          } ,
        ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        ),
      ),
        
        body: CustomScrollView(
          
          slivers: <Widget>[
            
            SliverAppBar(
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(widget.calculationService.alcohol.toString()),
                background: Image.network(
                  "https://gdb.voanews.com/94005114-AEB2-4C0B-AC85-FC2605E2B75E_cx0_cy3_cw0_w1023_r1_s.jpg",
                  fit: BoxFit.cover,),

              ),
              floating: true,

            ),
            SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildBuilderDelegate(
                (BuildContext contex, int index){
                  return DrinkCard(widget.selectedAlcohol.drinkList[index]);
                },
                childCount: widget.selectedAlcohol.drinkList.length,
              ),
            )
            
              /*ListView.builder(
              padding: new EdgeInsets.all(8.0),
              itemCount: widget.testservice.drinkList.length,
              itemBuilder: (BuildContext context, int index) {
                return DrinkCard(widget.testservice.drinkList[index]);
              }),*/
          ]


          
          
        ),
       
        
       
      ),

    );
  }

}