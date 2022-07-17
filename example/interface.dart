import 'package:codis_generator/codis_generator.dart';

/// [Output]:
// abstract class Flyable extends Breathable {
//   void doFly();
// }
void main() {
  var context = EditorContext(enableDartFormatter:  true);
  var code = Interface('Flyable',
     baseClass: 'Breathable',
     prototypes: [
       Method(name: 'doFly', returnType: 'void')
     ]
  );
  print(context.build([code]));
}