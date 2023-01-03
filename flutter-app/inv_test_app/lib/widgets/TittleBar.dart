import 'package:flutter/material.dart';

class TittleBar extends StatelessWidget {
  final String titulo;
  
  const TittleBar(
    this.titulo,{
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(titulo),
      ),
      
    );
  }
}