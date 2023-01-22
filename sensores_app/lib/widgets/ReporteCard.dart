import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'StatusDot.dart';

class ReporteCard extends StatelessWidget {
  const ReporteCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      // color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.pushNamed(context, 'reporteconcreto');
        },
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("12/04/1998"),
                  const SizedBox(width: 10,),
                  StatusDot(Colors.green,),
                ],
              ),
              
              Expanded(
                // padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
    
                    Icon(Icons.article_outlined),
                    
                    Container(
                      width: 2,
                      color: Color.fromARGB(30, 158, 158, 158),
                      
                    ),
    
    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pool),
                            SizedBox(width: 10,),
                            Text("Piscina 1"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("12/04/1998", style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios, size: 12,),
                            SizedBox(width: 10,),
                            Text("30/05/2022", style: TextStyle(fontSize: 20),),
                          ],
    
                        ),
                        Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.settings_remote_rounded),
                                SizedBox(width: 10,),
                                Text("PH"),
                              ],
        
                            ),
                            Row(
                              children: [
                                Icon(Icons.settings_remote_rounded),
                                SizedBox(width: 10,),
                                Text("TDS"),
                              ],
        
                            ),
                            Row(
                              children: [
                                Icon(Icons.settings_remote_rounded),
                                SizedBox(width: 10,),
                                Text("TEMPERATURA"),
                              ],
        
                            ),
                            Row(
                              children: [
                                Icon(Icons.settings_remote_rounded),
                                SizedBox(width: 10,),
                                Text("TURBIDEZ"),
                              ],
        
                            ),
                          ],
                        ),
                      ],
                    ),
    
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}