import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dating_app/components/welcomescreen/bloc/welcomescreen_bloc.dart';
import 'package:dating_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final WelcomescreenBloc welcomescreenBloc = locator.get<WelcomescreenBloc>();
    welcomescreenBloc.add(WelcomescreenInitialEvent());
    return Scaffold(
      body: BlocListener<WelcomescreenBloc, WelcomescreenState>(
        bloc: welcomescreenBloc,
        listenWhen: (previous, current) => current is WelcomesreenActionState,
        listener: (context, state) {
          if(state is WelcomescreenNavigateToLoginScreen){
            Navigator.pushReplacementNamed(context, "/login");
          }
          if(state is WelcomescreenNavigatetoSignUpScreen){
            Navigator.pushReplacementNamed(context, "/signup");
          }
          else{
            Container(
              child: const Text("An eror occured, please try again later. "),
            );
          }
     
         
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 238, 118, 118),
                Colors.pink,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Spacer(),
                const Text("Welcome to Connex",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                    TypewriterAnimatedText('Only dating app you need',
                        speed: const Duration(milliseconds: 100)),
                    TypewriterAnimatedText('Connect with people around you',
                        speed: const Duration(milliseconds: 100)),
                    TypewriterAnimatedText('Find your perfect match',
                        speed: const Duration(milliseconds: 100)),
                  ]),
                ),
                const Spacer(),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          welcomescreenBloc.add(WelcomescreenLoginButtonNavigateEvent());

                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xFFD6426C),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      OutlinedButton(
                        onPressed: () {
                         welcomescreenBloc.add(WelcomescreenSignUpButtonNavigateEvent());
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
