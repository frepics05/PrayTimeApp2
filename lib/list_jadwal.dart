import 'package:flutter/material.dart';
import 'package:jadwal_sholat/model/ResponseJadwal.dart';
import 'package:jadwal_sholat/text_style.dart';

class ListJadwal extends StatelessWidget {
  ResponseJadwal data;

  ListJadwal(this.data);

  Widget containerWaktu(String waktu, String jam) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          height: 70.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)],
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff2980B9), Color(0xff6DD5FA)])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: <Widget>[
              Text(waktu, style: styleListText),
              Text(jam, style: styleListText),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        containerWaktu(
          data.results.datetime[0].times.Imsak,"Imsak"),
        containerWaktu(
          data.results.datetime[0].times.Fajr,"Subuh"),
        containerWaktu(
          data.results.datetime[0].times.Dhuhr,"Duhur"),
        containerWaktu(
          data.results.datetime[0].times.Asr,"Ashar"),
        containerWaktu(
          data.results.datetime[0].times.Maghrib,"Maghrib"),
        containerWaktu(
            data.results.datetime[0].times.Isha,"Isya")
      ],
    );
  }
}
