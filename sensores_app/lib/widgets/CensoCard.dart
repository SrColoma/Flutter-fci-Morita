import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'StatusDot.dart';

class CensoCard extends StatelessWidget {
  const CensoCard({
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
          // Navigator.pushNamed(context, 'censado');
          Navigator.pushReplacementNamed(context, 'censado');
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
                            Text("10:00 am", style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios, size: 12,),
                            SizedBox(width: 10,),
                            Text("12:00 pm", style: TextStyle(fontSize: 20),),
                          ],
    
                        ),
                        Divider(),
                        Row(
                          children: [
                            Icon(Icons.access_time_outlined),
                            SizedBox(width: 10,),
                            Text("2:00 hrs"),
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