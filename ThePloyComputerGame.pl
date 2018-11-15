#!/usr/bin/perl
#use feature "switch";
 use Switch;
MENUP:
print"\t THE PLOY GAME\n\n En el juego The Ploy tienes un tablero con asteroides (o) y tu mision 
es lanzar unos contra otros asteroides (x) para que al golpearlos, sacarlos del tablero y dejar el tablero vacio.
Cuando lo consigas pasaras a la siguiente mision.
\nNo puedes mover los asteroides hacia algun lugar vacio, siempre hacia donde este un asteroide(x). Piensa bien antes de lanzar.
\nResuelve este puzzle de pensar lanzamientos.
Para cada moviento tienes solo 3 intentos para acertar, si te llegas a equivocar mas de 3 veces perderas";
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) ); #Se dan las instrucciones y la hora de inicio  con el strftime y localtime
print"\t"; #Opciones a realizar 
print"\n\n\n1. Jugar.";
print"\n2.Salir.";
print"\n3.Niveles.";
print"\n4.Creditos y agradecimientos";
print"\n\nIntroduzca opcion (1-4):";
use POSIX qw/ strftime /; #Comando de el horario


do{ chomp ($op = <>); #Es el que da a inicio a la opcion seleccionada 
while($op !=1 && $op!=2 && $op!=3 && $op!=4) {print"Esa opcion no existe.\n\n Vuelve a intentando:"; chomp ($op = <>);} #Verificacion de que este bien elegido
if($op == 2) {system("cls"); print "OKEY BYE"; exit; #Salida del juego
}
if($op == 3) {system("cls"); #Borrar pantalla 
NIVELES: print strftime( "\t\t Tiempo:\t%H:%M:%S\n", localtime(time) ); 
print"LISTA DE NIVELES:\n
1. Nivel 1
2. Nivel 2
3. Nivel 3
4. Nivel 4
5. Nivel 5 (FINAL)
6. Exit.
7. Menu Principal
selecciona un nivel:";
chomp ($nivel = <>);
while($nivel !=1 && $nivel!=2 && $nivel!=3 && $nivel!=4 && $nivel!=5 && $nivel!=6 && $nivel!=7) {print"Esa opcion no existe.\n\n Vuelve a intentando:"; chomp ($nivel = <>);}
switch ($nivel){ #Comando que se usa para dar la opcion del nivel a elegir
 case 1 { system("cls"); print"EMPECEMOS\tNIVEL 1\n\t El juego usa un tablero de 9x9 
y tu ficha a mover seran los asteroides (la o) y debes de sacar del tablero los planetas (la x)\n\n";
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla = "
.-----------------------------------|
|   |   |   | o |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
              x
";
my $taabla = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 

print($tabla);}

if($time>=31 && $time<=59  )
 { print($taabla);}

print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){ if($int==3){ print"JAJAJA, haz perdido en el nivel mas facil, adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2){
 system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla2"); } print"FELICIDADES HAS COMPLETADO EL NIVEL 1\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Niveles, 2= Menu Principal, 3=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto NIVELES} if($jugar==2){goto MENUP}
if($jugar ==3) { system("cls");
print "OKEY BYE"; exit;}} 
} #Fin a la opcion seleccionada
 case 2 { system("cls");
print"\t Comencemos el nivel 2\n\t El juego usa un tablero de 9x9 
y tu ficha a mover seran los asteroides (la o) y debes de sacar del tablero los planetas (la x)\n\n";
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla_2 = "
.-----------------------------------|
|   |   |   | o |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla2_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
              x
";
my $tabla2_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $taabla_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 

print($tabla_2);}

if($time>=31 && $time<=59  ){
 print($taabla_2);}

print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){ if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla2_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior  "); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla2_3"); } print"FELICIDADES HAS COMPLETADO EL NIVEL 2\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Niveles, 2= Menu Principal, 3=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto NIVELES} if($jugar==2){goto MENUP}
if($jugar ==3) { system("cls");
print "OKEY BYE"; exit;}}  
 }
 case 3 {system("cls");
print"\t Comencemos el nivel 3\n\t El juego usa un tablero de 9x9 
y tu ficha a mover seran los asteroides (la o) y debes de sacar del tablero los planetas (la x)\n\n";
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | o |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $tabla_3_1 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | o |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
      x
";
my $tabla3_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $tabla3_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   | o |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
                              x
";
my $tabla3_4 = "
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   |   | o |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $taabla_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | o |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | x |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $taabla_3_1 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   |x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | x |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $taabla_3_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | x |   | o |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
                              x
";
my $taabla3_3 = "
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   |   |   |   |   |   | o |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $taabla_3_8 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   | o |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
                      x 
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 
print($tabla_3);
print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: ");$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 && $mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_3_1"); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_3);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla3_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla3_3"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==3)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla3_4");} print"FELICIDADES HAS COMPLETADO EL NIVEL 3\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Niveles, 2= Menu Principal, 3=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto NIVELES} if($jugar==2){goto MENUP}
if($jugar ==3) { system("cls");
print "OKEY BYE"; exit;}} 
}

