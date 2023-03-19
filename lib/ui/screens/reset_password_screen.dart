import 'package:flutter/material.dart';
import 'package:assignment05/ui/widgets/screen_background.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
                    'Reset Password',
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
                    'Minimum length password 8 character with Letter and number combination',
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
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Confirm Password',
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
                    child: Text('Confirm'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(14.00),
                    ),
                  ),
                ),
                SizedBox(
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
