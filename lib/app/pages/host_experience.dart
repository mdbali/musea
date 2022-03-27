import 'package:flutter/material.dart';
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/helper.dart';

import 'package:musea/app/pages/host_add_experience.dart';

class HostExperience extends StatelessWidget {
  const HostExperience({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 48, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 0, bottom: 40),
                  child: const Text("Your Experiences", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: const Text("Tour Visit Museum Bali",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontFamily: 'Arial'
                                    ),
                                  ),
                                ),
                                Container(
                                padding: const EdgeInsets.only(top: 0),
                                child: 
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(right: 15),
                                        child: InkWell(
                                          onTap: (){

                                          },
                                          child: const Text("edit", 
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(0),
                                        child: InkWell(
                                          onTap: (){

                                          },
                                          child: const Text("delete",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                            child: const Image(
                              image: NetworkImage("https://www.denpasarkota.go.id/uploads/datang/datang_200402070230_MuseumBaliDenpasar.jpg"),
                              fit: BoxFit.cover,
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 15,thickness: 1),
                Container(
                  padding: const EdgeInsets.only(top:15, bottom: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: const Text("Monumen Bajra Sandhi Renon",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontFamily: 'Arial'
                                    ),
                                  ),
                                ),
                                Container(
                                padding: const EdgeInsets.only(top: 0),
                                child: 
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(right: 15),
                                        child: InkWell(
                                          onTap: (){

                                          },
                                          child: const Text("edit", 
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(0),
                                        child: InkWell(
                                          onTap: (){

                                          },
                                          child: const Text("delete",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                            child: const Image(
                              image: NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
                              fit: BoxFit.cover,
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 15,thickness: 1),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            Helper.nextPage(context, const HostAddExperience());
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
          ),
          child: const Text('Create new experience'),
        ),
      ),
    );
  }
}