import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/widgets/custom_drop_down.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:helpcar/src/constants/colors.dart';
import '../routes/app_router.gr.dart';

class AddVehicleScreen extends StatefulWidget {
  const AddVehicleScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AddVehicleScreen> createState() => AddVehicleScreenState();
}

class AddVehicleScreenState extends State<AddVehicleScreen> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  String email = '';
  String password = '';
  String? selectedValue;
  bool _isLoggedIn = false;
  Map _userObj = {};
  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  final _status = ["Auto", "Manual"];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.navigateBack();
          },
        ),
        iconTheme: IconThemeData(color: defaultColorScheme.primary),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Image(
                  image: AssetImage('lib/assets/images/logo.png'),
                  fit: BoxFit.cover),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Add Your Vehicles',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 3.0, left: 5),
                      child: Text(
                        'Vehicle Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    CustomDropdownButton2(
                      hint: 'Select Item',
                      dropdownItems: items,
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 3.0, left: 5),
                      child: Text(
                        'Manufacturer',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            password = 'null';
                          });
                          return ('Please enter your password');
                        } else if (value.length < 8) {
                          setState(() {
                            password = 'null';
                          });
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                      onSaved: (value) => setState((() => password = value!)),
                      maxLines: 1,
                      decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.no_accounts),
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 3.0, left: 5),
                      child: Text(
                        'Model',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            password = 'null';
                          });
                          return ('Please enter your password');
                        } else if (value.length < 8) {
                          setState(() {
                            password = 'null';
                          });
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                      onSaved: (value) => setState((() => password = value!)),
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.lock),
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 3.0, left: 5),
                      child: Text(
                        'Manufactured Year',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            password = 'null';
                          });
                          return ('Please enter your password');
                        } else if (value.length < 8) {
                          setState(() {
                            password = 'null';
                          });
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                      onSaved: (value) => setState((() => password = value!)),
                      maxLines: 1,
                      decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.no_accounts),
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 3.0, left: 5),
                      child: Text(
                        'Power Source',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    CustomDropdownButton2(
                      hint: 'Select Item',
                      dropdownItems: items,
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 3.0, left: 5),
                      child: Text(
                        'Transmission  Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    RadioGroup<String>.builder(
                      direction: Axis.horizontal,
                      groupValue: _verticalGroupValue,
                      horizontalAlignment: MainAxisAlignment.spaceAround,
                      onChanged: (value) => setState(() {
                        _verticalGroupValue = value ?? '';
                      }),
                      items: _status,
                      textStyle: TextStyle(
                        fontSize: 15,
                        color: defaultColorScheme.onBackground,
                      ),
                      itemBuilder: (item) => RadioButtonBuilder(
                        item,
                      ),
                      fillColor: defaultColorScheme.primary,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   _formKey.currentState?.save();
                  //   final message = 'Welcome $email!';
                  //   FirebaseAuth.instance
                  //       .signInWithEmailAndPassword(
                  //           email: email, password: password)
                  //       .then((value) {
                  //     print('Logged In!');
                  //     context.router.push(const LandingScreen());
                  //   }).onError((error, stackTrace) {
                  //     print("Login Failed: $error");
                  //   });
                  // }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(85, 15, 85, 15),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Add More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   _formKey.currentState?.save();
                  //   final message = 'Welcome $email!';
                  //   FirebaseAuth.instance
                  //       .signInWithEmailAndPassword(
                  //           email: email, password: password)
                  //       .then((value) {
                  //     print('Logged In!');
                  //     context.router.push(const LandingScreen());
                  //   }).onError((error, stackTrace) {
                  //     print("Login Failed: $error");
                  //   });
                  // }
                  context.router.navigate(const HomeBase());
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
