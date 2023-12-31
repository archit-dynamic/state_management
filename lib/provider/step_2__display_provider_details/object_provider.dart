import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:state_management/provider/step_2__display_provider_details/cheap_object.dart';
import 'package:state_management/provider/step_2__display_provider_details/expensive_object.dart';
import 'package:uuid/uuid.dart';

class ObjectProvider extends ChangeNotifier {
  late String id;
  late CheapObject _cheapObject;
  late StreamSubscription _cheapObjectStreamSub;
  late ExpensiveObject _expensiveObject;
  late StreamSubscription _expensiveObjectStreamSub;

  CheapObject get cheapObject => _cheapObject;

  ExpensiveObject get expensiveObject => _expensiveObject;

  ObjectProvider()
      : id = const Uuid().v4(),
        _cheapObject = CheapObject(),
        _expensiveObject = ExpensiveObject() {
    start();
  }

  @override
  void notifyListeners() {
    id = const Uuid().v4();
    super.notifyListeners();
  }

  void start() {
    _cheapObjectStreamSub = Stream.periodic(
      const Duration(
        seconds: 1,
      ),
    ).listen((_) {
      _cheapObject = CheapObject();
      notifyListeners();
    });
    _expensiveObjectStreamSub = Stream.periodic(
      const Duration(
        seconds: 10,
      ),
    ).listen((_) {
      _expensiveObject = ExpensiveObject();
      notifyListeners();
    });
  }

  void stop() {
    _cheapObjectStreamSub.cancel();
    _expensiveObjectStreamSub.cancel();
  }
}
