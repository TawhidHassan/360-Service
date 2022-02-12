import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ServicecUnderServiceCard extends StatelessWidget {
  const ServicecUnderServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(17),
      color: Theme.of(context).canvasColor,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex:2,
                  child: Container(
                    height: 82,
                    width: 82,
                    color: Color(0xFFE7F1FF),
                  )
              ),
              SizedBox(width: 10,),
              Expanded(
                  flex:6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("7 Seat Sofa Cleaning With Free",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                      SizedBox(height: 8,),
                      Text("Carpet Cleaning",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color:Color(0xFFE1E1E1) , width: 2),
                              ),
                            ),
                            child:Text("150",style:TextStyle(color: Color(0xFF0F6EFF),fontWeight: FontWeight.w900,fontSize: 18), textAlign: TextAlign.start,),
                          ),

                          Row(
                            children: [
                              Container(
                                height:23,
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xFFBAD6FC))
                                ),
                                child:Icon(Icons.close,color: Color(0xFF3879F0),size: 12,),
                              ),
                              SizedBox(width: 8,),
                              Row(
                                children: [
                                  Container(
                                    width: 22,
                                    height:24,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF3879F0),
                                        border: Border.all(color: Color(0xFFBAD6FC))
                                    ),
                                    child:Text("-",style: TextStyle(fontSize:12,color: Colors.white ),textAlign: TextAlign.center,),
                                  ),
                                  Container(
                                    width: 88,
                                    height:24,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(

                                        border: Border.all(color: Color(0xFFBAD6FC))
                                    ),
                                    child:Text("1 unit",style: TextStyle(fontSize:12,color: Colors.black ),textAlign: TextAlign.center,),
                                  ),
                                  Container(
                                    width: 22,
                                    height:24,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF3879F0),
                                        border: Border.all(color: Color(0xFFBAD6FC))
                                    ),
                                    child:Text("+",style: TextStyle(fontSize:12,color: Colors.white ),textAlign: TextAlign.center,),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
              ),
              Expanded(
                  flex:1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Details"),
                      Row(
                        children: List.generate(
                          6,
                              (ii) => Padding(
                              padding: const EdgeInsets.only(
                                  left: 3, right: 3, top: 10, bottom: 10),
                              child: Container(
                                height: 3,
                                width: 2,
                                color: Color(0xFF3879F0),
                              )),
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
          SizedBox(height:16 ,),
          DottedLine(),
          SizedBox(height:10 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline2,
                  children: const [
                    TextSpan(text: '110',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20)),
                    TextSpan(text: '/ unit',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20)),
                  ],
                ),
              ),

              Container(
                width: 77,
                height: 32,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline2,
                    children: const [
                      TextSpan(text: 'ADD',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20)),
                      WidgetSpan(
                        child: Icon(Icons.add,color: Color(0xFF0F6EFF),),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )

        ],
      )
    );
  }
}