if($time>=31 && $time<=59  ){
 print($taabla_3);
 print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: ");$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 && $mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla_3_8"); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($taabla_3);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla_3_1"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla_3_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==3)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla3_3");} print"FELICIDADES HAS COMPLETADO EL NIVEL 3\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Niveles, 2= Menu Principal, 3=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto NIVELES} if($jugar==2){goto MENUP}
if($jugar ==3) { system("cls");
print "OKEY BYE"; exit;}} 
}
}
case 4 {system("cls");
print"\n\n\t Comencemos el nivel 4\n\t El juego usa un tablero de 9x9 
y tu ficha a mover seran los asteroides (la o) y debes de sacar del tablero los planetas (la x)\n\n";
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla_5 = "
.-----------------------------------|
|   |   |   | x |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_5_1 = "
              x
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   | o |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_5_2 = "
              
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x            
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_5_3 = "
              
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   | o |   |              
|-----------------------------------|
| x |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
                              x    
";
my $tabla_5_4 = "
              
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   |   | o |   |   |   |   |   |   |              
 |-----------------------------------|
 | x |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   | x |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $tabla_5_5 = "
              
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   | o |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
          x                       
";
my $tabla_5_6 = "
              
.-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   | o |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 ";
 my $taabla_5 = "
.-----------------------------------|
|   |   |   | x |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 

print($tabla_5);}

if($time>=31 && $time<=59  ){
 print($taabla_5);}
print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); $int=1;
chomp ($mov = <>); if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=1){ if($int==3){ print"JAJAJA, haz perdido en el nivel mas facil, adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>); if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==1){
 system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_1"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior"); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_3"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_4"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_5"); }
 print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); $int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_6"); } 
print"FELICIDADES HAS COMPLETADO EL NIVEL 4\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Niveles, 2= Menu Principal, 3=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto NIVELES} if($jugar==2){goto MENUP}
if($jugar ==3) { system("cls");
print "OKEY BYE"; exit;}} 
}
case 5 {
system("cls");
print"\t Comencemos el nivel 5 (FINAL)\n\t El juego usa un tablero de 9x9 
y tu ficha a mover seran los asteroides (la o) y debes de sacar del tablero los planetas (la x)\n\n";
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla_4 = "
.-----------------------------------|
|   |   |   |   | x |   |   |   |   |               
|-----------------------------------|
| x |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   | o |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_1 = "
                  x
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
| x |   |   |   | o |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_2 = "
                  
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
| x |   |   |   |   |   |   | o |   | x             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_3 = "
                  
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
x|   | o |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   | x |              
 |-----------------------------------|
 |   | x |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $tabla_4_4 = "
                  
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | o |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
      x
";
my $tabla_4_5 = "
                  
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   |x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_no2_1 = "
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
x|   | o |   |   |   |   |   |   | x |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   | x |              
 |-----------------------------------|
 |   | x |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $tabla_4_no2_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_no2_3_1 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | o |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
      x
";
my $tabla_4_no2_3_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   |x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_no2 = "
 .-----------------------------------|
 |   |   |   |   | x |   |   |   |   |               
 |-----------------------------------|
 | x |   |   |   |   |   |   |   | x |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   | x |              
 |-----------------------------------|
x|   |   | o |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $taabla_4 = "
.-----------------------------------|
|   |   |   |   | x |   |   |   |   |               
|-----------------------------------|
| x |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   | o |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 

print($tabla_4);
print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=1 && $mov !=3 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_4_no2"); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_4);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
}
while($mov !=1 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==1)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_4_1"); } 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=3 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
{
if($mov==3){
{ {
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_1)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}{
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_2); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_4_no2_1);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}}}
if($mov==2){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print( $tabla_4_no2_3_1 );}} 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior"); 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_3_2)}
print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n te regresamos a donde te equivocaste por primera vez en el nivel\n.";
print($tabla_4_1); print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_2)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_3)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_4)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior"); 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_5)} print"FELICIDADES HAS COMPLETADO EL ULTIMO NIVEL\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Niveles, 2= Menu Principal, 3=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto NIVELES} if($jugar==2){goto MENUP}
if($jugar ==3) { system("cls");
print "OKEY BYE"; exit;}} 
}
}
}
}

