import 'package:flutter/material.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../teamplate/base_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding:const  EdgeInsets.all(8),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Login'),
                ),
                validator: (value) => 'error',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Botão'),
          ),
        ],
      ),
    );
  }
}
