import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_study/src/controller/count_controller_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Provider',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Consumer<ConuntControllerWithProvider>(builder: (_, snapshot, child) {
            return Text(
              '${snapshot.count}',
              style: TextStyle(
                fontSize: 50,
              ),
            );
          }),
          TextButton(
            onPressed: () {
              Provider.of<ConuntControllerWithProvider>(context, listen: false)
                  .increse();
            },
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
