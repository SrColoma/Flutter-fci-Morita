import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TittleBar extends StatelessWidget {
  final String titulo;
  final Widget? accion;
  
  const TittleBar(
    this.titulo,{
    Key? key,
    this.accion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // leading: Icon(CupertinoIcons.person_2),
      backgroundColor: Colors.transparent,
      actions: [accion ?? Container()],
      leading: Navigator.canPop(context) ? IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ) : Icon(Icons.pool),
      title: Text(titulo,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      // pinned: true,
      // expandedHeight: 200,
      // flexibleSpace: FlexibleSpaceBar(
      //   title: Text(titulo,
      //     style: const TextStyle(
      //       color: Colors.blue,
      //       fontSize: 20,
      //     ),
      //   ),
      //   background: Image.asset('assets/images/piscina.jpg',fit: BoxFit.cover,),
      // ),
    );
    // return CupertinoSliverNavigationBar(
    //   // leading: Icon(CupertinoIcons.person_2),
    //   backgroundColor: Colors.transparent,
    //   trailing: accion,

    //   largeTitle: Text(titulo,
    //     style: const TextStyle(
    //       color: Colors.blue,
    //       fontSize: 20,
    //     ),
    //   ),

      
    // );
  }
}