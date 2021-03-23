import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int value1 = 0;
  @observable
  int value2 = 0;

  @computed
  int get sum => value1 + value2;

  @action
  void incrementValue1() => value1++;
  @action
  void incrementValue2() => value2++;
}
