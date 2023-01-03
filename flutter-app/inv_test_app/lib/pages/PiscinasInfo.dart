import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class PiscinasInfo extends StatelessWidget {
  const PiscinasInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [

            TittleBar('Piscina 23'),

            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    
                    const SizedBox(height: 10,),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                        Container(
                          height: 50,
                          width: 150,
                          // child: OutlinedButton(
                          //   onPressed: () => {},
                          //   child: Text('Nuevo Censo'),
                          // ),
                          child:InkWell(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[900] ?.withOpacity(0.4),
                              ),
                              child: const Center(
                                child: Text('Nuevo Censo'),
                              ),
                            ),
                            onTap: () {
                              // Navigator.pushNamed(context, 'piscinasInfo');
                            },
                          ),
                        ),

                      ],
                    ),
            
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 600,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 5 / 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[900] ?.withOpacity(0.4),
                      ),
                      child: Center(
                        child: Column(
                          children:[
                            Text("DIA: 23/09/2021"),
                            Text("DURACION: 2:00"),
                            Text("ESTADO: COMPLETO"),
                            Text("EMPEZO: 10:00am"),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: 5,
                ),
              ),
            ),
          ],


        ),
      ),
    );
  }
}

