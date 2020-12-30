import 'package:flutter/material.dart';

Widget cardPost(templateid, fill) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Text(
              templateid.toString(),
              style: TextStyle(fontSize: 28),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                fill,
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
