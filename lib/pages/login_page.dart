import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zudio/widgets/costum%20_form.dart';
import 'package:zudio/widgets/custom_button.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context,
      ),
    );
  }

    PreferredSizeWidget _appBar(){
      return AppBar();
    }
      
      Widget _buildUI(BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.04,
          ) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerText(),
              _loginForm(context,),
              _socialButton(context,),
              _registerLink(context,),

            ],
          ),
        );
      }

      Widget _headerText(){
        return const Text.rich(TextSpan( children:
        [TextSpan(text:"Welcome Back!!\n",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                  )
          ),
          TextSpan(text:"We’ve been waiting for you!",
          style:TextStyle(
                color: Colors.black38,
                fontSize: 10,
          ),
          ),
        ],
      ),
    );
      }

    Widget _loginForm(
      BuildContext context,
    ) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height * 0.02),
        height : MediaQuery.sizeOf(context).height * 0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomFormField(
            label: "Email",
          ),

          const CustomFormField(
            label: "Password",
          ),
          CustomBottom(
            height: MediaQuery.sizeOf(context).height * 0.05, 
            width: MediaQuery.sizeOf(context).width ,
            isprimary: true,
              onPressed: (){}, 
              text: "Login",
              ),
              const Text (
                "Forgot Password",
                style: TextStyle(
                  fontSize: 10,
                  color:Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
                ),
        ],
      ),
      );

    }

    Widget _socialButton(BuildContext context) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.10,
          width : MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Or Loign with",
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize:10,
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SocialLoginButton(
                height: MediaQuery.sizeOf(context).height *0.06,
                width: MediaQuery.sizeOf(context).width *0.45,
                text:"Google",
                fontSize:10,
                imageWidth: 20,
                buttonType:SocialLoginButtonType.google,
                onPressed: (){},
                ),

                SocialLoginButton(
                height: MediaQuery.sizeOf(context).height *0.06,
                width: MediaQuery.sizeOf(context).width *0.45,
                text:"Facebook",
                fontSize:10,
                imageWidth: 20,
                buttonType:SocialLoginButtonType.facebook,
                onPressed: (){},
                )

            ],)
          ],
        ),
        );
    }

    Widget _registerLink(

      BuildContext context,
    ){
      return Expanded(child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                  ),
                children: [
                const TextSpan(
                  text:"Don't have an account?",
                  style:  TextStyle(
                    color: Colors.black38,
                  )
                  ),
                TextSpan(
                  text:"Sign Up",
                  style: TextStyle(
                    color:Theme.of(context).primaryColor,
                  ),
                  ),
                  ],
                  ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}