import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/helper.dart';
import 'package:musea/app/pages/category_experience.dart';

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail ({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    String videoID = 'qD1_tuZlpL0';

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const MuseaColors().museaPrimary,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Monumen Bajra Sandhi Renon",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Helper.nextPage(context, const CatExperience());
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            "Denpasar",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const MuseaColors().museaPrimary,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const Divider(height: 15,thickness: 1),
                      Container(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Experience hosted by\nYoga",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(height: 15,thickness: 1),
                      Container(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "What you'll do",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                              "The Bajra Sandhi Renon Denpasar monument stands on Niti Mandala Renon public park, and the locals called it as Puputan Park. The very green Puputan Square of Niti Mandala Renon is used daily by the people of Denpasar city as a place to exercise. For example like jogging and playing football. Mainly during the afternoon, Niti Mandala Renon Puputan Park is crowded with visitors. The Bajra Sandhi Renon Denpasar monument stands on Niti Mandala Renon public park, and the locals called it as Puputan Park. The very green Puputan Square of Niti Mandala Renon is used daily by the people of Denpasar city as a place to exercise. For example like jogging and playing football. Mainly during the afternoon, Niti Mandala Renon Puputan Park is crowded with visitors.",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
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
                                      image: NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
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
                                      image: NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
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
                                      image: NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
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
                                      image: NetworkImage("https://www.rentalmobilbali.net/wp-content/uploads/2014/09/Monumen-Bajra-Sandhi.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: YoutubePlayer(
                          controller: _controller,
                          liveUIColor: Colors.amber,
                          showVideoProgressIndicator: true,
                        ),
                      ),
                      const Divider(height: 15,thickness: 1),
                      Container(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Where you'll be",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),
                            ),
                          ],
                        )
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: const Image(
                          image: NetworkImage("https://bali-backpacker.com/wp-content/uploads/2018/05/bali-backpacker_free_basic_yoga_class_afternoon_yoga_at_puputan_renon_park_bajra_sandhi_museum_map.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  )
                )
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 8, bottom:8, left: 15, right: 15),
        child: Row(
          children: [
            const Expanded(
              child: Text("Rp 50,000/person", 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 16
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {

                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
                  ),
                  child: const Text('Book Now'),
                ),
            )
          ],
        ),
      ),
    );
  }
}