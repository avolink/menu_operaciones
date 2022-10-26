
// MENU DE OPERACIONES
Proceso menu_operaciones_main
	// Definiciones
	Definir mensaje Como Texto;
	Definir seleccion_menu_operaciones Como Entero;
	
	// MENU PRINCIPAL	
	// Funciones Matematicas
	mensaje = " 1 - Suma"; Escribir mensaje;
	mensaje = " 2 - Resta"; Escribir mensaje;
	mensaje = " 3 - Multiplicacion"; Escribir mensaje;
	mensaje = " 4 - Division"; Escribir mensaje;
	mensaje = " 5 - Cambio Signo"; Escribir mensaje;
	mensaje = " 6 - Valor Absoluto"; Escribir mensaje;
	mensaje = " 7 - Modulo"; Escribir mensaje;
	mensaje = " 8 - Redondear"; Escribir mensaje;
	mensaje = " 9 - Parte Entera"; Escribir mensaje;
	mensaje = "10 - Potencia n"; Escribir mensaje;
	mensaje = "11 - Raiz n"; Escribir mensaje;
	mensaje = "12 - Numero Aleatorio"; Escribir mensaje;
	// Funciones Trigonometricas
	mensaje = "13 - Seno"; Escribir mensaje;
	mensaje = "14 - Coseno"; Escribir mensaje;
	mensaje = "15 - Tangente"; Escribir mensaje;
	mensaje = "16 - Cotangente"; Escribir mensaje;
	mensaje = "17 - Secante"; Escribir mensaje;
	mensaje = "18 - Cosecante"; Escribir mensaje;
	// Figuras Geometricas 2D
	mensaje = "19 - Triangulo"; Escribir mensaje;	
	mensaje = "20 - Rectangulo"; Escribir mensaje;
	mensaje = "21 - Circulo"; Escribir mensaje;
	// Figuras Geometricas 3D
	mensaje = "22 - Hexaedro"; Escribir mensaje;
	mensaje = "23 - Piramide"; Escribir mensaje;	
	mensaje = "24 - Esfera"; Escribir mensaje;
	// Funciones Estadisticas
	mensaje = "30 - Contar"; Escribir mensaje;
	mensaje = "31 - Promedio"; Escribir mensaje;
	mensaje = "32 - Moda"; Escribir mensaje;
	mensaje = "33 - Media"; Escribir mensaje;
	mensaje = "34 - Mediana"; Escribir mensaje;
	mensaje = "35 - Minimo"; Escribir mensaje;
	mensaje = "36 - Maximo"; Escribir mensaje;
	mensaje = "37 - Desviacion Estandar"; Escribir mensaje;
	// Funciones Inteligencia Artificial
	// 50 a 79
	// Otras Funciones
	// 80 a 98
	// Acerca de
	mensaje = "99 - Acerca de"; Escribir mensaje;
	Leer seleccion_menu_operaciones;
	
	Segun seleccion_menu_operaciones Hacer
		1:
			Limpiar Pantalla;
			Escribir "Funcion Suma";
			suma();
		2:
			Limpiar Pantalla;
			Escribir "Funcion Resta";
			resta();
		3:
			Limpiar Pantalla;
			Escribir "Funcion Multiplicacion";
			multiplicacion();
		4:	
			Limpiar Pantalla;
			Escribir "Funcion Division";
			division();
		5:
			Limpiar Pantalla;
			Escribir "Funcion Cambio de Signo";
			cambio_signo();
		6:
			Limpiar Pantalla;
			Escribir "Funcion Valor Absoluto";
			valor_absoluto();
		7:
			Limpiar Pantalla;
			Escribir "Funcion Modulo";
			modulo();
		8:
			Limpiar Pantalla;
			Escribir "Funcion Redondear";
			redondear();
		9:
			Limpiar Pantalla;
			Escribir "Funcion Parte Entera";
			parte_entera();
		10:
			Limpiar Pantalla;
			Escribir "Funcion Funcion Potencia n";
			potencia_n();
		11:
			Limpiar Pantalla;
			Escribir "Funcion Raiz n";
			raiz_n();
		12:
			Limpiar Pantalla;
			Escribir "Numero Aleatorio";
			numero_aleatorio();
		13:
			Limpiar Pantalla;
			Escribir "Seno";
			seno();
		14:
			Limpiar Pantalla;
			Escribir "Numero Aleatorio";
			coseno();
		15:
			Limpiar Pantalla;
			Escribir "Tangente";
			tangente();
		16:
			Limpiar Pantalla;
			Escribir "Cotangente";
			cotangente();
		17:
			Limpiar Pantalla;
			Escribir "Secante";
			secante();
		18:
			Limpiar Pantalla;
			Escribir "Cosecante";
			cosecante();
		99:
			Limpiar Pantalla;
			acerca_de_programa();
		De Otro Modo:			
			Escribir "Seleccion invalida";
	FinSegun	
FinProceso


//.............................................................................................................................................................


// FUNCION SUMA
Funcion suma()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir sumando1, sumando2 Como Entero;
	Definir resultado_suma Como Real;
	Definir validador_suma Como Logico;
	validador_suma = Falso;
	resultado_suma = 0;
	Mientras validador_suma = Falso Hacer
		leer_datos_suma(sumando1, sumando2);
		validador_suma = validar_datos_suma(sumando1, sumando2);
	FinMientras	
	resultado_suma = calculo_operacion_suma(sumando1, sumando2);
	imprimir_operacion_suma(resultado_suma, sumando1, sumando2);
FinFuncion

// Lectura SUMA
Funcion leer_datos_suma(sumando1 Por Referencia sumando2 Por Referencia)
    Escribir "Ingrese el valor del primer sumando";
    leer sumando1;
    Escribir "Ingrese el valor del segundo sumando";
    leer sumando2;
    Limpiar Pantalla;
FinFuncion

