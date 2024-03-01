import 'package:flutter/material.dart';
import 'package:todo_nadi_test/utils/common/styles/spacing_styles.dart';
import 'package:todo_nadi_test/utils/constants/sizes.dart';

final addTodoKey = UniqueKey();

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TextField(
                key: addTodoKey,
                decoration: const InputDecoration(
                  labelText: 'What do we need to do?',
                ),
                onSubmitted: (value) {
                  // ref.read(todoListProvider.notifier).add(value);
                  // newTodoController.clear();
                },
              ),
              const SizedBox(
                height: TSizes.md,
              ),
              Material(
                color: Colors.white,
                elevation: 6,
                child: Focus(
                    child: ListTile(
                  onTap: () {},
                  leading: Checkbox(value: false, onChanged: (checked) {}),
                  title: const Text('todo aa'),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
