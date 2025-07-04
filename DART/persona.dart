class Persona {
  String? nombre;
  int edad=0;
  double? estatura;
  Persona(this.nombre,this.edad,this.estatura){
  }
}
void main(){
  Persona  p;
  p= new Persona("juanito",23,1.78);
  print("Nombre: ${p.nombre}");
}