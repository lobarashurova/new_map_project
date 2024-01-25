import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_map_project/lang/locale_keys.g.dart';
import 'package:new_map_project/presentation/screens/register/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<String> items = [
    LocaleKeys.uzbek.tr(),
    LocaleKeys.english.tr(),
    LocaleKeys.russian.tr(),
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: width / 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              width: 100,
              height: 100,
              "assets/images/find.png",
              fit: BoxFit.contain,
            ),
            Text(
              "Find Support",
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 30),
            )
          ],
        ),
        SizedBox(
          height: width / 3,
        ),
        Text(
          LocaleKeys.language.tr(),
          style: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 15),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 300,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.grey)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                LocaleKeys.language,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (String? value) async {
                setState(() {
                  selectedValue = value;
                });
                if (value == LocaleKeys.uzbek.tr()) {
                  await context.setLocale(const Locale("uz"));
                } else if (value == LocaleKeys.english.tr()) {
                  await context.setLocale(const Locale("en"));
                } else {
                  await context.setLocale(const Locale("ru"));
                }
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                width: 140,
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RegisterScreen()));
          },
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(35))),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
