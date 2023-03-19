import 'package:assignment05/ui/widgets/screen_background.dart';
import 'package:assignment05/ui/widgets/user_profile_widget.dart';
import 'package:flutter/material.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: Scaffold(
        body: SafeArea(child: Column(
          children: [
            UserProfileWidget(profileBackground: Colors.green, iconBackground: Colors.black54),
            Expanded(
              child: ScreenBackground(
                widget: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24,),
                        Text('Add New Task', style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                        const SizedBox(height: 16,),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Subject',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        const SizedBox(height: 16,),
                        TextFormField(
                          maxLines: 5,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Descriptions',
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
                      ],
                    ),
                  ),
                ),
              )
            )
          ],
        )),
      ),
    );
  }
}
