import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ReportesPage extends StatelessWidget {
  const ReportesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      body: SafeArea(
        child: CustomScrollView(
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
                  title: const Text('R E P O R T E S'),
                  
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      child: const Text('Nuevo Reporte',style: TextStyle(color: Colors.white),),
                      onPressed: () => {
                        
                          showDialog(context: context, 
                            builder: (_)  => NuevoReporteDialog(),
                          ),
                        },
                    ),
                  ),
                  // 
                ],
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 600,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ReporteCard();
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