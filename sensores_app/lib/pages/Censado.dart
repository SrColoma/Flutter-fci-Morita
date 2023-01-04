import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Censado extends StatelessWidget {
  const Censado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            TittleBar('Piscina23 - 12/04/1998',
              accion: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: const Text('Descargar',style: TextStyle(color: Colors.blue),),
                  onPressed: () => {
                    
                  },
                ),
              ),
            ), 
            
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children:[
                    ExpansionTile(
                      
                      childrenPadding: EdgeInsets.all(10),
                      leading: Container(
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/PH.jpg')
                        ),
                      title: Text('PH'),
                      children: [
                        Text('Datos Generales'),
                      ],
                    
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}