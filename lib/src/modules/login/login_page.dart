import 'package:flutter/material.dart';

import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenShortestSide = context.screenShortestSide;
    return Scaffold(
      backgroundColor: context.colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenShortestSide * .5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/lanche.png',
                    
                  ),
                  fit: BoxFit.cover,
                ),
                
              ),
            ),
          ),
          Container(
            height: screenShortestSide * .5,
            padding: EdgeInsets.only(top: context.percentHeight(.1),),
            child: Image.asset('assets/images/logo.png'),
          )
        ],
      ),
    );
  }
}
