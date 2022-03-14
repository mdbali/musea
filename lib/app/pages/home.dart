import 'package:flutter/material.dart';

// import const
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/helper.dart';
import 'package:musea/app/const/kabupaten.dart';
import 'package:musea/app/const/experience_list.dart';

// pages
import 'package:musea/app/pages/category_experience.dart';
import 'package:musea/app/pages/notfound.dart';
import 'package:musea/app/pages/detail_experience.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildSearchBar(),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: <Widget>[
              Container(
                height: 300,
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 0),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Text('Experience in Bali',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0
                        )
                      ),
                    ),
                    const SizedBox(height:16,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        height: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 9,
                          itemBuilder: (BuildContext context, int index){
                            Kabupaten datakabupaten = kabupaten[index];
                            return Container(
                              width: 165,
                              margin: index == 0 ? const EdgeInsets.only(left: 15, right: 8, top: 8, bottom: 8) : const EdgeInsets.only(left: 8, right: 8, top:8, bottom:8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 6,
                                  )
                                ]
                              ),
                              child: InkWell(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                          child: Image(
                                            image: NetworkImage(
                                              datakabupaten.imgUrl
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),  
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                      child: Text(
                                        datakabupaten.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const MuseaColors().museaPrimary
                                        )
                                      ),
                                    )
                                  ],
                                ),
                                onTap: () {                          
                                  Helper.nextPage(context, const CatExperience());
                                }, 
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        "All Experiences",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {                          
                                Helper.nextPage(context, const ExperienceDetail());
                              }, 
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                height: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Expanded(
                                      child: Image(
                                        image: NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          const SizedBox(height: 8,),
                                          Text(
                                            "Denpasar",
                                            style: TextStyle(
                                              letterSpacing: 1,
                                              color: Colors.red[900],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const Text(
                                            "Monumen Bajra Sandhi Renon",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 8,),
                                          const Text(
                                            "Rp. ${50000}/person",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Expanded(
                                    child: Image(
                                      image: NetworkImage("https://asset.kompas.com/crops/3b2FyjjbswzQUOg2Et8fxCLYTMs=/0x0:1200x800/750x500/data/photo/2020/09/04/5f51d0566735b.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(height: 8,),
                                        Text(
                                          "Tabanan",
                                          style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.red[900],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const Text(
                                          "Pura Tanah Lot",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8,),
                                        const Text(
                                          "Rp. ${100000}/person",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Expanded(
                                    child: Image(
                                      image: NetworkImage("https://cdn.idntimes.com/content-images/community/2020/02/74919512-272361930387703-6841033549672361692-n-e0904f86096b4958b700e9620a7b007a.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(height: 8,),
                                        Text(
                                          "Bangli",
                                          style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.red[900],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const Text(
                                          "Gunung Batur Camp",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8,),
                                        const Text(
                                          "Rp. ${200000}/person",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Expanded(
                                    child: Image(
                                      image: NetworkImage("https://www.kintamani.id/wp-content/uploads/Pendakian-Gunung-Agung-1.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(height: 8,),
                                        Text(
                                          "Karangasem",
                                          style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.red[900],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const Text(
                                          "Mendaki Gunung Agung",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8,),
                                        const Text(
                                          "Rp. ${100000}/person",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ],
    );
  }

  Container buildSearchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 64, left: 16, right: 16, bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 1.0),
            blurRadius: 4,
          )
        ]
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Search here...",
          alignLabelWithHint: true,
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
          ),
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Colors.black26,
        ),
      ),
    );
  }
}