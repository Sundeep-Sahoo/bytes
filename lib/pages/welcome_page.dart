import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zudio/widgets/custom_button.dart';

class WelcomePages extends StatelessWidget {
  const WelcomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(
        context,
        ) 
      );
  }

    Widget _buildUI(BuildContext context) {
      return Stack(
        children: [_backgroundGradient (
          context,
          ),
          _foregroundWidgets(context),
        ],
      );
    }

    Widget _backgroundGradient(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient (
            begin: Alignment.topLeft,
            end:Alignment.bottomRight,
            stops: const [0.3,0.3],
            colors: [
              Theme.of(context).primaryColor,
              Color.fromARGB(255, 212, 248, 203),
              ],
            ),
        ),
      );
    }

    Widget _foregroundWidgets(
      BuildContext context,
    ) {
      return SafeArea(
        child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          _image(context,),
          _info(context,),
        ],
        ),
        ),
        );
  }  

      Widget _image(BuildContext context) {
        return  SizedBox( height: MediaQuery.sizeOf(context).height * 0.35,
                          width: MediaQuery.sizeOf( context).width * 0.75,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  25,
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 50,
                                    sigmaY: 50,
                                  ),
                                  child: Container(
                                    color: Colors.black.withOpacity(
                                      0.1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(
                                  5.0,
                                ),
                                child: Image.network("https://i.postimg.cc/rpDgnjrf/Bytes-transparent.png",
                                      fit: BoxFit.contain,
                                ),
                                ),
                            ],
                          ),
        );
      }

      Widget _info(BuildContext context){
        return Container (
          height: MediaQuery.sizeOf(context).height * 0.40,
          width: MediaQuery.sizeOf(context).width * 0.90 ,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(
              25,
            ),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            _infoText(context),
            _infoSubText(context),
            CustomBottom(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.70,
                  isprimary: true,
                  text: "LOGIN",
                  onPressed: (){
                    Navigator.pushNamed(context, "/login",
                    );
                  },

            ),
            CustomBottom(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.70,
                  isprimary: false,
                  text: "SIGN UP",
                  onPressed: (){},
            ),
          ],),
        );
      }

      Widget _infoText(BuildContext context){
          return Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05,
            ),
            child: Text.rich(TextSpan(
              style: const TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),
              children:[
                    const TextSpan(text: "Find the"),
                    TextSpan(text: " Look\n",style: TextStyle(color: Theme.of(context).primaryColor),),
                    const  TextSpan(text: " That Suits Your"),
                    TextSpan(text: " Vibe",style: TextStyle(color: Theme.of(context).primaryColor),),
            ],
                    ),
                  ),
          );
  }


    Widget _infoSubText(BuildContext context){
          return Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05,
            ),
            child: const Text("Join Now and Unlock Exclusive Offers!",
            textAlign: TextAlign.center,
              style:TextStyle(
                color: Colors.black,
              )
            )
          );
  }
}