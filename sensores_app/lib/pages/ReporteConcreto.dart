
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ReporteConcreto extends StatelessWidget {
  const ReporteConcreto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MenuDrawer(),
      body: SafeArea(
        child: CustomScrollView(
          slivers:[
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverAppBar(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text('12/04/1998'),
                  
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      child: const Text('Descargar',style: TextStyle(color: Colors.white),),
                      onPressed: () => {
                      
                      },
                    ),
                  ),
                  // 
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text('Piscina 1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("aqui va el grafico del sensor"),
                  DataTable(
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Fecha',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Hora',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Valor',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('12/04/1998')),
                          DataCell(Text('13:13')),
                          DataCell(Text('15')),
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
    );
  }
}
        // child: CustomScrollView(
        //   slivers: [
        //     SliverPadding(
        //       padding: const EdgeInsets.all(10),
        //       sliver: SliverAppBar(
        //         shape: const RoundedRectangleBorder(
        //           borderRadius: BorderRadius.all(
        //             Radius.circular(20),
        //           ),
        //         ),
        //         flexibleSpace: FlexibleSpaceBar(
        //           title: const Text('12/04/1998'),
                  
        //         ),
                
        //       ),
        //     ),
            
        //     SliverPadding(
        //       padding: const EdgeInsets.all(10),
        //       //tabla de reportes
        //       sliver: SliverList(
        //         delegate: SliverChildListDelegate(
        //           [
        //             Card(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(20),
        //               ),
        //               // color: Colors.transparent,
        //               shadowColor: Colors.transparent,
        //               child: InkWell(
        //                 borderRadius: BorderRadius.circular(20),
        //                 onTap: () {
        //                   Navigator.pushNamed(context, 'censado');
        //                 },
        //                 child: Padding(
        //                   padding: const EdgeInsets.all(30.0),
        //                   child: Column(
        //                     children: [
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.end,
        //                         children: [
        //                           Text("12/04/1998"),
        //                           const SizedBox(width: 10,),
        //                           StatusDot(Colors.green,),
        //                         ],
        //                       ),
                              
        //                       Expanded(
        //                         // padding: const EdgeInsets.all(8.0),
        //                         child: Row(
        //                           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                           children: [
                
        //                             Icon(Icons.article_outlined),
                                    
        //                             Container(
        //                               width: 2,
        //                               color: Color.fromARGB(30, 158, 158, 158),
                                      
        //                             ),
                
                
        //                             Column(
        //                               mainAxisAlignment: MainAxisAlignment.center,
        //                               children: [
        //                                 Row(
        //                                   children: [
        //                                     Text("10:00 am", style: TextStyle(fontSize: 20),),
        //                                     SizedBox(width: 10,),
        //                                     Icon(Icons.arrow_forward_ios, size: 12,),
        //                                     SizedBox(width: 10,),
        //                                     Text("12:00 pm", style: TextStyle(fontSize: 20),),
        //                                   ],
                
        //                                 ),
        //                                 Divider(),
        //                                 Row(
        //                                   children: [
        //                                     Icon(Icons.access_time_outlined),
        //                                     SizedBox(width: 10,),
        //                                     Text("2 horas", style: TextStyle(fontSize: 20),),
        //                                   ],
        //                                 ),
        //                               ],
        //                             ),
                
                
        //                             Container(
        //                               width: 2,
        //                               color: Color.fromARGB(30, 158, 158, 158),
                                      
        //                             ),
                
                
        //                             Column(
        //                               mainAxisAlignment: MainAxisAlignment.center,
        //                               children: [
        //                                 Row(
        //                                   children: [
        //                                     Text("10:00 am", style: TextStyle(fontSize: 20),),
        //                                     SizedBox(width: 10,),
        //                                     Icon(Icons.arrow_forward_ios, size: 12,),
        //                                     SizedBox(width: 10,),
        //                                     Text("12:00 pm", style: TextStyle(fontSize: 20),),
        //                                   ],
                
        //                                 ),
        //                                 Divider(),
        //                                 Row(
        //                                   children: [
        //                                     Icon(Icons.access_time_outlined),
        //                                     SizedBox(width: 10,),
        //                                     Text("2"),
        //                                   ],

        //                                 ),
        //                               ],
        //                             ),
        //                           ],
        //                         ),

        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
//       ),
//     );

//   }
// }

// class CensoCard extends StatelessWidget {
//   const CensoCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       // color: Colors.transparent,
//       shadowColor: Colors.transparent,
//       child: InkWell(
//         borderRadius: BorderRadius.circular(20),
//         onTap: () {
//           Navigator.pushNamed(context, 'censado');
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(30.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text("12/04/1998"),
//                   const SizedBox(width: 10,),
//                   StatusDot(Colors.green,),
//                 ],
//               ),
              
//               Expanded(
//                 // padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
    
//                     Icon(Icons.article_outlined),
                    
//                     Container(
//                       width: 2,
//                       color: Color.fromARGB(30, 158, 158, 158),
                      
//                     ),
    
    
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           children: [
//                             Text("10:00 am", style: TextStyle(fontSize: 20),),
//                             SizedBox(width: 10,),
//                             Icon(Icons.arrow_forward_ios, size: 12,),
//                             SizedBox(width: 10,),
//                             Text("12:00 pm", style: TextStyle(fontSize: 20),),
//                           ],
    
//                         ),
//                         Divider(),
//                         Row(
//                           children: [
//                             Icon(Icons.access_time_outlined),
//                             SizedBox(width: 10,),
//                             Text("2:00 hrs"),
//                           ],
    
//                         ),
//                       ],
//                     ),
    
//                   ],
//                 ),
//               ),
              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class NuevoCensoDialog extends StatefulWidget {
//   const NuevoCensoDialog({super.key});

//   @override
//   State<NuevoCensoDialog> createState() => _NuevoCensoDialogState();
// }

// class _NuevoCensoDialogState extends State<NuevoCensoDialog> {
//   static const ceroDuration = Duration(hours: 0, minutes: 0, seconds: 0);
//   var _selectedTime = ceroDuration;
//   var _selectedFrequency = ceroDuration;
  
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoAlertDialog(
//       title: Text('Nuevo Censo'),
//       insetAnimationCurve: Curves.easeInOut,
//       insetAnimationDuration: Duration(milliseconds: 500),
//       content: Column(
//         children: [
//           CupertinoButton(
            
//             child: Text('Durante: ${_selectedTime.inHours}h ${(_selectedTime.inMinutes % 60).round()}min'),
//             onPressed: //cupertino time picker
//               (
//                 () => showCupertinoModalPopup(
//                   context: context,
//                   builder: (context) => Container(
//                     // height: Screen.height(context) * 0.5,
                    
//                     height: MediaQuery.of(context).size.height * 0.5,
//                     // height: 500,
//                     child: CupertinoTimerPicker(
//                       minuteInterval: 12,
//                       mode: CupertinoTimerPickerMode.hm,
//                       initialTimerDuration: _selectedTime,
//                       onTimerDurationChanged: (value) {
//                         setState(() {
//                           _selectedTime = value;
//                         });
//                       },
//                     ),
//                   ),
//                 )
//               ),
//           ),

//           CupertinoButton(
//             child: Text('Cada: ${_selectedFrequency.inHours}h ${(_selectedFrequency.inMinutes % 60).round()}min'),
//             onPressed: //cupertino time picker
//               (
//                 () => showCupertinoModalPopup(
//                   context: context,
//                   builder: (context) => Container(
//                     // height: Screen.height(context) * 0.5,
//                     height: MediaQuery.of(context).size.height * 0.5,
//                     // height: 500,
//                     child: CupertinoTimerPicker(
//                       minuteInterval: 2,

//                       mode: CupertinoTimerPickerMode.hm,
//                       initialTimerDuration: _selectedFrequency,
//                       onTimerDurationChanged: (value) {
//                         setState(() {
//                           _selectedFrequency = value;
//                         });
//                       },
//                     ),
//                   ),
//                 )
//               ),
//           ),

//         ],
//       ),
//       actions: [
//         CupertinoDialogAction(
//           child: Text('Cancelar', style: TextStyle(color: Colors.red),),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         CupertinoDialogAction(
//           child: Text('Censar'),
//           onPressed: _selectedTime > ceroDuration && _selectedFrequency>ceroDuration ? () {
//             Navigator.of(context).pop();
//             showCupertinoDialog(
//               context: context,
//               builder: (context) => CupertinoAlertDialog(
//                 title: Text('¿Desea iniciar el censo?'),
//                 content: Column(
//                   children: [
//                     Text('Durante: ${_selectedTime.inHours}h ${(_selectedTime.inMinutes % 60).round()}min'),
//                     Text('Cada: ${_selectedFrequency.inHours}h ${(_selectedFrequency.inMinutes % 60).round()}min'),
//                   ],
//                 ),
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
//           } : null,
//         ),
//       ],
//     );
//   }
// }
