// import 'package:flutter/material.dart';
// import 'package:securecy_mobile_app/Screens/home_screen.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormBuilderState>();
//   final _secureStorage = const FlutterSecureStorage();
//   bool _isPasswordVisible = false;
//   Map<String, dynamic> initialValue = {};
//   @override
//   void initState() {
//     super.initState();
//     _loadSavedCredentials();
//   }

//   /// Load saved credentials securely
//   Future<void> _loadSavedCredentials() async {
//     final savedUsername = await _secureStorage.read(key: 'username');
//     final savedPassword = await _secureStorage.read(key: 'password');

//     setState(() {
//       initialValue = {
//         'username': savedUsername ?? '',
//         'password': savedPassword ?? '',
//       };
//     });
//   }

//   /// Save credentials securely
//   Future<void> _saveCredentials(String username, String password) async {
//     await _secureStorage.write(key: 'username', value: username);
//     await _secureStorage.write(key: 'password', value: password);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 32.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "assets/images/securecy.png",
//                   height: 100,
//                   width: 200,
//                 ),

//                 const Text(
//                   "Please fill your information below",
//                   style: TextStyle(color: Colors.black, fontSize: 18),
//                 ),
//                 const SizedBox(height: 32),
//                 FormBuilder(
//                   initialValue: initialValue,
//                   key: _formKey,
//                   child: Column(
//                     children: [
//                       //email field
//                       FormBuilderTextField(
//                         name: "username",
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white,
//                           labelText: 'Backup.patrol',
//                           labelStyle: TextStyle(color: Colors.grey),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(6),
//                             borderSide: BorderSide(color: Colors.grey),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.blueAccent,
//                               width: 3.0,
//                             ),
//                           ),
//                           alignLabelWithHint: true,
//                           prefixIcon: Icon(Icons.person, size: 30),
//                           prefixIconColor: Colors.grey,
//                         ),

//                         validator: FormBuilderValidators.compose([
//                           FormBuilderValidators.required(
//                             errorText: "Username is required",
//                           ),
//                           FormBuilderValidators.minLength(
//                             5,
//                             errorText: "Username must be at least 3 characters",
//                           ),
//                           FormBuilderValidators.maxLength(
//                             20,
//                             errorText: "Username cannot exceed 20 characters",
//                           ),
//                         ]),
//                       ),
//                       const SizedBox(height: 12),
//                       FormBuilderTextField(
//                         name: "password",
//                         obscureText: !_isPasswordVisible,
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white,
//                           labelText: "Password",
//                           labelStyle: TextStyle(color: Colors.grey),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(6),
//                             borderSide: BorderSide(color: Colors.grey),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.blueAccent,
//                               width: 3.0,
//                             ),
//                           ),
//                           alignLabelWithHint: true,
//                           prefixIcon: Icon(Icons.lock, size: 27),
//                           prefixIconColor: Colors.grey,
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               _isPasswordVisible
//                                   ? Icons.visibility
//                                   : Icons.visibility_off,
//                               color: Colors.grey,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _isPasswordVisible = !_isPasswordVisible;
//                               });
//                             },
//                           ),
//                         ),

//                         validator: FormBuilderValidators.compose([
//                           FormBuilderValidators.required(
//                             errorText: "Password is required",
//                           ),
//                           FormBuilderValidators.minLength(
//                             6,
//                             errorText: "Password must be at least 6 characters",
//                           ),
//                         ]),
//                       ),
//                       const SizedBox(height: 20),
//                       SizedBox(
//                         width: double.infinity,
//                         height: 48,
//                         child: ElevatedButton(
//                           onPressed: () async {
//                             if (_formKey.currentState?.saveAndValidate() ??
//                                 false) {
//                               final formData = _formKey.currentState!.value;
//                               final username = formData['username'];
//                               final password = formData['password'];

//                               await _saveCredentials(username, password);
//                               print(await _secureStorage.readAll());

//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(
//                                   content: Text("Signing in as $username"),
//                                   backgroundColor: Colors.green,
//                                 ),
//                               );