// Validacion SUMA
Funcion validador_suma = validar_datos_suma(sumando1 Por Valor, sumando2 Por Valor)
    Definir validador_suma Como Logico;
    Si (sumando1 >= -9223372036854775808 & sumando1 <= 9223372036854775807 ) & (sumando2 >= -9223372036854775808 & sumando2 <= 9223372036854775807 ) Entonces // 64 bits
        validador_suma = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_suma = Falso;
		Escribir "Argumento invalido";
		acerca_de_suma();
    FinSi
FinFuncion

// Calculo SUMA
Funcion resultado_suma = calculo_operacion_suma(sumando1 Por Valor, sumando2 Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_suma Como real;
    resultado_suma = sumando1 + sumando2;
FinFuncion

// Impresion SUMA
Funcion imprimir_operacion_suma(resultado_suma Por Valor, sumando1 Por Valor, sumando2 Por Valor)
    Definir mensaje Como Texto;
    Escribir "El resultado de la suma del numero: ", sumando1, " mas el numero ", sumando2 ," es igual a " , resultado_suma;
    mensaje = "El primer sumando es: "+ConvertirATexto(sumando1); Escribir mensaje;
	mensaje = "El segundo sumando es: "+ConvertirATexto(sumando2); Escribir mensaje;
	mensaje = "El resultado de la suma es: "+ConvertirATexto(resultado_suma); Escribir mensaje;
FinFuncion

// Acerca de SUMA
Funcion acerca_de_suma()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para la suma de dos numeros:";
	Escribir "Toma minuendo y sustraendo como argumentos, y regresa lectura, validacion, calculo e impresion";
	Escribir "Ambos sumandos soportan 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION RESTA
Funcion resta()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir minuendo, sustraendo Como Entero;
	Definir resultado_resta Como Real;
	Definir validador_resta Como Logico;
	validador_resta = Falso;
	resultado_resta = 0;
	Mientras validador_resta = Falso Hacer
		leer_datos_resta(minuendo, sustraendo);
		validador_resta = validar_datos_resta(minuendo, sustraendo);
	FinMientras	
	resultado_resta = calculo_operacion_resta(minuendo, sustraendo);
	imprimir_operacion_resta(resultado_resta, minuendo, sustraendo);	
FinFuncion

// Lectura RESTA
Funcion leer_datos_resta(minuendo Por Referencia sustraendo Por Referencia)
    Escribir "Ingrese el valor del minuendo";
    leer minuendo;
    Escribir "Ingrese el valor del sustraendo";
    leer sustraendo;
    Limpiar Pantalla;
FinFuncion

// Validacion RESTA
Funcion validador_resta = validar_datos_resta(minuendo Por Valor, sustraendo Por Valor)
    Definir validador_resta Como Logico;
    Si (minuendo  > -9223372036854775808 & minuendo <= 9223372036854775807) & (sustraendo  > -9223372036854775808 & sustraendo <= 9223372036854775807) Entonces
        validador_resta = Verdadero;
        Esperar 300 Milisegundos;
    SiNo
        validador_resta = Falso;
		Escribir "Argumento invalido";
		acerca_de_resta();
    FinSi
FinFuncion

// Calculo RESTA
Funcion resultado_resta = calculo_operacion_resta(minuendo Por Valor,sustraendo Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_resta Como real;
    resultado_resta = minuendo - sustraendo;
FinFuncion

// Impresion RESTA
Funcion imprimir_operacion_resta(resultado_resta Por Valor,minuendo Por Valor, sustraendo Por Valor)
    Definir mensaje Como Texto;
    Escribir "El resultado de la resta del numero: ", minuendo, " menos el numero: ", sustraendo ," es igual a ", resultado_resta;
    mensaje = "El minuendo es: "+ConvertirATexto(minuendo); Escribir mensaje;
	mensaje = "El sustraendo es: "+ConvertirATexto(sustraendo); Escribir mensaje;
	mensaje = "El resultado de la resta es: "+ConvertirATexto(resultado_resta); Escribir mensaje;
FinFuncion

// Acerca de RESTA
Funcion acerca_de_resta()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para la resta de dos numeros.";
	Escribir "Toma minuendo y sustraendo como argumentos, y regresa lectura, validacion, calculo e impresion";
	Escribir "Ambos argumentos, minuendo y sustraendo, soportan 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION MULTIPLICACION
Funcion multiplicacion()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir factor1, factor2 Como Entero;
	Definir resultado_multiplicacion Como Real;
	Definir validador_multiplicacion Como Logico;
	validador_multiplicacion = Falso;
	resultado_multiplicacion = 0;
	Mientras validador_multiplicacion = Falso Hacer
		leer_datos_multiplicacion(factor1, factor2);
		validador_multiplicacion = validar_datos_multiplicacion(factor1, factor2);
	FinMientras	
	resultado_multiplicacion = calculo_operacion_multiplicacion(factor1, factor2);
	imprimir_operacion_multiplicacion(resultado_multiplicacion, factor1, factor2);	
FinFuncion

// Lectura MULTIPLICACION
Funcion leer_datos_multiplicacion(factor1 Por Referencia factor2 Por Referencia)
    Escribir "Ingrese el valor del primer factor";
    leer factor1;
    Escribir "Ingrese el valor del segundo factor";
    leer factor2;
    Limpiar Pantalla;
FinFuncion

// Validacion MULTIPLICACION
Funcion validador_multiplicacion = validar_datos_multiplicacion(factor1 Por Valor, factor2 Por Valor)
    Definir validador_multiplicacion Como Logico;
    Si (factor1 >= -9223372036854775808 & factor1 <= 9223372036854775807 ) & (factor2 >= -9223372036854775808 & factor2 <= 9223372036854775807 ) Entonces // 64 bits
        validador_multiplicacion = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_multiplicacion = Falso;
		Escribir "Argumento invalido";
		acerca_de_multiplicacion();
    FinSi
FinFuncion

// Calculo MULTIPLICACION
Funcion resultado_multiplicacion = calculo_operacion_multiplicacion(factor1 Por Valor, factor2 Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_multiplicacion Como real;
    resultado_multiplicacion = factor1 * factor2;
FinFuncion

// Impresion MULTIPLICACION
Funcion imprimir_operacion_multiplicacion(resultado_multiplicacion Por Valor, factor1 Por Valor, factor2 Por Valor)
    Definir mensaje Como Texto;
    Escribir "El resultado de la multiplicacion del numero: ", factor1, " y el numero: ", factor2 ," es igual a " , resultado_multiplicacion;
    mensaje = "El primer factor es: "+ConvertirATexto(factor1); Escribir mensaje;
	mensaje = "El segundo factor es: "+ConvertirATexto(factor2); Escribir mensaje;
	mensaje = "El resultado de la multiplicacion es: "+ConvertirATexto(resultado_multiplicacion); Escribir mensaje;
FinFuncion

// Acerca de MULTIPLICACION
Funcion acerca_de_multiplicacion()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para la multiplicacion de dos numeros.";
	Escribir "Toma dos factores como argumentos, y regresa lectura, validacion, calculo e impresion";
	Escribir "Ambos factores soportan 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION DIVISION
Funcion division()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir dividendo, divisor Como Entero;
	Definir resultado_division Como Real;
	Definir validador_division Como Logico;
	validador_division = Falso;
	resultado_division = 0;
	Mientras validador_division = Falso Hacer
		leer_datos_division(dividendo, divisor);
		validador_division = validar_datos_modulo(dividendo, divisor);
	FinMientras
	
	resultado_division = calculo_operacion_division(dividendo, divisor);
	imprimir_operacion_division(resultado_division, dividendo, divisor);	
FinFuncion

// Lectura DIVISION
Funcion leer_datos_division(dividendo Por Referencia divisor Por Referencia)
    Escribir "Ingrese el valor del dividendo";
    leer dividendo;
    Escribir "Ingrese el valor del divisor";
    leer divisor;
    Limpiar Pantalla;
FinFuncion


// Validacion DIVISION
Funcion validador_division = validar_datos_division(dividendo Por Valor, divisor Por Valor)
    Definir validador_division Como Logico;
    Si (divisor <> 0 & divisor >= -9223372036854775808 & divisor <= +9223372036854775807) & (dividendo >= -9223372036854775808 & dividendo <= +9223372036854775807) Entonces // 64 bit, divisor <> 0
        validador_division = Verdadero;        
        Esperar 300 Milisegundos;
    SiNo
        validador_division = Falso;
		Escribir "Argumento invalido";
		acerca_de_division();
    FinSi
FinFuncion

// Calculo DIVISION
Funcion resultado_division = calculo_operacion_division(dividendo Por Valor, divisor Por Valor)
    Definir resultado_division Como real;
    resultado_division = dividendo/divisor;
FinFuncion

// Impresion DIVISION
Funcion imprimir_operacion_division(resultado_division Por Valor, dividendo Por Valor, divisor Por Valor)
    Definir mensaje Como Texto;
    Escribir "El resultado de la division del numero: ", dividendo, " por el numero: ", divisor," es igual a " , resultado_division;
    mensaje = "El dividendo es: "+ConvertirATexto(dividendo); Escribir mensaje;
	mensaje = "El divisor es: "+ConvertirATexto(divisor); Escribir mensaje;
	mensaje = "El resultado de la division es: "+ConvertirATexto(resultado_division); Escribir mensaje;
FinFuncion

// Acerca de DIVISION
Funcion acerca_de_division()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular la division entre dos numeros.";
	Escribir "Toma dividendo y divisor como argumentos, y regresa lectura, validacion, calculo e impresion";
	Escribir "Ambos argumentos, dividendo y divisor soportan 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807 (excepto divisor = 0)";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION CAMBIO DE SIGNO
Funcion cambio_signo()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir factor, resultado_cambio_signo Como Real;
	Definir validador_cambio_signo Como Logico;
	validador_cambio_signo = Falso;
	resultado_cambio_signo = 0;
	Mientras validador_cambio_signo = Falso Hacer
		leer_datos_cambio_signo(factor);
		validador_cambio_signo = validar_datos_cambio_signo(factor);
	FinMientras	
	resultado_cambio_signo = calculo_operacion_cambio_signo(factor);
	imprimir_operacion_cambio_signo(resultado_cambio_signo, factor);
FinFuncion

// Lectura CAMBIO DE SIGNO
Funcion leer_datos_cambio_signo(factor Por Referencia)
    Escribir "Ingrese el valor del factor";
    leer factor;    
    Limpiar Pantalla;
FinFuncion

// Validacion CAMBIO DE SIGNO
Funcion validador_cambio_signo = validar_datos_cambio_signo(factor Por Valor)
    Definir validador_cambio_signo Como Logico;
    Si (factor >= -9223372036854775808 & factor <= 9223372036854775807) Entonces // 64 bits
        validador_cambio_signo = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_cambio_signo = Falso;
		Escribir "Argumento invalido";
		acerca_de_cambio_signo();
    FinSi
FinFuncion

// Calculo CAMBIO DE SIGNO
Funcion resultado_cambio_signo = calculo_operacion_cambio_signo(factor Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_cambio_signo Como real;
    resultado_cambio_signo = -factor;
FinFuncion

// Impresion CAMBIO DE SIGNO
Funcion imprimir_operacion_cambio_signo(resultado_cambio_signo Por Valor, factor Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El factor es: "+ConvertirATexto(factor); Escribir mensaje;	
	mensaje = "El resultado del cambio de signo es: "+ConvertirATexto(resultado_cambio_signo); Escribir mensaje;
FinFuncion

// Acerca de CAMBIO DE SIGNO
Funcion acerca_de_cambio_signo()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para cambiar el signo de un numero.";
	Escribir "Toma un solo factor como argumento, y regresa lectura, validacion, calculo e impresion";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION VALOR ABSOLUTO
Funcion valor_absoluto()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir termino, resultado_valor_absoluto Como Real;
	Definir validador_valor_absoluto Como Logico;
	validador_valor_absoluto = Falso;
	resultado_valor_absoluto = 0;
	Mientras validador_valor_absoluto = Falso Hacer
		leer_datos_valor_absoluto(termino);
		validador_valor_absoluto = validar_datos_valor_absoluto(termino);
	FinMientras	
	resultado_valor_absoluto = calculo_operacion_valor_absoluto(termino);
	imprimir_operacion_valor_absoluto(resultado_valor_absoluto, termino);
FinFuncion

// Lectura VALOR ABSOLUTO
Funcion leer_datos_valor_absoluto(termino Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer termino;    
    Limpiar Pantalla;
FinFuncion

// Validacion VALOR ABSOLUTO
Funcion validador_valor_absoluto = validar_datos_valor_absoluto(termino Por Valor)
    Definir validador_valor_absoluto Como Logico;
    Si (termino >= -9223372036854775808 & termino <= 9223372036854775807) Entonces // 64 bits
        validador_valor_absoluto = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_valor_absoluto = Falso;
		Escribir "Argumento invalido";
		acerca_de_valor_absoluto();
    FinSi
FinFuncion

// Calculo VALOR ABSOLUTO
Funcion resultado_valor_absoluto = calculo_operacion_valor_absoluto(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_valor_absoluto Como real;
	Si termino < 0 Entonces
		resultado_valor_absoluto = -termino;
	SiNo
		Si termino >= 0 Entonces
			resultado_valor_absoluto = termino;
		SiNo
			mensaje = "Argumento invalido"; Escribir mensaje;
		FinSi
	FinSi
FinFuncion

// Impresion VALOR ABSOLUTO
Funcion imprimir_operacion_valor_absoluto(resultado_valor_absoluto Por Valor, termino Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(termino); Escribir mensaje;	
	mensaje = "El resultado del valor absoluto es: "+ConvertirATexto(resultado_valor_absoluto); Escribir mensaje;
FinFuncion

// Acerca de VALOR ABSOLUTO
Funcion acerca_de_valor_absoluto()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para cambiar el signo de un numero.";
	Escribir "Toma un solo factor como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El argumento soporta 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION MODULO
Funcion modulo()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir dividendo, divisor Como Entero;
	Definir resultado_modulo Como Real;
	Definir validador_modulo Como Logico;
	validador_modulo = Falso;
	resultado_modulo = 0;
	Mientras validador_modulo=Falso Hacer
		leer_datos_modulo(dividendo, divisor);
		validador_modulo=validar_datos_modulo(dividendo, divisor);
	FinMientras
	
	resultado_modulo = calculo_operacion_modulo(dividendo, divisor);
	imprimir_operacion_modulo(resultado_modulo, dividendo, divisor);	
FinFuncion

// Lectura MODULO
Funcion leer_datos_modulo(dividendo Por Referencia divisor Por Referencia)
    Escribir "Ingrese el valor del dividendo";
    leer dividendo;
    Escribir "Ingrese el valor del divisor";
    leer divisor;
    Limpiar Pantalla;
FinFuncion


// Validacion MODULO
Funcion validador_modulo = validar_datos_modulo(dividendo Por Valor, divisor Por Valor)
    Definir validador_modulo Como Logico;
    Si (divisor <> 0 & divisor >= -9223372036854775808 & divisor <= +9223372036854775807) & (dividendo >= -9223372036854775808 & dividendo <= +9223372036854775807) Entonces // 64 bit, divisor <> 0
        validador_modulo = Verdadero;
        Escribir "Valor del divisor invalido";
        Esperar 300 Milisegundos;
    SiNo
        validador_modulo = Falso;
		Escribir "Argumento invalido";
		acerca_de_modulo();
    FinSi
FinFuncion

// Calculo MODULO
Funcion resultado_modulo=calculo_operacion_modulo(dividendo Por Valor, divisor Por Valor)
    Definir resultado_modulo Como real;
    resultado_modulo = dividendo%divisor;
FinFuncion

// Impresion MODULO
Funcion imprimir_operacion_modulo(resultado_modulo Por Valor, dividendo Por Valor, divisor Por Valor)
    Definir mensaje Como Texto;
    Escribir "El resultado del modulo del numero: ", dividendo, " respecto al numero: ", divisor," es igual a " , resultado_modulo;
    mensaje = "El dividendo es: "+ConvertirATexto(dividendo); Escribir mensaje;
	mensaje = "El divisor es: "+ConvertirATexto(divisor); Escribir mensaje;
	mensaje = "El resultado del modulo es: "+ConvertirATexto(resultado_modulo); Escribir mensaje;
FinFuncion

// Acerca de MODULO
Funcion acerca_de_modulo()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular el modulo entre dos numeros.";
	Escribir "Toma dividendo y divisor como argumentos, y regresa lectura, validacion, calculo e impresion.";
	Escribir "Ambos argumentos, dividendo y divisor soportan 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807 (excepto divisor = 0)";
	Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION REDONDEAR
Funcion redondear()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir termino, resultado_redondear Como Real;
	Definir validador_redondear Como Logico;
	validador_redondear = Falso;
	resultado_redondear = 0;
	Mientras validador_redondear = Falso Hacer
		leer_datos_redondear(termino);
		validador_redondear = validar_datos_redondear(termino);
	FinMientras	
	resultado_redondear = calculo_operacion_redondear(termino);
	imprimir_operacion_redondear(resultado_redondear, termino);
FinFuncion

// Lectura REDONDEAR
Funcion leer_datos_redondear(termino Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer termino;    
    Limpiar Pantalla;
FinFuncion

// Validacion REDONDEAR
Funcion validador_redondear = validar_datos_redondear(termino Por Valor)
    Definir validador_redondear Como Logico;
    Si (termino >= -9223372036854775808 & termino <= 9223372036854775807) Entonces // 64 bits
        validador_redondear = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_redondear = Falso;
		Escribir "Argumento invalido";
		acerca_de_redondear();
    FinSi
FinFuncion

// Calculo REDONDEAR
Funcion resultado_redondear = calculo_operacion_redondear(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_redondear Como Real;
	
	resultado_redondear = REDON(termino);
	
FinFuncion

// Impresion REDONDEAR
Funcion imprimir_operacion_redondear(resultado_redondear Por Valor, termino Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(termino); Escribir mensaje;	
	mensaje = "El resultado del redondeo es: "+ConvertirATexto(resultado_redondear); Escribir mensaje;
FinFuncion

// Acerca de REDONDEAR
Funcion acerca_de_redondear()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para redondear un numero.";
	Escribir "Toma un solo termino como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El argumento soporta 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION PARTE ENTERA
Funcion parte_entera()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir termino, resultado_parte_entera Como Real;
	Definir validador_parte_entera Como Logico;
	validador_parte_entera = Falso;
	resultado_parte_entera = 0;
	Mientras validador_parte_entera = Falso Hacer
		leer_datos_parte_entera(termino);
		validador_parte_entera = validar_datos_parte_entera(termino);
	FinMientras	
	resultado_parte_entera = calculo_operacion_parte_entera(termino);
	imprimir_operacion_parte_entera(resultado_parte_entera, termino);	
FinFuncion

// Lectura PARTE ENTERA
Funcion leer_datos_parte_entera(termino Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer termino;
    Limpiar Pantalla;
FinFuncion

// Validacion PARTE ENTERA
Funcion validador_parte_entera = validar_datos_parte_entera(termino Por Valor)
    Definir validador_parte_entera Como Logico;
    Si (termino >= -9223372036854775808 & termino <= 9223372036854775807) Entonces // 64 bits
        validador_parte_entera = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_parte_entera = Falso;
		Escribir "Argumento invalido";
		acerca_de_parte_entera();
    FinSi
FinFuncion

// Calculo PARTE ENTERA
Funcion resultado_parte_entera = calculo_operacion_parte_entera(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_parte_entera Como Real;
	
	resultado_parte_entera = TRUNC(termino);
	
FinFuncion

// Impresion PARTE ENTERA
Funcion imprimir_operacion_parte_entera(resultado_parte_entera Por Valor, termino Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(termino); Escribir mensaje;	
	mensaje = "El resultado del redondeo es: "+ConvertirATexto(resultado_parte_entera); Escribir mensaje;
FinFuncion

// Acerca de PARTE ENTERA
Funcion acerca_de_parte_entera()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para obtener la parte entera de un numero.";
	Escribir "Toma un solo termino como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El argumento soporta 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION POTENCIA (EXPONENCIACION)
Funcion potencia_n()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir base, exponente Como Entero;
	Definir resultado_potencia_n Como Real;
	Definir validador_potencia_n Como Logico;
	validador_potencia_n = Falso;
	resultado_potencia_n = 0;
	Mientras validador_potencia_n = Falso Hacer
		leer_datos_potencia_n(base, exponente);
		validador_potencia_n = validar_datos_potencia_n(base, exponente);
	FinMientras	
	resultado_potencia_n = calculo_operacion_potencia_n(base, exponente);
	imprimir_operacion_potencia_n(resultado_potencia_n, base, exponente);
FinFuncion

// Lectura POTENCIA N
Funcion leer_datos_potencia_n(base Por Referencia exponente Por Referencia)
    Escribir "Ingrese el valor de la base";
    leer base;
    Escribir "Ingrese el valor del exponente";
    leer exponente;
    Limpiar Pantalla;
FinFuncion

// Validacion POTENCIA N
Funcion validador_potencia_n = validar_datos_potencia_n(base Por Valor, exponente Por Valor)
    Definir validador_potencia_n Como Logico;
    Si (base >= -2147483648 & base <= 2147483647 ) & (exponente >= -128 & exponente <= 127 ) Entonces // 32 bits para la base, 8 bits para el exponente
        validador_potencia_n = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_potencia_n = Falso;
		Escribir "Argumento invalido";
		acerca_de_potencia_n();
    FinSi
FinFuncion

// Calculo POTENCIA N
Funcion resultado_potencia_n = calculo_operacion_potencia_n(base Por Valor, exponente Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_potencia_n Como real;
    resultado_potencia_n = base ^ exponente;
FinFuncion

// Impresion POTENCIA N
Funcion imprimir_operacion_potencia_n(resultado_potencia_n Por Valor, base Por Valor, exponente Por Valor)
    Definir mensaje Como Texto;
    Escribir "El resultado de la exponenciacion del numero: ", base, " al exponente: ", exponente ," es igual a " , resultado_potencia_n;
    mensaje = "La base es: "+ConvertirATexto(base); Escribir mensaje;
	mensaje = "El exponente es: "+ConvertirATexto(exponente); Escribir mensaje;
	mensaje = "El resultado de la exponenciacion es: "+ConvertirATexto(resultado_potencia_n); Escribir mensaje;
FinFuncion

// Acerca de POTENCIA N
Funcion acerca_de_potencia_n()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para la multiplicacion de dos numeros.";
	Escribir "Toma dos factores como argumentos, y regresa lectura, validacion, calculo e impresion";
	Escribir "Ambos factores soportan 64 bits, es decir, numeros entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION RAIZ N (RADICACION O EXPONENCIACION INVERSA: radicado ^ ( -1/n )
Funcion raiz_n()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir radicando, indice, resultado_raiz_n Como Real;
	Definir validador_raiz_n Como Logico;
	validador_raiz_n = Falso;
	resultado_raiz_n = 0;
	Mientras validador_raiz_n = Falso Hacer
		leer_datos_raiz_n(radicando, indice);
		validador_raiz_n = validar_datos_raiz_n(radicando, indice);
	FinMientras	
	resultado_raiz_n = calculo_operacion_raiz_n(radicando, indice);
	imprimir_operacion_raiz_n(resultado_raiz_n, radicando, indice);
FinFuncion

// Lectura RAIZ
Funcion leer_datos_raiz_n(radicando Por Referencia indice Por Referencia)
    Escribir "Ingrese el valor del radicando";
    leer radicando;
    Escribir "Ingrese el valor del indice";
    leer indice;
    Limpiar Pantalla;
FinFuncion

// Validacion RAIZ
Funcion validador_raiz_n = validar_datos_raiz_n(radicando Por Valor, indice Por Valor)
    Definir validador_raiz_n Como Logico;
    Si (indice <> 0 & indice >= -128 & indice <= 127 ) & (radicando >= -2147483648 & radicando <= 2147483647 ) Entonces // 32 bits para el radicando, 8 bits para el indice
        validador_raiz_n = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_raiz_n = Falso;
		Escribir "Argumento invalido";
		acerca_de_raiz_n();
    FinSi
FinFuncion

// Calculo RAIZ
Funcion resultado_raiz_n = calculo_operacion_raiz_n(radicando Por Valor, indice Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_raiz_n Como real;
    resultado_raiz_n = ((radicando) ^ (1/indice)); // Exponenciacion Inversa
FinFuncion

// Impresion RAIZ
Funcion imprimir_operacion_raiz_n(resultado_raiz_n Por Valor, radicando Por Valor, indice Por Valor)
    Definir mensaje Como Texto;
    Escribir "El resultado de la raiz indice: ", indice, " del radicando: ", radicando," es igual a " , resultado_raiz_n;
    mensaje = "El radicando es: "+ConvertirATexto(radicando); Escribir mensaje;
	mensaje = "El indice de la raiz es: "+ConvertirATexto(indice); Escribir mensaje;
	mensaje = "El resultado de la raiz es: "+ConvertirATexto(resultado_raiz_n); Escribir mensaje;
FinFuncion

// Acerca de RAIZ
Funcion acerca_de_raiz_n()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para la multiplicacion de dos numeros.";
	Escribir "Toma el radicando y el indice de la raiz como argumentos, y regresa lectura, validacion, calculo e impresion";
	Escribir "El radicando soporta 32 bits, es decir, numeros entre -2147483648 y 2147483647, y el indice 8 bits, -128 & indice <= 127 (excepto indice = 0)";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// GENERAR NUMERO ALEATORIO
Funcion numero_aleatorio()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir minimo, maximo Como Entero;
	Definir resultado_numero_aleatorio Como Real;
	Definir validador_numero_aleatorio Como Logico;
	validador_numero_aleatorio = Falso;
	resultado_numero_aleatorio = 0;
	Mientras validador_numero_aleatorio = Falso Hacer
		leer_datos_numero_aleatorio(minimo, maximo);
		validador_numero_aleatorio = validar_datos_numero_aleatorio(minimo, maximo);
	FinMientras	
	resultado_numero_aleatorio = calculo_operacion_numero_aleatorio(minimo, maximo);
	imprimir_operacion_numero_aleatorio(resultado_numero_aleatorio, minimo, maximo);
FinFuncion

// Lectura NUMERO ALEATORIO
Funcion leer_datos_numero_aleatorio(minimo Por Referencia, maximo Por Referencia)
    Escribir "Ingrese el valor minimo";
    leer minimo;
	Escribir "Ingrese el valor maximo";
    leer maximo;
    Limpiar Pantalla;
FinFuncion

// Validacion NUMERO ALEATORIO
Funcion validador_numero_aleatorio = validar_datos_numero_aleatorio(minimo Por Valor, maximo Por Valor)
    Definir validador_numero_aleatorio Como Logico;
    Si (minimo >= -9223372036854775808 & minimo <= 9223372036854775807) & (maximo >= -9223372036854775808 & maximo <= 9223372036854775807) Entonces // 64 bits
        validador_numero_aleatorio = Verdadero;       
        Esperar 300 Milisegundos;
    SiNo
        validador_numero_aleatorio = Falso;
		Escribir "Argumento invalido";
		acerca_de_numero_aleatorio();
    FinSi
FinFuncion

// Calculo NUMERO ALEATORIO
Funcion resultado_numero_aleatorio = calculo_operacion_numero_aleatorio(minimo Por Valor, maximo Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_numero_aleatorio Como real;
	resultado_numero_aleatorio = Aleatorio(minimo, maximo); // 64 bits
FinFuncion

// Impresion NUMERO ALEATORIO
Funcion imprimir_operacion_numero_aleatorio(resultado_numero_aleatorio Por Valor, minimo Por Valor, maximo Por Valor)
    Definir mensaje Como Texto;
	mensaje = "El resultado del numero aleatorio es: "+ConvertirATexto(resultado_numero_aleatorio); Escribir mensaje;
FinFuncion

// Acerca de NUMERO ALEATORIO
Funcion acerca_de_numero_aleatorio()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para generar un numero aleatorio.";
	Escribir "Recibe un minimo y un maximo como entero, y regresa lectura, validacion, calculo e impresion";
	Escribir "Soporta enteros de hasta 64 bits, es decir, numeros sin cifras decimales entre -9223372036854775808 y +9223372036854775807";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION SENO
Funcion seno()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir angulo, resultado_seno Como Real;
	Definir validador_seno Como Logico;
	validador_seno = Falso;
	resultado_seno = 0;
	Mientras validador_seno = Falso Hacer
		leer_datos_seno(angulo);
		validador_seno = validar_datos_seno(angulo);
	FinMientras	
	resultado_seno = calculo_operacion_seno(angulo);
	imprimir_operacion_seno(resultado_seno, angulo);
FinFuncion

// Lectura SENO
Funcion leer_datos_seno(angulo Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer angulo;    
    Limpiar Pantalla;
FinFuncion

// Validacion SENO
Funcion validador_seno = validar_datos_seno(angulo Por Valor)
    Definir validador_seno Como Logico;
    Si (angulo >= -360 & angulo <= 360) Entonces // 360 grados angulares (NO radianes)
        validador_seno = Verdadero;
        Esperar 300 Milisegundos;
    SiNo
        validador_seno = Falso;
		Escribir "Argumento invalido";
		acerca_de_seno();
    FinSi
FinFuncion

// Calculo SENO
Funcion resultado_seno = calculo_operacion_seno(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_seno Como real;
	
	resultado_seno = SEN(angulo);
	
FinFuncion

// Impresion SENO
Funcion imprimir_operacion_seno(resultado_seno Por Valor, angulo Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(angulo); Escribir mensaje;	
	mensaje = "El resultado del seno del angulo es: "+ConvertirATexto(resultado_seno); Escribir mensaje;
FinFuncion

// Acerca de SENO
Funcion acerca_de_seno()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular el seno de un angulo.";
	Escribir "Toma un angulo como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El angulo debe ser escrito en grados angulares, NO radianes, es decir, numeros entre -360 y +360";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION COSENO
Funcion coseno()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir angulo, resultado_coseno Como Real;
	Definir validador_coseno Como Logico;
	validador_coseno = Falso;
	resultado_coseno = 0;
	Mientras validador_coseno = Falso Hacer
		leer_datos_coseno(angulo);
		validador_coseno = validar_datos_coseno(angulo);
	FinMientras	
	resultado_coseno = calculo_operacion_coseno(angulo);
	imprimir_operacion_coseno(resultado_coseno, angulo);
FinFuncion

// Lectura COSENO
Funcion leer_datos_coseno(angulo Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer angulo;    
    Limpiar Pantalla;
FinFuncion

// Validacion COSENO
Funcion validador_coseno = validar_datos_coseno(angulo Por Valor)
    Definir validador_coseno Como Logico;
    Si (angulo >= -360 & angulo <= 360) Entonces // 360 grados angulares (NO radianes)
        validador_coseno = Verdadero;
        Esperar 300 Milisegundos;
    SiNo
        validador_coseno = Falso;
		Escribir "Argumento invalido";
		acerca_de_coseno();
    FinSi
FinFuncion

// Calculo COSENO
Funcion resultado_coseno = calculo_operacion_coseno(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_coseno Como real;
	
	resultado_coseno = COS(angulo);
	
FinFuncion

// Impresion COSENO
Funcion imprimir_operacion_coseno(resultado_coseno Por Valor, angulo Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(angulo); Escribir mensaje;	
	mensaje = "El resultado del seno del angulo es: "+ConvertirATexto(resultado_coseno); Escribir mensaje;
FinFuncion

// Acerca de COSENO
Funcion acerca_de_coseno()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular el coseno de un angulo.";
	Escribir "Toma un angulo como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El angulo debe ser escrito en grados angulares, NO radianes, es decir, numeros entre -360 y +360";
    Esperar 300 Milisegundos;
FinFuncion


//.............................................................................................................................................................



// FUNCION TANGENTE
Funcion tangente()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir angulo, resultado_tangente Como Real;
	Definir validador_tangente Como Logico;
	validador_tangente = Falso;
	resultado_tangente = 0;
	Mientras validador_tangente = Falso Hacer
		leer_datos_tangente(angulo);
		validador_tangente = validar_datos_tangente(angulo);
	FinMientras	
	resultado_tangente = calculo_operacion_tangente(angulo);
	imprimir_operacion_tangente(resultado_tangente, angulo);
FinFuncion

// Lectura TANGENTE
Funcion leer_datos_tangente(angulo Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer angulo;    
    Limpiar Pantalla;
FinFuncion

// Validacion TANGENTE
Funcion validador_tangente = validar_datos_tangente(angulo Por Valor)
    Definir validador_tangente Como Logico;
    Si (angulo >= -360 & angulo <= 360) Entonces // 360 grados angulares (NO radianes)
        validador_tangente = Verdadero;
        Esperar 300 Milisegundos;
    SiNo
        validador_tangente = Falso;
		Escribir "Argumento invalido";
		acerca_de_tangente();
    FinSi
FinFuncion

// Calculo TANGENTE
Funcion resultado_tangente = calculo_operacion_tangente(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_tangente Como real;
	
	resultado_tangente = TAN(angulo);
	
FinFuncion

// Impresion TANGENTE
Funcion imprimir_operacion_tangente(resultado_tangente Por Valor, angulo Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(angulo); Escribir mensaje;	
	mensaje = "El resultado del seno del angulo es: "+ConvertirATexto(resultado_tangente); Escribir mensaje;
FinFuncion

// Acerca de TANGENTE
Funcion acerca_de_tangente()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular la tangente de un angulo.";
	Escribir "Toma un angulo como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El angulo debe ser escrito en grados angulares, NO radianes, es decir, numeros entre -360 y +360";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION COTANGENTE
Funcion cotangente()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir angulo, resultado_cotangente Como Real;
	Definir validador_cotangente Como Logico;
	validador_cotangente = Falso;
	resultado_cotangente = 0;
	Mientras validador_cotangente = Falso Hacer
		leer_datos_cotangente(angulo);
		validador_cotangente = validar_datos_cotangente(angulo);
	FinMientras	
	resultado_cotangente = calculo_operacion_cotangente(angulo);
	imprimir_operacion_cotangente(resultado_cotangente, angulo);
FinFuncion

// Lectura TANGENTE
Funcion leer_datos_cotangente(angulo Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer angulo;    
    Limpiar Pantalla;
FinFuncion

// Validacion COTANGENTE
Funcion validador_cotangente = validar_datos_cotangente(angulo Por Valor)
    Definir validador_cotangente Como Logico;
    Si (angulo >= -360 & angulo <= 360) Entonces // 360 grados angulares (NO radianes)
        validador_cotangente = Verdadero;
        Esperar 300 Milisegundos;
    SiNo
        validador_cotangente = Falso;
		Escribir "Argumento invalido";
		acerca_de_cotangente();
    FinSi
FinFuncion

// Calculo COTANGENTE
Funcion resultado_cotangente = calculo_operacion_cotangente(angulo Por Valor)
	Definir mensaje Como Texto;
	Definir resultado_cotangente Como real;
	
	resultado_cotangente = 1/TAN(angulo);
	
FinFuncion

// Impresion COTANGENTE
Funcion imprimir_operacion_cotangente(resultado_cotangente Por Valor, angulo Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(angulo); Escribir mensaje;	
	mensaje = "El resultado del seno del angulo es: "+ConvertirATexto(resultado_cotangente); Escribir mensaje;
FinFuncion

// Acerca de COTANGENTE
Funcion acerca_de_cotangente()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular la cotangente de un angulo.";
	Escribir "Toma un angulo como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El angulo debe ser escrito en grados angulares, NO radianes, es decir, numeros entre -360 y +360";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION SECANTE
Funcion secante()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir angulo, resultado_secante Como Real;
	Definir validador_secante Como Logico;
	validador_secante = Falso;
	resultado_secante = 0;
	Mientras validador_secante = Falso Hacer
		leer_datos_secante(angulo);
		validador_secante = validar_datos_secante(angulo);
	FinMientras	
	resultado_secante = calculo_operacion_secante(angulo);
	imprimir_operacion_secante(resultado_secante, angulo);
FinFuncion

// Lectura SECANTE
Funcion leer_datos_secante(angulo Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer angulo;    
    Limpiar Pantalla;
FinFuncion

// Validacion SECANTE
Funcion validador_secante = validar_datos_secante(angulo Por Valor)
    Definir validador_secante Como Logico;
    Si (angulo >= -360 & angulo <= 360) Entonces // 360 grados angulares (NO radianes)
        validador_secante = Verdadero;
        Esperar 300 Milisegundos;
    SiNo
        validador_secante = Falso;
		Escribir "Argumento invalido";
		acerca_de_secante();
    FinSi
FinFuncion

// Calculo SECANTE
Funcion resultado_secante = calculo_operacion_secante(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_secante Como real;
	
	resultado_secante = 1/COS(angulo);
	
FinFuncion

// Impresion SECANTE
Funcion imprimir_operacion_secante(resultado_secante Por Valor, angulo Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(angulo); Escribir mensaje;	
	mensaje = "El resultado del seno del angulo es: "+ConvertirATexto(resultado_secante); Escribir mensaje;
FinFuncion

// Acerca de SECANTE
Funcion acerca_de_secante()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular la cotangente de un angulo.";
	Escribir "Toma un angulo como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El angulo debe ser escrito en grados angulares, NO radianes, es decir, numeros entre -360 y +360";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// FUNCION COSECANTE
Funcion cosecante()
	// Funciones leer_datos_, validar_datos_, calculo_operacion_, imprimir_operacion_, acerca_de_
	Definir angulo, resultado_cosecante Como Real;
	Definir validador_cosecante Como Logico;
	validador_cosecante = Falso;
	resultado_cosecante = 0;
	Mientras validador_cosecante = Falso Hacer
		leer_datos_cosecante(angulo);
		validador_cosecante = validar_datos_cosecante(angulo);
	FinMientras	
	resultado_cosecante = calculo_operacion_cosecante(angulo);
	imprimir_operacion_cosecante(resultado_cosecante, angulo);
FinFuncion

// Lectura COSECANTE
Funcion leer_datos_cosecante(angulo Por Referencia)
    Escribir "Ingrese el valor del termino";
    leer angulo;    
    Limpiar Pantalla;
FinFuncion

// Validacion COSECANTE
Funcion validador_cosecante = validar_datos_cosecante(angulo Por Valor)
    Definir validador_cosecante Como Logico;
    Si (angulo >= -360 & angulo <= 360) Entonces // 360 grados angulares (NO radianes)
        validador_cosecante = Verdadero;
        Esperar 300 Milisegundos;
    SiNo
        validador_cosecante = Falso;
		Escribir "Argumento invalido";
		acerca_de_cosecante();
    FinSi
FinFuncion

// Calculo COSECANTE
Funcion resultado_cosecante = calculo_operacion_cosecante(termino Por Valor)
    Definir mensaje Como Texto;
	Definir resultado_cosecante Como real;
	
	resultado_cosecante = 1/COS(angulo);
	
FinFuncion

// Impresion COSECANTE
Funcion imprimir_operacion_cosecante(resultado_cosecante Por Valor, angulo Por Valor)
    Definir mensaje Como Texto;   
    mensaje = "El termino es: "+ConvertirATexto(angulo); Escribir mensaje;	
	mensaje = "El resultado del seno del angulo es: "+ConvertirATexto(resultado_cosecante); Escribir mensaje;
FinFuncion

// Acerca de COSECANTE
Funcion acerca_de_cosecante()
    Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas";
    Esperar 300 Milisegundos;
    Escribir "Algoritmo para calcular la cotangente de un angulo.";
	Escribir "Toma un angulo como argumento, y regresa lectura, validacion, calculo e impresion";
	Escribir "El angulo debe ser escrito en grados angulares, NO radianes, es decir, numeros entre -360 y +360";
    Esperar 300 Milisegundos;
FinFuncion



//.............................................................................................................................................................



// ACERCA DEL PROGRAMA
Funcion acerca_de_programa()
	Esperar 300 Milisegundos;
    Escribir "Por: Juan David Gutierrez N.";
    Esperar 300 Milisegundos;
    Escribir "Fundamentos de Programación Utilizando Herramientas Graficas.";
    Esperar 300 Milisegundos;
    Escribir "Programa para Calcular Varias Funciones Matematicas y Estadisticas Utiles en Programacion.";
    Esperar 300 Milisegundos;
FinFuncion
