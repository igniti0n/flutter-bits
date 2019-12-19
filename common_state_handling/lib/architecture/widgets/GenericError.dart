

import 'package:flutter/material.dart';

import '../RequestBloc.dart';

class GenericError extends StatelessWidget {
  final bool retryEnabled;
  final Function() onRetry;
  final RequestError error;

  const GenericError({Key key, this.error, this.retryEnabled, this.onRetry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.error, color: Colors.red, size: 50),
          Text(error.message),
          if (retryEnabled)
            FlatButton(onPressed: () {
              assert(onRetry != null, "Widget should implement onRetry callback");
              onRetry();
            }, child: Text("RETRY"),)
        ],
      ),
    );
  }
}