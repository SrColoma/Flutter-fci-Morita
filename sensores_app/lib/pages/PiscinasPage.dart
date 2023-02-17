import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class PiscinasPage extends StatelessWidget {
  static const routeName = 'piscinas';
  const PiscinasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverAppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                   Radius.circular(20),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('P I S C I N A S'),
                
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: const Text('Agregar Piscina',style: TextStyle(color: Colors.white),),
                    onPressed: () => {
                      
                        showDialog(context: context, 
                          builder: (_)  => NuevaPiscinaDialog(),
                        ),
                      },
                  ),
                ),
                // 
              ],
            ),
          ),
          // TittleBar('P I S C I N A S',
          //   accion: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: TextButton(
          //       child: const Text('Agregar Piscina',style: TextStyle(color: Colors.blue),),
          //       onPressed: () => {
                    
          //           showDialog(context: context, 
          //             builder: (_)  => NuevaPiscinaDialog(),
          //           ),
          //         },
          //     ),
          //   ),
          // ),

          
        
          //el grid de las piscinas
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
                  return PiscinaCard(
                    index: index,
                  );
                },
                childCount: 5,
              ),
            ),
          ),
          
          
        ],
      ),
    );
  }
}


// class PiscinaCard extends StatelessWidget {
//   final int index;
//   final String nombre;

//   const PiscinaCard({
//     Key? key,
//     required this.index,
//     this.nombre = "Piscina",
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(20),
//         onTap: () {
//           Navigator.pushNamed(context, 'piscinasInfo');
//         },
//         child: Container(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 // estado de la piscina
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text("Reposo...", style: TextStyle(color: Colors.blueGrey, fontSize: 12),),
//                     Container(
//                       width:10,
//                     ),
//                     StatusDot(Colors.blueGrey),
//                   ],
//                 ),
//                 Expanded(
//                   child: Container(
//                     child: Center(
//                       child: Text("$nombre $index",style: TextStyle(fontSize: 20),),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//       ),
//     );
//   }
// }


//TODO: agregarque si no hay nombre no pueda darle a agregar
// class NuevaPiscinaDialog extends StatefulWidget {

//   const NuevaPiscinaDialog({super.key});

//   @override
//   State<NuevaPiscinaDialog> createState() => _NuevaPiscinaDialogState();
// }

// class _NuevaPiscinaDialogState extends State<NuevaPiscinaDialog> {
//   var _nombre = "";

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoAlertDialog(
//       title: const Text('Nueva Piscina\n'),
//       content: CupertinoTextField(

//         style: TextStyle(color: Colors.white),
//         placeholder: 'Nombre de la piscina',
//         onChanged: (value) => {
//           setState(() {
//             _nombre = value;
//           }),
//         }
//       ),
//       actions: [
//         CupertinoDialogAction(
//           child: const Text('Cancelar'),
//           onPressed: () => Navigator.pop(context),
//         ),
//         CupertinoDialogAction(
//           child: const Text('Agregar'),
//           onPressed: _nombre != "" ? () {
//             Navigator.of(context).pop();
//             showCupertinoDialog(
//               context: context,
//               builder: (context) => CupertinoAlertDialog(
//                 title: Text('se agregara la piscina\n $_nombre'),
                
//                 actions: [
//                   CupertinoDialogAction(
//                     child: Text('Cancelar', style: TextStyle(color: Colors.red),),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                   CupertinoDialogAction(
//                     child: Text('Aceptar'),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                       //TODO: aqui comienza a crearse un nuevo censo
//                     },
//                   ),
//                 ],
//               ),
//             );
//           }:null,
//         ),
//       ],
//     );
//   }
// }