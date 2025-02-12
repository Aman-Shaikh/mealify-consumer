import 'package:mealify_consumer/profile.dart';
import 'package:mealify_consumer/category.dart';
import 'package:mealify_consumer/items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainCourses extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text("MainCourses",style: TextStyle(color: Colors.white),),
          ),
          body: Container(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: categoryListMainCourses.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,mainAxisExtent: 250),
                itemBuilder: (context,index){
                  return Container(

                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                    ),
                    child: InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>items(categoryListMainCourses[index])));
                      },
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 200,
                            width: 150,
                            child: Center(
                              child: Image.asset(categoryImagesMainCourses[index],
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ),
                          Text(categoryListMainCourses[index],style: TextStyle(fontSize: 20),),
                          // Image.asset
                        ], //<Widget>[]
                      ),
                    ),
                  );
                }),

          ),
        ));
  }
}