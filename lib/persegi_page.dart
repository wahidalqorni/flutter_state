import 'package:flutter/material.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({super.key, this.jenis});

  final jenis;

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {

  // siapkan variabel penampung inputan
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();

  // variabel untuk mengisikan nilai awal dari luas
  num luas = 0.0;

  // membuat fungsi hitung luas
  void hitungLuas() {
    setState(() {
      luas =  num.parse(panjang.text) * num.parse(lebar.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Persegi Panjang"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child:

        widget.jenis == "Persegi Panjang" ? ListView(
          children: [

            Text("Input nilai panjang"),
            TextFormField(
              controller: panjang,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Input nilai lebar"),
            TextFormField(
              controller: lebar,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: (){
                // memanggil function yg akan digunakan10
                hitungLuas();
              },
              child: Text("Hitung"),
            ),

            SizedBox(height: 10,),

            Text("Hasil : ${luas} "  ),

            SizedBox(height: 10,),

            TextButton(
              onPressed: (){
               setState(() {
                 panjang.text = "";
                 lebar.text = "";
                 luas = 0.0;
               });
              },
              child: Text("Reset"),
            ),
          ],
        ) : Container(
          child: Text("Keliling"),
        ) ,
      ),
    );
  }
}
