import 'package:baselib/common/parameters.dart';
import 'package:flutter/src/widgets/framework.dart';

abstract class BaseBloc {
  BuildContext context;
  Parameters parameters;
  void initState();
  void dispose();


}
