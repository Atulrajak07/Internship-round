import 'package:flutter/material.dart';
import 'package:trial_api/secondpage/secondview.dart';
class FirstScreenView extends StatefulWidget {
  const FirstScreenView({super.key});

  @override
  State<FirstScreenView> createState() => _FirstScreenViewState();
}

class _FirstScreenViewState extends State<FirstScreenView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: (){
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const SecondScreenView()));
            },

            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: const BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(15),
              ),

              ),


            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                  child: Row(children: [

                    Text('Click To Navigate',
                      style:TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'JosefinSana-Bold',
                      ),
                    ),
                  ]),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
