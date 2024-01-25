import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:new_map_project/lang/locale_keys.g.dart';
import 'package:new_map_project/presentation/screens/map_screen/MapScreen.dart';
import 'package:new_map_project/presentation/screens/register/bloc/register_screen_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../data/enum/Status.dart';
import '../../../data/model/source/remote/request/user/UserRequest.dart';
import '../../widget/SignUpWidgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var firstNameController = TextEditingController();
  var secondNameController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var resetPasswordController = TextEditingController();
  var maskFormatter = MaskTextInputFormatter(
      mask: '+(998)##-###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  final bloc = RegisterScreenBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<RegisterScreenBloc, RegisterScreenState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 100),
                    width: 250,
                    height: 250,
                    child: Image.asset(
                      "assets/images/img.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Sign up",
                    style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildRegisterText(LocaleKeys.firstname.tr()),
                        buildRegisterInput(
                            "Enter your first name", firstNameController),
                        buildRegisterText(LocaleKeys.lastname.tr()),
                        buildRegisterInput(
                            "Enter your last name", secondNameController),
                        buildRegisterText(LocaleKeys.phone.tr()),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              color: CupertinoColors.systemGrey6,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: CupertinoColors.tertiarySystemFill)),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  inputFormatters: [maskFormatter],
                                  controller: phoneController,
                                  decoration: const InputDecoration(
                                    hintText: "+998 (_) __ -__-__",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        buildRegisterText(LocaleKeys.password.tr()),
                        buildRegisterInput(
                            "Enter your password", passwordController),
                        buildRegisterText(LocaleKeys.conPas.tr()),
                        buildRegisterInput("Enter your confirm password",
                            resetPasswordController),
                        Container(
                          width: double.infinity,
                          height: 45,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              if (passwordController.text ==
                                      resetPasswordController.text &&
                                  secondNameController.text.isNotEmpty &&
                                  firstNameController.text.isNotEmpty) {
                                bloc.add(RegisterUser(UserRequest(
                                    firstNameController.text,
                                    secondNameController.text,
                                    phoneController.text,
                                    passwordController.text)));

                                pushNewScreen(
                                  context,
                                  screen: const MapScreen(),
                                  withNavBar: false,
                                );
                                var snackbar = const SnackBar(
                                    content: Text("Successfully registered!"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              } else {
                                var snackbar = const SnackBar(
                                    content: Text(
                                        "pay attention in filling spaces!"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              }
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black87)),
                            child: state.status == Status.LOADING
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Save",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white, fontSize: 18),
                                  ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
