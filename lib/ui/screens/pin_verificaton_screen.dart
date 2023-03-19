import 'package:flutter/material.dart';
import 'package:assignment05/ui/widgets/screen_background.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVarificationScreen extends StatelessWidget {
  const PinVarificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  child: Text(
                    'PIN Verification',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  child: Text(
                    'A 6 digit verification pin will send to your email address',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 24,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Colors.black12
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),

                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Verify"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(14.00),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have account?"),
                    TextButton(
                      onPressed: (){},
                      child: const Text('Sign in', style: TextStyle(color: Colors.green)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