if($time>=31 && $time<=59  ){ 
print($taabla_4);
print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=1){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==1)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_4_1"); } 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior"); 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=3 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
{
if($mov==3){
{ {
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_1)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}{
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_2); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_4_no2_1);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}}}
if($mov==2){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print( $tabla_4_no2_3_1 );}} 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior"); 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_3_2)}
print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n te regresamos a donde te equivocaste por primera vez en el nivel\n.";
print($tabla_4_1); print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_2)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_3)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior ");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_4)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu anterior "); 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto NIVELES} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_5)} print"FELICIDADES HAS COMPLETADO EL ULTIMO NIVEL\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Niveles, 2= Menu Principal, 3=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto NIVELES} if($jugar==2){goto MENUP}
if($jugar ==3) { system("cls");
print "OKEY BYE"; exit;}}  
}
}
}
}
}
 case 6 { 
 system("cls"); print "OKEY BYE"; exit;}
 case 7 {
 goto MENUP;}
 }
 }
if ($op == 1) {
system("cls"); print"EMPECEMOS\tNIVEL 1\n\t El juego usa un tablero de 9x9 
y tu ficha a mover seran los asteroides (la o) y debes de sacar del tablero los planetas (la x)\n\n
Recuerda que para cada moviento tienes solo 3 intentos para acertar, si te llegas a equivocar mas de 3 veces perderas";
my @array2D=([$i],[$j]); #Arreglo del tablero e instrucciones para empezar el nivel 
$f=o , x; KOKE1:
#Realizacion del tablero
my $tabla = "
.-----------------------------------|
|   |   |   | o |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
              x
";
my $taabla = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { #Comando if que se usa para que en caso de que se cumplan las condiciones muestre dicho tablero 

print($tabla);} #impresion de tabla

if($time>=31 && $time<=59  ){
 print($taabla);}
print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 7=Regresar al menu principal\n:"); $int=1; #Da el valor de las oportunidades realizadas
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} 
if($mov==5) { system("cls"); print "OKEY BYE"; exit;} #Salida del juego si el usuario lo desea
while($mov !=2){ if($int==3){ print"JAJAJA, haz perdido en el nivel mas facil, adios"; exit;} $int=$int+1; #Condicion que si es cumplida, se termina el juego
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);;if($mov==7){system("cls"); goto MENUP} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}} #goto: funcion que se usa para ir al lugar mencionado
if($mov==2){
 system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n"; #Impresion de motivacion
print("$tabla2"); } print"FELICIDADES HAS COMPLETADO EL NIVEL 1\n\n";#Impresion de motivacion
print"\t quieres seguir jugando o ya no puedes?\n 1=continuar  2=salir , 3=Regresar al menu principal  4= Volver a jugar el nivel\n";
do{ ($jugar = <>); #Inicio a una pregunta de que desea hacer el usuario
while($jugar !=1 && $jugar !=2 && $jugar !=3  && $jugar !=4){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);} if($jugar==3){system("cls"); goto MENUP} if($jugar ==4){system("cls"); goto KOKE1}  
if($jugar ==2) { system("cls");
 print "OKEY BYE"; exit;} #Salida del juego 
if ($jugar ==1) { #Seguir jugando
system("cls");
print"\t Comencemos el nivel 2";
my @array2D=([$i],[$j]);
$f=o , x; JUEGO2:

my $tabla_2 = "
.-----------------------------------|
|   |   |   | o |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla2_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
              x
";
my $tabla2_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $taabla_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   | x |   |   |   |   |   |             
|-----------------------------------|
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 

print($tabla_2);}

if($time>=31 && $time<=59  ){
 print($taabla_2);}
