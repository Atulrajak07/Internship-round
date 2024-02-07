import 'package:flutter/material.dart';
class SecondScreenView extends StatefulWidget {
  const SecondScreenView({super.key});

  @override
  State<SecondScreenView> createState() => _SecondScreenViewState();
}

class _SecondScreenViewState extends State<SecondScreenView> {
  final validationFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final numController = TextEditingController();
  final passController = TextEditingController();
  final conPassController = TextEditingController();

  validator(){

    if(validationFormKey.currentState!.validate())
      print("$nameController.text");
    print("$passController.text");

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Form(
              key: validationFormKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 8.0, left: 8.0),
                child: Column(
                  children: [
                    // Text For looking Nice UI
                    const Text(
                      "Create A New Account ",
                      style:
                      TextStyle(fontSize: 20, fontFamily: 'JosefinSana-Bold'),
                    ),

                    const Text(
                      "Come join our community ! Let's Setup ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontFamily: 'JosefinSana-Bold'),
                    ),


                    const SizedBox(
                      height: 20,
                    ),


                    // Name TextInput
                    TextFormField(
                      controller: nameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        label: Text(
                          "Enter your name",
                          style: TextStyle(fontFamily: 'JosefinSana-Bold'),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Correct Name ';
                        }
                        return null;
                      },
                    ),


                    const SizedBox(
                      height: 15,
                    ),


                    // Email TextInput
                    TextFormField(
                      controller: nameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        label: Text(
                          "Enter your email",
                          style: TextStyle(fontFamily: 'JosefinSana-Bold'),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter the Valid Email ';
                        }
                        return null;
                      },
                    ),


                    const SizedBox(
                      height: 15,
                    ),


                    //  Number TextInput
                    TextFormField(
                      controller: nameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        label: Text(
                          "Enter Phone number",
                          style: TextStyle(fontFamily: 'JosefinSana-Bold'),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Valid  Phone number.';
                        }
                        return null;
                      },
                    ),


                    const SizedBox(
                      height: 15,
                    ),


                    //   Password TextInput
                    TextFormField(
                      controller: nameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        label: Text(
                          "Enter Password",
                          style: TextStyle(fontFamily: 'JosefinSana-Bold'),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter correct password';
                        }
                        return null;
                      },
                    ),


                    const SizedBox(
                      height: 15,
                    ),


                    //   Conform Password TextInput
                    TextFormField(
                      controller: nameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        label: Text(
                          "Enter Conform Password",
                          style: TextStyle(fontFamily: 'JosefinSana-Bold'),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter valid some password';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    ElevatedButton(
                      onPressed: (){
                        validator();
                      },

                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(Colors.white),
                        shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: const BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
                        ),

                        ),


                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                            child: Row(children: [

                              Text(' Check Validation',
                                style:TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'JosefinSana-Bold',
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
