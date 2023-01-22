import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NuevoFrecuenciaDialog extends StatefulWidget {
  const NuevoFrecuenciaDialog({super.key});

  @override
  State<NuevoFrecuenciaDialog> createState() => _NuevoFrecuenciaDialogState();
}

class _NuevoFrecuenciaDialogState extends State<NuevoFrecuenciaDialog> {
  static const ceroDuration = Duration(hours: 0, minutes: 0, seconds: 0);
  var _selectedFrequency = ceroDuration;
  
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text('Cambiar frecuencia'),
      insetAnimationCurve: Curves.easeInOut,
      insetAnimationDuration: Duration(milliseconds: 500),
      content: Column(
        children: [
          CupertinoButton(
            child: Text('Cada: ${_selectedFrequency.inHours}h ${(_selectedFrequency.inMinutes % 60).round()}min'),
            onPressed: //cupertino time picker
              (
                () => showCupertinoModalPopup(
                  context: context,
                  builder: (context) => Container(
                    // height: Screen.height(context) * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    // height: 500,
                    child: CupertinoTimerPicker(
                      minuteInterval: 2,

                      mode: CupertinoTimerPickerMode.hm,
                      initialTimerDuration: _selectedFrequency,
                      onTimerDurationChanged: (value) {
                        setState(() {
                          _selectedFrequency = value;
                        });
                      },
                    ),
                  ),
                )
              ),
          ),

        ],
      ),
      actions: [
        CupertinoDialogAction(
          child: Text('Cancelar', style: TextStyle(color: Colors.red),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        CupertinoDialogAction(
          child: Text('Cambiar'),
          onPressed: _selectedFrequency>ceroDuration ? () {
            Navigator.of(context).pop();
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Text('Se cambiara la frecuencia de sensado'),
                content: Column(
                  children: [
                    Text('Cada: ${_selectedFrequency.inHours}h ${(_selectedFrequency.inMinutes % 60).round()}min'),
                  ],
                ),
                actions: [
                  CupertinoDialogAction(
                    child: Text('Cancelar', style: TextStyle(color: Colors.red),),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Aceptar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      //TODO: aqui comienza a crearse un nuevo censo
                    },
                  ),
                ],
              ),
            );
          } : null,
        ),
      ],
    );
  }
}