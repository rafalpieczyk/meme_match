// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:galleryimage/galleryimage.dart';
import 'package:google_fonts/google_fonts.dart';

class MemeGalleryContent extends StatefulWidget {
  const MemeGalleryContent({
    Key? key,
  }) : super(key: key);

  @override
  State<MemeGalleryContent> createState() => _MemeGalleryContentState();
}

var title = 'Moja tablica';
var index = 1;

class _MemeGalleryContentState extends State<MemeGalleryContent> {
  List<String> urlList = [
    "https://dl.airtable.com/.attachments/501f629f41b716ce726d14e9c88f479c/dc0a51d5/16597215275460.jpg",
    "https://dl.airtable.com/.attachments/25134d4a611a7dcfc93998f09db73b4a/f5b90cbb/ov7mtowoSv6fomRH.jpg",
    "https://dl.airtable.com/.attachments/fde7057088251c2271833e60843c622e/98a1ee8d/uc",
    "https://dl.airtable.com/.attachments/e3fde9909d078031fdfb5fdeee464d39/42a67c9a/LJRbNg8AqtisrGhSwks5d1ZIdq1NgAd2.png",
    "https://dl.airtable.com/.attachments/977d400706201bbe5655fa9cccd1faa7/fa17c693/1659620960_rngvi9_600.jpg",
    "https://dl.airtable.com/.attachments/8752f01b6a1fec9cf73dce5911032545/e666b825/fiB1ecoZzhtonS3x.jpg",
    "https://dl.airtable.com/.attachments/8bf921d465caea6c322fd7c7c02582b6/362986c9/yrMWyUBxzt4RybO614Ip8q1Plhe16t5d.jpg",
    "https://dl.airtable.com/.attachments/93cb3bd362f5e8839eaa30c63ff38fbb/afd8509b/uc",
    "https://dl.airtable.com/.attachments/f5bb758602e8eab733b04ca31223230d/0fe207a4/uc",
    "https://dl.airtable.com/.attachments/5a9ab9ae238e04e02d5c410f44c6b32e/759225e2/dVUGT602zF8WeimN.jpg",
    "https://dl.airtable.com/.attachments/f0d1440db1ad8a237144bd30e8c7588a/358897e3/CUDUFXoVxIG0PGt4TrRvvefsdposGqSo.jpg",
    "https://dl.airtable.com/.attachments/c3f873b77c96439bb4fd102b9fa4b88d/afb6b293/vyiqWCSlqkpQjOoP.jpg",
    "https://dl.airtable.com/.attachments/6d2d8e389a0ec48e191dcd7ebbb2c27b/0b43bcb8/1659535810_ou39it_600.jpg",
    "https://dl.airtable.com/.attachments/e22653c08376064271c607e3e9238892/8e75e912/16596896281163.jpg",
    "https://dl.airtable.com/.attachments/0d40fd784ed17433f054509353b2875e/434d993f/uc",
    "https://dl.airtable.com/.attachments/f6dca5aca744a242bc0a23f51fafc98e/4f9ae15b/16596985814679.jpg",
    "https://dl.airtable.com/.attachments/1546ea9cf01a2dbf010202631c2da887/dcc5e004/1659579957_3aliuq_600_tv.jpg",
    "https://dl.airtable.com/.attachments/416d5f3aa8e28d6181a0b5fcf470ecfa/6e3f7b55/uc",
    "https://dl.airtable.com/.attachments/c635f4f804a85187e010ca066711542a/4dc7e7f8/uc",
    "https://dl.airtable.com/.attachments/1891e75f5156dfd39f59c4df3ca56738/6c1d53a0/16597222042234.jpg",
    "https://dl.airtable.com/.attachments/e0d4b72676fc0417d702073a1d3aa445/4c349de3/6Q9xKFRUiZ8xWo21.jpg",
    "https://dl.airtable.com/.attachments/33ecbdc6245831e2641e7469aa4b8edc/8592574f/Xc4F21nJDxbhzkY7njtQGAia8wi8DkXN.png"
  ];

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      setState(() {
        title = 'Meme Stack';
      });
    }
    if (index == 1) {
      setState(() {
        title = 'Moja tablica';
      });
    }
    if (index == 2) {
      setState(() {
        title = 'Wiadomości';
      });
    }
    if (index == 3) {
      setState(() {
        title = 'Profil';
      });
    }
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color.fromARGB(255, 6, 0, 57)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              const SizedBox(width: 10),
              Text(
                title,
                style: GoogleFonts.montserrat(fontSize: 25),
              ),
              const SizedBox(width: 90),
              ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.centerLeft,
                          colors: [Colors.orange, Colors.purple])
                      .createShader(bounds),
                  child: const Icon(CupertinoIcons.arrowshape_turn_up_right,
                      size: 30)),
              const SizedBox(width: 35),
              ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.centerLeft,
                          colors: [Colors.orange, Colors.purple])
                      .createShader(bounds),
                  child: const Icon(CupertinoIcons.delete, size: 30)),
            ],
          ),
        ),
        body: Builder(builder: (context) {
          if (index == 0) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Meme stack',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }
          if (index == 1) {
            return Padding(
                padding: const EdgeInsets.all(3.0),
                child: MasonryGridView.builder(
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Image.network(urlList[index]);
                    })
                // child: GalleryImage(
                //   imageUrls: urlList,
                //   numOfShowImages: urlList.length,
                //   titleGallery: 'Galeria',
                // ),
                );
          }
          if (index == 2) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Wiadomości',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Profil',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          );
        }),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.transparent,
            onTap: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.square_stack_3d_down_right,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.star_fill,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message_rounded,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: ''),
            ]),
      ),
    );
  }
}
