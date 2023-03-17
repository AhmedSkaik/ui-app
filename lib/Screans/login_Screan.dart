

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({Key? key}) : super(key: key);

  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  bool _obccurePass = true;
  late TextEditingController _emailTextController;
  late TextEditingController _passTextControl;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passTextControl = TextEditingController();
    _tapGestureRecognizer= TapGestureRecognizer()..onTap=NavigatToRecogniser;
  }
  @override
    void dispose(){
    _tapGestureRecognizer.dispose();
    _emailTextController.dispose();
    _passTextControl.dispose();
      super.dispose();
    }
    void NavigatToRecogniser(){
    Navigator.pushReplacementNamed(context, '/recogniser_Screan');
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'LOGIN',
          style: GoogleFonts.nunito(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome Back.....',
              style: GoogleFonts.cairo(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'Enter Email && Password',
              style: GoogleFonts.cairo(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                  height: 1),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _emailTextController,
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.start,
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.send,
              cursorHeight: 30,
              obscureText: false,
              minLines: null,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  constraints: BoxConstraints(
                    minHeight: 30,
                    maxHeight: 50,
                  ),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_rounded),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passTextControl,
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.start,
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.send,
              cursorHeight: 30,
              obscureText: _obccurePass,
              // minLines: null,
              // maxLines: null,
              // expands: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  constraints: BoxConstraints(
                    minHeight: 30,
                    maxHeight: 50,
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obccurePass = !_obccurePass;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize:Size(double.infinity, 50)),
              onPressed: () {
                performlogin();
              },
              child: Text('login'),
            ),
            SizedBox(height: 15,),
            Center(
              child: RichText(
                  text:TextSpan(
                    text:'Don\'t have acount  ',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        recognizer: _tapGestureRecognizer,
                        text: 'Click here',
                        style: GoogleFonts.nunito(
                          color: Colors.blue,
                          fontSize: 16,
                        )
                      )
                    ]
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
  void performlogin(){
    if(checkData()){
   login();
    }
  }


  bool checkData(){
    if(_emailTextController.text.isNotEmpty && _passTextControl.text.isNotEmpty){
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('EROR ENTER THE REQUIERD DATA!!'),
      backgroundColor: Colors.red.shade700,
      ),
    );
    return false; 
  }
  void login(){
    Navigator.pushReplacementNamed(context, '/catagories_Screan');
  }
}




