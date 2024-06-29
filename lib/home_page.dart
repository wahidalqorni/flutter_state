import 'package:flutter/material.dart';
import 'package:latihan_state/persegi_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage( jenis: "", ) ));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.limeAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Luas Persegi Panjang"),
                ),
              ),
            ),

            SizedBox(height: 20,),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage() ));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Keliling Balok"),
                ),
              ),
            ),

            SizedBox(height: 20,),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  PersegiPage(jenis: "Persegi Panjang",) ));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Volume Balok"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}