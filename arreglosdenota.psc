Algoritmo arreglosdenota
	Dimension Nombre[10]
	Dimension notas[10]
	definir notas Como Entero
	Escribir '===================================================='
	Escribir '           SISTEMA DE ANÁLISIS DE NOTAS'
	Escribir '                     I.T.F.M'
	Escribir '===================================================='
	Escribir ''
	
	Para i <- 1 Hasta 10
		Repetir
			Escribir "Ingrese su nombre"
			Leer Nombre[i]
			
			Escribir "Ingrese su nota ", Nombre[i]
			Leer notas[i]
			
			Si notas[i] < 0 O notas[i] > 20 Entonces
				Escribir ">> Nota inválida. Ingrese solo valores entre 0 y 20"
			FinSi
			
			Escribir ""
		Hasta Que notas[i] >= 0 Y notas[i] <= 20
	FinPara
	Esperar Tecla
	
	// Procesamiento de datos
	Para i <- 1 Hasta 10
		suma <- suma + notas[i]
		
		Si notas[i] >= 11 Entonces
			aprobado <- aprobado + 1
		Sino
			aplazado <- aplazado + 1
		FinSi
		
		// Calcular nota más alta y más baja
		Si i = 1 Entonces
			mayor <- notas[i]
			menor <- notas[i]
		Sino
			Si notas[i] > mayor Entonces
				mayor <- notas[i]
			FinSi
			Si notas[i] < menor Entonces
				menor <- notas[i]
			FinSi
		FinSi
	FinPara
	
	// Mostrar resultados una sola vez
	Escribir "La nota más alta es: ", mayor
	Escribir "La nota más baja es: ", menor
	Escribir "Estudiantes aprobados: ", aprobado
	Escribir "Estudiantes aplazados: ", aplazado

FinAlgoritmo
