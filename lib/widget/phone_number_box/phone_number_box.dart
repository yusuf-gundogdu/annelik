import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../data/state_data.dart';
import '../../utils/color.dart';

class TxtPhoneNumber extends StatelessWidget {
  TxtPhoneNumber({
    Key? key,
    required this.number,
  }) : super(key: key);

  final PhoneNumber number;
  final getXController = Get.put(StateData());

  @override
  Widget build(BuildContext context) {
    var getSmsValue = Get.put(StateData());

    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
        if (value == true) {
          getXController.phoneNumberController(value);
          FocusManager.instance.primaryFocus?.unfocus();
        } else {
          getXController.phoneNumberController(value);
        }
      },
      selectorConfig: const SelectorConfig(
        showFlags: false,
        selectorType: PhoneInputSelectorType.DIALOG,
        setSelectorButtonAsPrefixIcon: true,
        leadingPadding: 10,
      ),
      isEnabled: true,
      textStyle: TextStyle(color: purple, fontSize: 18.0, fontFamily: 'Poppins'),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      textFieldController: getSmsValue.phoneNumber,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputBorder: const OutlineInputBorder(),
      onSaved: (PhoneNumber number) {
        print('On Saved: $number');
      },
      selectorTextStyle: TextStyle(color: purple, fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'Poppins'),
      initialValue: number,
      formatInput: false,
      inputDecoration: InputDecoration(
        contentPadding: const EdgeInsets.all(25.0),
        border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
        focusedBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
        enabledBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
        errorBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
        disabledBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20.0)), borderSide: BorderSide(color: purple)),
        filled: true,
        fillColor: Colors.white,
        hintText: "*** *** ** ** ",
        hintStyle: TextStyle(color: purple, fontSize: 16, height: 1.1,fontFamily: 'Poppins'),


      ),
    );
  }
}
