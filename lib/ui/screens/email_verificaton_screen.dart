import 'package:flutter/material.dart';
import 'package:assignment05/ui/widgets/screen_background.dart';

class EmailVarificationScreen extends StatelessWidget {
  const EmailVarificationScreen({Key? key}) : super(key: key);

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
                    'Your Email Address',
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
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Icon(Icons.arrow_circle_right_outlined),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(10.00),
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
