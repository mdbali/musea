import 'package:flutter/material.dart';
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/helper.dart';

import 'package:musea/app/pages/host_add_experience_step3.dart';


class HostAddExperienceStep2 extends StatefulWidget {
  const HostAddExperienceStep2({Key? key}) : super(key: key);

  @override
  _HostaAddExperienceStep2 createState() => _HostaAddExperienceStep2();
}

class _HostaAddExperienceStep2 extends State<HostAddExperienceStep2>{

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
                  padding: const EdgeInsets.only(top: 0, bottom: 8),
                  child: const Text("Add your photos", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: const Text("We'll review every photo before it goes live on your experience page.", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins', color:  Colors.grey)),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: const Text("Cover photo", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextButton(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
                    ),
                    child: const Text('Choose Image'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: const Image(
                    image: NetworkImage("https://yourlawnwise.com/wp-content/uploads/2017/08/photo-placeholder.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text("Gallery photos", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: const Text("Upload at least 4 more photos that highlight different aspects of your experence.", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextButton(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
                    ),
                    child: const Text('Choose Images'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                              child: const Image(
                                image: NetworkImage("https://yourlawnwise.com/wp-content/uploads/2017/08/photo-placeholder.png"),
                                fit: BoxFit.cover,
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                              child: const Image(
                                image: NetworkImage("https://yourlawnwise.com/wp-content/uploads/2017/08/photo-placeholder.png"),
                                fit: BoxFit.cover,
                              ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                              child: const Image(
                                image: NetworkImage("https://yourlawnwise.com/wp-content/uploads/2017/08/photo-placeholder.png"),
                                fit: BoxFit.cover,
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                              child: const Image(
                                image: NetworkImage("https://yourlawnwise.com/wp-content/uploads/2017/08/photo-placeholder.png"),
                                fit: BoxFit.cover,
                              ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30, bottom: 8),
                  child: const Text("Add your 3D Videos", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: const Text("Copy url video from youtube.", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins')),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'https://www.youtube.com/watch?v=nSFZwgslapg',
                      labelText: 'Url Video',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 8, bottom:8, left: 15, right: 15),
        child: Row(
          children: [
            const Expanded(
              child: Text(""),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    Helper.nextPage(context, const HostAddExperienceStep3());
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
                  ),
                  child: const Text('Next'),
                ),
            )
          ],
        ),
      ),
    );
  }
}