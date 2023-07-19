import 'dart:io';

void main() {
  double altura, peso;
  int idade;

  print('--- Cálculo do IMC ---');

  // Solicitar altura
  stdout.write('Digite a altura (em metros): ');
  altura = double.parse(stdin.readLineSync()!);

  // Solicitar peso
  stdout.write('Digite o peso (em quilogramas): ');
  peso = double.parse(stdin.readLineSync()!);

  // Solicitar idade
  stdout.write('Digite a idade: ');
  idade = int.parse(stdin.readLineSync()!);

  // Calcular o IMC
  double imc = calcularIMC(altura, peso);

  // Verificar a faixa etária e exibir resultado
  if (idade < 18) {
    // Crianças/adolescentes
    print('--- Resultado ---');
    print('IMC: $imc');
    print('Faixa etária: Criança/Adolescente');
    print('Consulte um médico para avaliação.');
    vewImc(imc);
  } else if (idade >= 18 && idade < 60) {
    // Adultos
    print('--- Resultado ---');
    print('IMC: $imc');
    print('Faixa etária: Adulto');
    print('Consulte a tabela de IMC para adultos.');
    vewImc(imc);
  } else {
    // Idosos
    print('--- Resultado ---');
    print('IMC: $imc');
    print('Faixa etária: Idoso');
    print('Consulte a tabela de IMC para idosos.');
    vewImc(imc);
  }
}

double calcularIMC(double altura, double peso) {
  return peso / (altura * altura);
}

void vewImc(double imc){
  if	(imc	<	18.5)	{
    print('Abaixo	do	peso');
  }	else if	(imc	>=	18.5	&&	imc	<	24.9)	{
    print('Peso	normal	ideal');
  }	else if	(imc	>=	24.9	&&	imc	<	29.9)	{
    print('Sobrepeso');	//	>	Sobrepeso
  }	else	{
    print('Obesidade');
  }

}

