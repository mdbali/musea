import 'package:flutter/material.dart';
import 'package:musea/app/const/helper.dart';

// import pages
import 'package:musea/app/pages/login.dart';
import 'package:musea/app/pages/edit_profile.dart';
import 'package:musea/app/pages/host_experience.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ListView(
        children:[
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
          Container(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: const Text("Hi, Yoga", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Poppins'), textAlign: TextAlign.center)
          ),
          const Divider(height: 15,thickness: 2),
          Container(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: const Text("Account settings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Poppins')),
          ),
          InkWell(
            onTap: (){
              Helper.nextPage(context, const EditProfile());
            },
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Personal information",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Payments",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Privacy and sharing",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.only( bottom: 20),
            child: const Text("Hosting", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Poppins')),
          ),
          InkWell(
            onTap: () {
              Helper.nextPage(context, const HostExperience());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Manage experiences",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
           const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.only( bottom: 20),
            child: const Text("Support", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Poppins')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Get help",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Give us feedback",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Helper.nextPage(context, const Login());
            },
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              child: const Text("Logout", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: 'Poppins', decoration: TextDecoration.underline, color: Color.fromRGBO(0, 102, 7, 1) )),
            ),
          )
        ],
      ),
    );
  }
}