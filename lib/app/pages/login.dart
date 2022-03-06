// default package
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import const
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/label.dart';
import 'package:musea/app/const/helper.dart';

// navigation
import 'package:musea/app/layouts/menu_bottom.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _inscription = false;
  bool _passwordVisible = false;

  final _formKey = GlobalKey<FormState>();
  final _formSignUpKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    // Show status bar when splashscreen done
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

    // -----------------------------
    // style for button
    // -----------------------------
    Color getBackgroundColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const MuseaColors().museaPrimary;
      }
      return const MuseaColors().museaPrimary;
    }

    Color getForegroundColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const MuseaColors().museaPrimary;
      }
      return Colors.white;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 130,
                    width: 130,
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Visibility(
                          visible: !_inscription,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:30),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("Login to easily access your experience",style: TextStyle(color: const MuseaColors().museaText,fontSize: 14),)),
                          ),
                        ),
                        Visibility(
                          visible:!_inscription,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                        width: 0, 
                                        style: BorderStyle.none,
                                    ),
                                ),
                                hintText: Label.username,
                                contentPadding: const EdgeInsets.only(bottom:0.0, top:12.0),
                                filled: true,
                                fillColor: Colors.grey[200],
                                prefixIcon: Icon(Icons.person_outline,color: const MuseaColors().museaPrimary,),
                              ),
                              keyboardType: TextInputType.text,
                              validator: (val){
                                if(val == null || val.isEmpty){
                                  return "Please enter a valid username";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Visibility(
                          visible:!_inscription,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                        width: 0, 
                                        style: BorderStyle.none,
                                    ),
                                ),
                                hintText: Label.password,
                                contentPadding: const EdgeInsets.only(bottom:0.0, top:12.0),
                                filled: true,
                                fillColor: Colors.grey[200],
                                prefixIcon: Icon(Icons.lock_outline,color: const MuseaColors().museaPrimary,),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    // Based on passwordVisible state choose the icon
                                    _passwordVisible ? Icons.visibility : Icons.visibility_off, color:Colors.grey,
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                          _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: !_passwordVisible,
                              validator: (val){
                                if(val == null || val.isEmpty){
                                  return "Please enter a valid password";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Visibility(
                          visible: !_inscription,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:0),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("Forgot password ?",style: TextStyle(color: const MuseaColors().museaPrimary,fontSize: 12),)),
                          ),
                        ),
                        Visibility(
                          visible: !_inscription,
                          child: Padding(
                            padding: const EdgeInsets.only(top:30),
                            child: TextButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    const Size(double.infinity, 50)),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(getBackgroundColor),
                                foregroundColor:
                                    MaterialStateProperty.resolveWith(getForegroundColor),
                              ),
                              onPressed: () {
                                Helper.nextPage(context, const MenuButtom());
                              },
                              child: const Text(
                                Label.btnlogin,
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  Form(
                    key: _formSignUpKey,
                    child: Column(
                      children: <Widget>[
                          Visibility(
                            visible: _inscription,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:30),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Sign up now",style: TextStyle(color: const MuseaColors().museaText,fontSize: 14),)),
                            ),
                          ),
                          Visibility(
                            visible:_inscription,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          width: 0, 
                                          style: BorderStyle.none,
                                      ),
                                  ),
                                  hintText: Label.username,
                                  contentPadding: const EdgeInsets.only(bottom:0.0, top:12.0),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Icon(Icons.person_outline,color: const MuseaColors().museaPrimary,),
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return "Please enter a valid username";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Visibility(
                            visible:_inscription,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          width: 0, 
                                          style: BorderStyle.none,
                                      ),
                                  ),
                                  hintText: Label.email,
                                  contentPadding: const EdgeInsets.only(bottom:0.0, top:12.0),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Icon(Icons.mail_outline,color: const MuseaColors().museaPrimary,),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return "Please enter a valid email address";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Visibility(
                            visible:_inscription,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          width: 0, 
                                          style: BorderStyle.none,
                                      ),
                                  ),
                                  hintText: Label.phone,
                                  contentPadding: const EdgeInsets.only(bottom:0.0, top:12.0),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Icon(Icons.smartphone,color: const MuseaColors().museaPrimary,),
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return "Please enter a valid phone number";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Visibility(
                            visible:_inscription,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          width: 0, 
                                          style: BorderStyle.none,
                                      ),
                                  ),
                                  hintText: Label.password,
                                  contentPadding: const EdgeInsets.only(bottom:0.0, top:12.0),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Icon(Icons.lock_outline,color: const MuseaColors().museaPrimary,),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible ? Icons.visibility : Icons.visibility_off, color:Colors.grey,
                                    ),
                                    onPressed: () {
                                      // Update the state i.e. toogle the state of passwordVisible variable
                                      setState(() {
                                            _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: !_passwordVisible,
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return "Please enter a valid password";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Visibility(
                            visible: _inscription,
                            child: Padding(
                              padding: const EdgeInsets.only(top:30),
                              child: TextButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(double.infinity, 50)),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(getBackgroundColor),
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith(getForegroundColor),
                                ),
                                onPressed: () {
                                  Helper.nextPage(context, const MenuButtom());
                                },
                                child: const Text(
                                  Label.btnsignup,
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    )
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        _inscription=!_inscription;
                      });
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: InkWell(
                          child: RichText(
                            text: TextSpan(
                              text:  _inscription?"Do you have an account ? ":"New User ?",
                              style: TextStyle(color: Colors.grey[500], fontSize: 14,fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text:_inscription?"Sign in":" Create an account",
                                  style: TextStyle(color: const MuseaColors().museaPrimary,fontWeight: FontWeight.w600, fontSize: 14),
                                )
                              ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text("Or continue with " ,style: TextStyle(color: Colors.grey[500], fontSize: 14,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 15,),
                  SizedBox(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        continueWith("assets/images/social_media/google.png"),
                        continueWith("assets/images/social_media/fb.png"),
                      ],
                    ),
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }

  Container continueWith(String image) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 50,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,3),
                color: Colors.grey,
                blurRadius: 5
            )
          ]

      ),
      child: Image.asset(image,),
    );
  }
}