print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha\n 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n:"); $int=1;
do{chomp ($mov = <>);
if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto KOKE1} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){ if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto KOKE1}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla2_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal"); $int=1;
do{chomp ($mov = <>);
if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto KOKE1} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto KOKE1}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla2_3"); }}}} print"FELICIDADES HAS COMPLETADO EL NIVEL 2\n";
print"\t quieres seguir jugando o ya no puedes?\n 1=continuar, 2=salir 3=Regresar al menu principal 4= Volver a jugar el Nivel";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3 && $jugar !=4){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==3){system("cls"); goto MENUP} if($jugar ==4){system("cls"); goto JUEGO2} 
if($jugar ==2) { system("cls");
 print "OKEY BYE"; exit;} 
if ($jugar ==1) {
system("cls");
print"\t Comencemos el nivel 3"; NIVEL3:
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | o |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $tabla_3_1 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | o |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
      x
";
my $tabla3_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $tabla3_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   | o |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
                              x
";
my $tabla3_4 = "
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   |   | o |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $taabla_3 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | o |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | x |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $taabla_3_1 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   |x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | x |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
";
my $taabla_3_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   | x |   | o |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
                              x
";
my $taabla3_3 = "
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   |   |   |   |   |   | o |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $taabla_3_8 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   | o |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | x |   |             
|-----------------------------------|
                      x 
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 
print($tabla_3);
print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: ");$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 && $mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_3_1"); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_3);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla3_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit6=Regresar al nivel anterior 7=Regresar al menu principal");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla3_3"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal  ");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL2}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==3)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla3_4");} print"FELICIDADES HAS COMPLETADO EL NIVEL 3\n";
}

if($time>=31 && $time<=59  ){
 print($taabla_3);
 print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: ");$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 && $mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla_3_8");print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($taabla_3);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla_3_1"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal ");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto JUEGO2} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla_3_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal");
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}

if($mov==3)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$taabla3_3");} print"FELICIDADES HAS COMPLETADO EL NIVEL 3\n";
}
}
print"\t quieres seguir jugando o ya no puedes?\n 1=continuar, 2=salir 3=Regresar al menu principal 4= Volver a jugar el Nivel";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3 && $jugar !=4){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==3){system("cls"); goto MENUP} if($jugar ==4){system("cls"); goto NIVEL3} 
if($jugar ==2) { system("cls");
 print "OKEY BYE"; exit;} 
if ($jugar ==1) {
system("cls");
print"\t Comencemos el nivel 4"; NIVEL4:
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla_5 = "
.-----------------------------------|
|   |   |   | x |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_5_1 = "
              x
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   | o |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_5_2 = "
              
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x            
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_5_3 = "
              
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   | o |   |              
|-----------------------------------|
| x |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
                              x    
";
my $tabla_5_4 = "
              
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   |   | o |   |   |   |   |   |   |              
 |-----------------------------------|
 | x |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   | x |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $tabla_5_5 = "
              
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   | o |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
          x                       
";
my $tabla_5_6 = "
              
.-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
x|   | o |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
 ";
 my $taabla_5 = "
.-----------------------------------|
|   |   |   | x |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   | o |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
| x |   |   |   |   |   |   | x |   |              
|-----------------------------------|
|   |   | x |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 

print($tabla_5);}

if($time>=31 && $time<=59  ){
 print($taabla_5);}
print ("\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal"); $int=1;
do{chomp ($mov = <>); 
if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=1){ if($int==3){ print"JAJAJA, haz perdido en el nivel mas facil, adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==1){
 system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_1"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal "); $int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_2"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal"); $int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_3"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal "); $int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_4"); }
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal"); $int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_5"); }
 print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal "); $int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;}$int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL3}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_5_6"); } print"FELICIDADES HAS COMPLETADO EL NIVEL 4\n";
print"\t quieres seguir jugando o ya no puedes?\n 1=continuar, 2=salir 3=Regresar al menu principal 4= Volver a jugar el Nivel";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3 && $jugar !=4){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==3){system("cls"); goto MENUP} if($jugar ==4){system("cls"); goto NIVEL4}  
if($jugar ==2) { system("cls");
 print "OKEY BYE"; exit;} 
