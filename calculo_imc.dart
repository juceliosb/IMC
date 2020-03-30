import 'dart:io';

main(){
  calculoImc();
  
}
// Programa que calcula o IMC indice de massa corporea.
calculoImc(){
  print("DIGITE SEU PESO:");
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);

  print("DIGITE SUA ALTURA:");
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);
  
  double imc = calcImcExpr(peso, altura);

  imprimirResultado(imc);
}
//fução que recebe  peso e a altura e retorna o IMC.
double calcImcExpr(int peso, double altura){
  return peso / (altura * altura);
}
//Imprime o resultado baseado no IMC de uma tabela de nutrição
imprimirResultado(double imc){

  print("==========");

  if(imc < 18.5){
    print("Abaixo do peso");
  }else if(imc > 18.5 && imc < 24.9){
    print("Peso normal");
  }else if(imc > 25 && imc < 29.9){
    print("Peso normal");
  }else if(imc > 30 && imc < 34.9){
    print("Peso normal");
  }else if(imc > 40 && imc < 39.9){
    print("Peso normal");
  }else{
    print("Obesidade grau 3");
  }
}