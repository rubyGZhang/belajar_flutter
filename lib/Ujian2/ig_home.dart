import 'package:belajar/Ujian2/ig_awal.dart';
import 'package:belajar/Ujian2/ig_search.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGHome extends StatefulWidget {
  const IGHome({Key? key}) : super(key: key);

  @override
  State<IGHome> createState() => _IGHomeState();
}

class _IGHomeState extends State<IGHome> {
  String urlPanda = "https://asset.kompas.com/crops/ncgvDkq11ovx_624dxbv483x_iY=/0x0:648x432/750x500/data/photo/2021/10/05/615c371c61b81.jpg";
  List<dynamic> daftar_widget = [
    IGAwal(),
    IGSearch(),
    Center(child: Text("Reels Skip")),
    Text("Halaman 4"),
    Text("Halaman 5"),
  ];

  int nomor_halaman = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              daftar_widget[nomor_halaman],
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min, //membuat tinggi seminim mungkin
        children: [
          Divider(thickness: 1, height: 1,),
          Container(
            padding: EdgeInsets.only(top: 8, bottom: 8),
             // 0-1 transparant
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.home),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(MdiIcons.magnify),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(MdiIcons.clipboardPlay),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(MdiIcons.cartOutline),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman = 4;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Image.network(urlPanda,
                          fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}