if ($jugar ==1) {
system("cls");
print"\t Comencemos el nivel 5 (FINAL)"; NIVEL5:
my @array2D=([$i],[$j]);
$f=o , x;

my $tabla_4 = "
.-----------------------------------|
|   |   |   |   | x |   |   |   |   |               
|-----------------------------------|
| x |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   | o |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_1 = "
                  x
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
| x |   |   |   | o |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_2 = "
                  
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
| x |   |   |   |   |   |   | o |   | x             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_3 = "
                  
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
x|   | o |   |   |   |   |   |   |   |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   | x |              
 |-----------------------------------|
 |   | x |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $tabla_4_4 = "
                  
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   | o |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
      x
";
my $tabla_4_5 = "
                  
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   |x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_no2_1 = "
 .-----------------------------------|
 |   |   |   |   |   |   |   |   |   |               
 |-----------------------------------|
x|   | o |   |   |   |   |   |   | x |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   | x |              
 |-----------------------------------|
 |   | x |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $tabla_4_no2_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   | o |   | x             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_no2_3_1 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | o |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
      x
";
my $tabla_4_no2_3_2 = "
.-----------------------------------|
|   |   |   |   |   |   |   |   |   |               
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   |   |   |   |   |   |   | o |   |x              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";
my $tabla_4_no2 = "
 .-----------------------------------|
 |   |   |   |   | x |   |   |   |   |               
 |-----------------------------------|
 | x |   |   |   |   |   |   |   | x |             
 |-----------------------------------|
 |   |   |   |   |   |   |   |   | x |              
 |-----------------------------------|
x|   |   | o |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |              
 |-----------------------------------|
 |   |   |   |   |   |   |   |   |   |             
 |-----------------------------------|
";
my $taabla_4 = "
.-----------------------------------|
|   |   |   |   | x |   |   |   |   |               
|-----------------------------------|
| x |   |   |   |   |   |   |   | x |             
|-----------------------------------|
|   |   |   |   |   |   |   |   | x |              
|-----------------------------------|
|   | x |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   | o |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |              
|-----------------------------------|
|   |   |   |   |   |   |   |   |   |             
|-----------------------------------|
";

use POSIX qw/ strftime /;
$time = strftime("%S", localtime(time) );
print strftime( "\t\t Tiempo:\t%H:%M:%S", localtime(time) );
if($time>=00 && $time<=30 ) { 

print($tabla_4);
print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=1 && $mov !=3 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_4_no2"); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_4);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
}
while($mov !=1 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
 chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==1)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_4_1"); } 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal");
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=3 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
{
if($mov==3)
{ {
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_1)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_2); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_4_no2_1);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1;
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}
if($mov==2){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print( $tabla_4_no2_3_1 ); 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal");
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_3_2)}
print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n te regresamos a donde te equivocaste por primera vez en el nivel\n.";
print($tabla_4_1); print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}}}}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_2)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal ");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_3)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal"); 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_4)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal"); 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_5)} print"FELICIDADES HAS COMPLETADO EL ULTIMO NIVEL\n";
}
}
}

if($time>=31 && $time<=59  ){ 
print($taabla_4);
print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=1){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==1)
{ system("cls");
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print("$tabla_4_1"); } 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal "); 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=3 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
{
if($mov==3){
{ {
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_1)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 && $mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}{
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_2); print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n aqui esta la tabla otra vez.";
print($tabla_4_no2_1);
print"\n\n vuele a intentarlo.\n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}}}
if($mov==2){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print( $tabla_4_no2_3_1 );}} 
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal "); 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4 ){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_no2_3_2)}
print"Pero ya no puedes hacer ningun movimiento para golpear otro asteroide, por lo tanto esta mal\n te regresamos a donde te equivocaste por primera vez en el nivel\n.";
print($tabla_4_1); print "\nIngrese la direccion a donde movera su ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal\n: "; 
$int=1;
do{chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
  chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}}}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_2)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal ");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=3){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==3)
{
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_3)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal");
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5}  if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=2){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==2)
{ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_4)}
print ("\nAhora a que direccion quieres mover tu ficha: \n1=arriba, 2=abajo, 3=izquierda, 4=derecha 5=exit 6=Regresar al nivel anterior 7=Regresar al menu principal"); 
$int=1; chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}
while($mov !=4){if($int==3){ print"JAJAJA, haz perdido , adios"; exit;} $int=$int+1;
print" No, intento numero:$int,\n vuelve a intentarlo:";
chomp ($mov = <>);if($mov==7){system("cls"); goto MENUP} if($mov==6){system("cls"); goto NIVEL5} if($mov==5) { system("cls"); print "OKEY BYE"; exit;}}
if($mov==4){ 
print"\n\n\t
111111111   111111   1111111111   1111     11
11     11     11     11           11 11    11
111111111     11     1111111111   11  11   11
11     11     11     11           11   11  11
11     11     11     11           11    11 11
111111111   111111   1111111111   11     1111\n\n";
print($tabla_4_5)} print"FELICIDADES HAS COMPLETADO EL ULTIMO NIVEL\n";
}
}
}
}
}
print"\t quieres seguir jugando o ya no puedes?\n 1=continuar, 2=salir 3=Regresar al menu principal 4= Volver a jugar el Nivel 5= Volver a jugar desde el primcipio";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2 && $jugar !=3 && $jugar !=4 && $jugar !=5){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==3){system("cls"); goto MENUP} if($jugar ==4){system("cls"); goto NIVEL5}if($jugar ==5){system("cls"); goto KOKE1}  
if($jugar ==2) { system("cls");
 print "OKEY BYE\n GRACIAS POR HABER JUGADO"; exit;} 
