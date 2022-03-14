import 'package:flutter/material.dart';
import 'package:musea/app/const/colors.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                child: Image(
                  image: AssetImage("assets/images/kabupaten/tabanan.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),  
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Text(
              "Test",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const MuseaColors().museaPrimary
              )
            ),
          )
        ],
      ),
    );
  }
}