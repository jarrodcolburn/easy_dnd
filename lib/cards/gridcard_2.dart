import 'package:easy_dnd/state_management/inherited_widget_class.dart';
import 'package:easy_dnd/state_management/model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class GridCardTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GridCardTwoState();
  }
}

class GridCardTwoState extends State<GridCardTwo> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final stream = StatusInheritedWidget.of(context).inheritedStatusStream;
    return ScopedModel<AppModel>(
      model: AppModel(),
      child: ScopedModelDescendant<AppModel>(
        builder: (context, child, model) {
          return Card(
            color: Color.fromARGB(255, 3, 169, 244),
            elevation: 5.0,
            child: InkWell(
              splashColor: Colors.blueGrey,
              onTap: () {
                setState(() {
                  pressed = !pressed;
                });
                pressed ? model.alarmsOnlyOn() : model.dndOff();
              },
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: StreamBuilder<String>(
                    stream: stream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if (snapshot.data
                                .toString()
                                .contains('No Interruptions Accepted') ||
                            snapshot.data.toString().contains(
                                'No Interruptions Except Priority Ones')) {
                          return Text(
                            'No Alarms',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                            textAlign: TextAlign.center,
                          );
                        } else if (snapshot.data
                            .toString()
                            .contains('No Interruptions Except Alarms')) {
                          return Text(
                            'No Interruptions Except Alarms',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                            textAlign: TextAlign.center,
                          );
                        }
                      }
                      return Text(
                        'Alarms are working',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                        textAlign: TextAlign.center,
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}