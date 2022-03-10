import 'package:flutter/material.dart';

// import const
import 'package:musea/app/const/experience_list.dart';

class CatExperience extends StatelessWidget {
  const CatExperience({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken)
                )
              ),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: const Text("Denpasar"),
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
          ),
        ),
      ),
      extendBodyBehindAppBar: false,
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: <Widget>[
                buildAllExperienceList(experiencelists),
              ],
            )
          ),
        ],
      ),
    );
  }
}

Container buildAllExperienceList(
    List<ExperienceLists> experiences
  ) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          const SizedBox(height: 24,),
          buildExperienceList(experiences, 0, 1),
          buildExperienceList(experiences, 2, 3),
        ],
      ),
    );
  }

  Container buildExperienceList(List<ExperienceLists> experiences, int indexOne, int indexTwo) {
    return Container(
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
                  Expanded(
                    child: Image(
                      image: NetworkImage(
                        experiences[indexOne].mainimage
                      ),
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
                          experiences[indexOne].tags,
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          experiences[indexOne].title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Text(
                          "Rp. ${experiences[indexOne].price}/person",
                          style: const TextStyle(
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
                  Expanded(
                    child: Image(
                      image: NetworkImage(
                        experiences[indexTwo].mainimage
                      ),
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
                          experiences[indexTwo].tags,
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          experiences[indexTwo].title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Text(
                          "Rp. ${experiences[indexTwo].price}/person",
                          style: const TextStyle(
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
    );
  }