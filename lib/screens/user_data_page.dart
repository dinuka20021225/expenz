import 'package:expense/utils/colors.dart';
import 'package:expense/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class UserDataPage extends StatefulWidget {
  const UserDataPage({super.key});

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  //---remeber me -----//
  bool _remmeberMe = false;

  //-- form key for form favidation --//
  final _formKey = GlobalKey<FormState>();

  //-- controlles for text form fields --//
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter your \nPersonal Details",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //---- form field user name
                    TextFormField(
                      controller: _userNameController,
                      validator: (value) {
                        //-- checking username is empty --//
                        if (value!.isEmpty) {
                          return "Please enter your name";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          color: grayColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: grayColor,
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: purpuleColor,
                            width: 3,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: redColor,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //---- form field email
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        String title = "Please enter your email";
                        //-- checking email is empty --//
                        if (value!.isEmpty) {
                          return title;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: grayColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: grayColor,
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: purpuleColor,
                            width: 3,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: redColor,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ), //---- form field password
                    TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      validator: (value) {
                        //-- checking password is empty --//
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: grayColor,
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: grayColor,
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: purpuleColor,
                            width: 3,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: redColor,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //---- form field confirm password
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      validator: (value) {
                        //-- checking confirm psword is empty --//
                        if (value!.isEmpty) {
                          return "Please enter the same password";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          color: grayColor,
                        ),
                        suffixIcon: Icon(Icons.visibility),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: grayColor,
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: purpuleColor,
                            width: 3,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: redColor,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //---- Remember me -----//
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Remember Me for the next time",
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: CheckboxListTile(
                            activeColor: purpuleColor,
                            value: _remmeberMe,
                            onChanged: (value) {
                              setState(() {
                                _remmeberMe = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //----- submit button -----//
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          String userName = _userNameController.text;
                          String email = _emailController.text;
                          String password = _passwordController.text;
                          String confirmPassword =
                              _confirmPasswordController.text;

                          //print("$userName, $email, $password, $confirmPassword");
                        }
                      },
                      child: const CustomButton(
                        bgColor: purpuleColor,
                        title: "Next",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
