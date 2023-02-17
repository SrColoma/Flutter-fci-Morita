// To parse this JSON data, do
//
//     final configuraciones = configuracionesFromJson(jsonString);

import 'dart:convert';

Configuraciones configuracionesFromJson(String str) => Configuraciones.fromJson(json.decode(str));

String configuracionesToJson(Configuraciones data) => json.encode(data.toJson());

class Configuraciones {
    Configuraciones({
        required this.frecuencia,
        required this.maxLluvia,
        required this.minNivel,
        required this.minTemp,
        required this.minTurbidez,
        required this.minLluvia,
        required this.maxTemp,
        required this.maxNivel,
        required this.maxOxdix,
        required this.minOxdix,
        required this.maxSal,
        required this.minTds,
        required this.piscina,
        required this.maxPh,
        required this.maxTds,
        required this.minPh,
        required this.minSal,
        required this.maxTurbidez,
    });

    int frecuencia;
    int maxLluvia;
    int minNivel;
    int minTemp;
    int minTurbidez;
    int minLluvia;
    int maxTemp;
    int maxNivel;
    int maxOxdix;
    int minOxdix;
    int maxSal;
    int minTds;
    String piscina;
    int maxPh;
    int maxTds;
    int minPh;
    int minSal;
    int maxTurbidez;

    factory Configuraciones.fromJson(Map<String, dynamic> json) => Configuraciones(
        frecuencia: json["frecuencia"],
        maxLluvia: json["max_LLUVIA"],
        minNivel: json["min_NIVEL"],
        minTemp: json["min_TEMP"],
        minTurbidez: json["min_TURBIDEZ"],
        minLluvia: json["min_LLUVIA"],
        maxTemp: json["max_TEMP"],
        maxNivel: json["max_NIVEL"],
        maxOxdix: json["max_OXDIX"],
        minOxdix: json["min_OXDIX"],
        maxSal: json["max_SAL"],
        minTds: json["min_TDS"],
        piscina: json["piscina"],
        maxPh: json["max_PH"],
        maxTds: json["max_TDS"],
        minPh: json["min_PH"],
        minSal: json["min_SAL"],
        maxTurbidez: json["max_TURBIDEZ"],
    );

    Map<String, dynamic> toJson() => {
        "frecuencia": frecuencia,
        "max_LLUVIA": maxLluvia,
        "min_NIVEL": minNivel,
        "min_TEMP": minTemp,
        "min_TURBIDEZ": minTurbidez,
        "min_LLUVIA": minLluvia,
        "max_TEMP": maxTemp,
        "max_NIVEL": maxNivel,
        "max_OXDIX": maxOxdix,
        "min_OXDIX": minOxdix,
        "max_SAL": maxSal,
        "min_TDS": minTds,
        "piscina": piscina,
        "max_PH": maxPh,
        "max_TDS": maxTds,
        "min_PH": minPh,
        "min_SAL": minSal,
        "max_TURBIDEZ": maxTurbidez,
    };
}