if ($jugar ==1) {
system("cls");
print"En este espacio queremos agradecer a todas las personas que ayudan a realizar el juego:\n
Realizacion del Manual de Tecnico: Marcelino Jorge Villarreal Leal\n
Realizacion del Manual de Usuario: Marcelino Jorge Villarreal Leal\n
Realizacion del Menu: Marcelino Jorge Villarreal Leal\n
Realizacion del Menu de Niveles: Marcelino Jorge Villarreal Leal\n
Realizacion de ls Tabla: Marcelino Jorge Villarreal Leal\n
Realizacion del 1er nivel: Marcelino Jorge Villarreal Leal y Juan Zermeno\n
Realizacion del 2do nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del 3er nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del 4to nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del 5to nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del Juego: Marcelino Jorge Villarreal Leal\n
Al maestro: M.C. Said Zamora Pequeno , por encargar este juego tan dificil\n
Y a todos que estan leyendo esto\n\n
111 1111     111111111          11        111111   1111       11        11111 
111 1111     111111111         11 11      111       11       11 11      11
111          111    11        11   11     111       11      11   11     1111111
111  11111   111111111       111111111    111       11     111111111         11
111   11111  111     111    11       11   111       11    11       11        11
1111111111   111       11  11         11  111111   1111  11         11  1111111";

print"\n\n Este codigo obtuvo 3073 lineas de codigo";
exit;
#cierre de niveles;
}
}
} 
}
}
}
}
}
}
}
}
}
} 
}
if ($op == 4) {
system("cls");
print"En este espacio queremos agradecer a todas las personas que ayudan a realizar el juego:\n
Realizacion del Manual de Tecnico: Marcelino Jorge Villarreal Leal\n
Realizacion del Manual de Usuario: Marcelino Jorge Villarreal Leal\n
Realizacion del Menu: Marcelino Jorge Villarreal Leal\n
Realizacion del Menu de Niveles: Marcelino Jorge Villarreal Leal\n
Realizacion de las Tablas: Marcelino Jorge Villarreal Leal\n
Realizacion del 1er nivel: Marcelino Jorge Villarreal Leal y Juan Zermeno \n
Realizacion del 2do nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del 3er nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del 4to nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del 5to nivel: Marcelino Jorge Villarreal Leal\n
Realizacion del Juego: Marcelino Jorge Villarreal Leal\n
Al maestro: M.C. Said Zamora Pequeno , por encargar este juego tan dificil\n
Y a todos que estan leyendo esto\n\n
111 1111     111111111          11        111111   1111       11        11111 
111 1111     111111111         11 11      111       11       11 11      11
111          111    11        11   11     111       11      11   11     1111111
111  11111   111111111       111111111    111       11     111111111         11
111   11111  111     111    11       11   111       11    11       11        11
1111111111   111       11  11         11  111111   1111  11         11  1111111";

print"\n\n Este codigo obtuvo 3073 lineas de codigo\n\n";
print"\t quieres volver al menu o salir?\n 1=Menu Principal, 2=salir\n:";
do{ ($jugar = <>);
while($jugar !=1 && $jugar !=2){
print" NOOO, esa opcion no existe:";  chomp ($jugar = <>);}if($jugar==1){system("cls"); goto MENUP} 
if($jugar ==2) { system("cls");
print "OKEY BYE"; exit;} 
}}
}