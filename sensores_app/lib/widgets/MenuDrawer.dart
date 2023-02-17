import 'package:flutter/material.dart';
import 'package:sensores_app/pages/Pages.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          // borderRadius: BorderRadius.only(
          //   topRight: Radius.circular(40),
          //   bottomRight: Radius.circular(40),
          // ),
        ),
        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Center(
                child:  Image(
                  image: AssetImage('assets/images/logofci.png'),
                  width: 200,
                ),
              ),
              decoration: BoxDecoration(
                //redondeado la parte de la derecha
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Colors.blue,
              ),
            ),

            

            ListTile(
              leading: Icon(Icons.settings_remote_rounded),
              title: const Text('S E N S O R E S'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacementNamed(context, Censores.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.pool),
              title: const Text('P I S C I N A S'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacementNamed(context, PiscinasPage.routeName);
              },
            ),
            //list tile con icono de personas
            ListTile(
              leading: Icon(Icons.pie_chart),
              title: const Text('R E P O R T E S'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacementNamed(context, ReportesPage.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: const Text('U S U A R I O S'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacementNamed(context, PiscinasPage.routeName);
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.settings),
            //   title: const Text('C O N F I G U R A C I O N'),
            //   onTap: () {
            //     // Update the state of the app.
            //     // ...
            //     Navigator.popAndPushNamed(context, 'piscinaPage');
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('C E R R A R  S E S I O N'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pushReplacementNamed(context, Loguin.routeName);
              },
            ),
            
          ],
        ),
      ),
    );
  }
}