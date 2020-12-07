import 'package:flutter/material.dart';
import 'package:bizbir/models/job.dart';

class BizbirModel extends ChangeNotifier {
  bool _visible = false;
  int _active = 0;
  List<JobModel> _jobs;

  get visible => _visible;
  get active => _active;
  get jobs => _jobs;

  void changeState() {
    _visible = !_visible;
    notifyListeners();
  }

  void setActive(int index) {
    _active = index;
    notifyListeners();
  }

  void setJobs(List<JobModel> jobs) {
    _jobs = jobs;
    notifyListeners();
  }
}
