import 'animal.dart';

class  Gato extends Animal{
  @override
  void dormir(){
    print('El gato duerme');
  }
}
void main(){
  final gato = Gato();
  gato.dormir();
}