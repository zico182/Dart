import 'dart:io';
import 'dart:math';

void main(){
    final random = Random();
    final numberGenerate = random.nextInt(100) +1;

    const attemps = 10;
    var varAttemps = 0;

    print ('Debes ingresar un número del 1 al 100, tienes $attemps intentos máximos' );
    while(varAttemps < attemps){
        stdout.write('Ingrese el número');
        final input = stdin.readLineSync();
        final guess = int.tryParse(input ?? '');
        if (guess == null){
            print ('es null');
            continue;
        }
        varAttemps ++;
    
        if (guess < numberGenerate){
            print('el número random es mayor');
        }
        else if(guess > numberGenerate){
            print ('el número random es menor');
        }
        else{
            print ('felicidades, atinaste');
            return;
        }
    }
    if (attemps == varAttemps){
        print ('Numeros maximos de intentos');
      
    }
}