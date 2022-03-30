import 'package:ecommers/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constant.dart';
import '../../../../../utils/default_button.dart';
import '../../../../../utils/size_config.dart';
import '../../../sign_in/views/component/custom_suffix.dart';
import '../../../sign_in/views/component/form_error.dart';

class CompleteProfileForms extends StatefulWidget {
  const CompleteProfileForms({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForms> createState() => _CompleteProfileFormsState();
}

class _CompleteProfileFormsState extends State<CompleteProfileForms> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName, lastName, phoneNumber, address;

  void addError(String error) {
    if (!errors.contains(error))
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        errors.add(error);
      });
  }

  void removeError(String error) {
    if (errors.contains(error))
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressField(),
          formError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  //Go to otp Screen
                  Get.toNamed(Routes.OTP);
                }
              })
        ],
      ),
    );
  }

  TextFormField buildAddressField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return null;
      },
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // ignore: prefer_const_constructors
        suffixIcon: customSuffix(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.number,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // ignore: prefer_const_constructors
        suffixIcon: customSuffix(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your First Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // ignore: prefer_const_constructors
        suffixIcon: customSuffix(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Last Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // ignore: prefer_const_constructors
        suffixIcon: customSuffix(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
