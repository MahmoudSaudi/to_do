import 'package:bloc_app/core/components/custom_size_box_height.dart';
import 'package:bloc_app/core/components/custom_text_fprm_feild.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'New task',
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              IconlyBroken.arrow_left_2,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
              ),
              CustomSizedBoxHeight(
                height: 50,
              ),
              CustomTextFormField(
                isPassword: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                label: 'New task',
                prefixIcon: IconlyBroken.document,
              ),
              CustomSizedBoxHeight(
                height: 50,
              ),
              Text(
                'Data',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
              ),
              CustomSizedBoxHeight(
                height: 50,
              ),
              CustomTextFormField(
                isPassword: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                label: 'Data',
                prefixIcon: IconlyBroken.calendar,
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