//                               Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => HomeScreen(),
//                                 ),
//                               );
//                             } else {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text(
//                                     'Please fix the errors before signing in',
//                                   ),
//                                   backgroundColor: Colors.redAccent,
//                                 ),
//                               );
//                             }
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blueAccent,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                           child: const Text(
//                             "Sign in",
//                             style: TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 25),
//                       SizedBox(
//                         width: 200,
//                         height: 48,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(
//                             //     builder: (context) =>
//                             //      r   // const ResetPasswordScreen(),
//                             //   ),
//                             // );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color.fromARGB(
//                               255,
//                               247,
//                               55,
//                               55,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                           child: const Text(
//                             "Reset Your Password",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isPasswordVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF1C75BC), // Blue background behind everything
//       body: Stack(
//         children: [
//           // --- White rounded container at bottom ---
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.75,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(32),
//                   topRight: Radius.circular(32),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 24,
//                   vertical: 35,
//                 ),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 20),
//                       const Text(
//                         'Welcome Back!',
//                         style: TextStyle(
//                           fontSize: 27,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       const Text(
//                         "Let's get you back to \n keeping things secure",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0xFF4B5563),
//                           fontSize: 16,
//                         ),
//                       ),
//                       const SizedBox(height: 32),

//                       // Email Field
//                       TextField(
//                         controller: _emailController,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: InputDecoration(
//                           prefixIcon: const Icon(Icons.email_outlined),
//                           hintText: 'you@example.com',
//                           labelText: 'Email Address',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),

//                       // Password Field
//                       TextField(
//                         controller: _passwordController,
//                         obscureText: !_isPasswordVisible,
//                         decoration: InputDecoration(
//                           prefixIcon: const Icon(Icons.lock_outline),
//                           labelText: 'Password',
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               _isPasswordVisible
//                                   ? Icons.visibility_off
//                                   : Icons.visibility,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _isPasswordVisible = !_isPasswordVisible;
//                               });
//                             },
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 10),

//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: TextButton(
//                           onPressed: () {},
//                           child: const Text('Forgot Password?'),
//                         ),
//                       ),
//                       const SizedBox(height: 20),

//                       // Login Button
//                       SizedBox(
//                         width: double.infinity,
//                         height: 48,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // TODO: Handle login logic
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Color(0xFF1C75BC),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           child: const Text(
//                             'Log In',
//                             style: TextStyle(fontSize: 16, color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // --- Logo at the top ---
//           Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 80),
//               child: Column(
//                 children: [
//                   Image.asset('assets/images/Layer 1 (1).png', height: 80),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:securecy_mobile_app/Screens/home_screen.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _secureStorage = const FlutterSecureStorage();
  bool _isPasswordVisible = false;
  Map<String, dynamic> initialValue = {};

  @override
  void initState() {
    super.initState();
    _loadSavedCredentials();
  }

  /// Load saved credentials securely
  Future<void> _loadSavedCredentials() async {
    final savedUsername = await _secureStorage.read(key: 'username');
    final savedPassword = await _secureStorage.read(key: 'password');

    setState(() {
      initialValue = {
        'username': savedUsername ?? '',
        'password': savedPassword ?? '',
      };
    });
  }

  /// Save credentials securely
  Future<void> _saveCredentials(String username, String password) async {
    await _secureStorage.write(key: 'username', value: username);
    await _secureStorage.write(key: 'password', value: password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C75BC), // Blue background
      body: Stack(
        children: [
          // --- White rounded container ---
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 35,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Let's get you back to \n keeping things secure",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // FormBuilder section
                      FormBuilder(
                        key: _formKey,
                        initialValue: initialValue,
                        child: Column(
                          children: [
                            // Email field
                            FormBuilderTextField(
                              name: "username",
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                prefixIcon: const Icon(TablerIcons.user),
                                hintText: 'you@example.com',
                                labelText: 'User Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                  errorText: "Username is required",
                                ),
                                FormBuilderValidators.minLength(
                                  5,
                                  errorText:
                                      "Username must be at least 5 characters",
                                ),
                                FormBuilderValidators.maxLength(
                                  20,
                                  errorText:
                                      "Username cannot exceed 20 characters",
                                ),
                              ]),
                            ),
                            const SizedBox(height: 20),

                            // Password field
                            FormBuilderTextField(
                              name: 'password',
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(TablerIcons.lock),
                                alignLabelWithHint: true,
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? TablerIcons.eye_off
                                        : TablerIcons.eye,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                  errorText: 'Password is required',
                                ),
                                FormBuilderValidators.minLength(
                                  6,
                                  errorText:
                                      'Password must be at least 6 characters',
                                ),
                              ]),
                            ),
                            const SizedBox(height: 10),

                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  // TODO: Add forgot password functionality
                                },
                                child: const Text('Forgot Password?'),
                              ),
                            ),
                            const SizedBox(height: 20),

                            // Login button
                            SizedBox(
                              width: double.infinity,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (_formKey.currentState
                                          ?.saveAndValidate() ??
                                      false) {
                                    final formData =
                                        _formKey.currentState!.value;
                                    final username =
                                        formData['username']?.toString() ?? '';
                                    final password =
                                        formData['password']?.toString() ?? '';
                                    if (username.isEmpty || password.isEmpty) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            'Please enter both username and password',
                                          ),
                                          backgroundColor: Colors.redAccent,
                                        ),
                                      );
                                      return;
                                    }
                                    await _saveCredentials(username, password);

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Signing in as $username...',
                                        ),
                                        backgroundColor: Colors.green,
                                      ),
                                    );

                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen(),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Please fix the errors before signing in',
                                        ),
                                        backgroundColor: Colors.redAccent,
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF1C75BC),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Log In',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // --- Logo on top ---
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('assets/images/Layer 1 (1).png', height: 80),
            ),
          ),
        ],
      ),
    );
  }
}
