import 'package:flutter/material.dart';
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/helper.dart';
import 'package:musea/app/pages/detail_experience.dart';

class HostProfile extends StatelessWidget {
  const HostProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 0, bottom: 40),
                  child: const Text("Host Profile", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Poppins')),
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.white
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2, blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0,10),
                            )
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: NetworkImage("https://www.pngitem.com/pimgs/m/22-220721_circled-user-male-type-user-colorful-icon-png.png"),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                const Center(
                  child: Text("Yoga", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Poppins'), textAlign: TextAlign.center)
                ),
                const Divider(height: 30,thickness: 2),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: const Text(
                          "Experiences by Host",
                          style: TextStyle(
                            fontSize: 18,
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
                                  padding: const EdgeInsets.only(right: 8),
                                  height: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Expanded(
                                        child: Image(
                                          image: NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
                                          fit: BoxFit.cover,
                                          width: double.maxFinite,
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
                                padding: const EdgeInsets.only(left: 8),
                                height: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Expanded(
                                      child: Image(
                                        image: NetworkImage("https://asset.kompas.com/crops/3b2FyjjbswzQUOg2Et8fxCLYTMs=/0x0:1200x800/750x500/data/photo/2020/09/04/5f51d0566735b.jpg"),
                                        fit: BoxFit.cover,
                                        width: double.maxFinite,
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
                                padding: const EdgeInsets.only(right: 8),
                                height: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Expanded(
                                      child: Image(
                                        image: NetworkImage("https://cdn.idntimes.com/content-images/community/2020/02/74919512-272361930387703-6841033549672361692-n-e0904f86096b4958b700e9620a7b007a.jpg"),
                                        width: double.maxFinite,
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
                                padding: const EdgeInsets.only(left: 8),
                                height: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Expanded(
                                      child: Image(
                                        image: NetworkImage("https://www.kintamani.id/wp-content/uploads/Pendakian-Gunung-Agung-1.jpeg"),
                                        fit: BoxFit.cover,
                                        width: double.maxFinite,
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
            ),
          ),
        ),
      ),
    );
  }
}