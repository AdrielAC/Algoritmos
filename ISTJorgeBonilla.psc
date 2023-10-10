Algoritmo ISTJorgeBonilla
	Definir ConFecha Como Caracter
	Definir NomEstudiante Como Caracter
	Definir Carrera Como Entero 
	Definir Matricula, Mensualidad como Entero
	Escribir "*** --- Instituto Superior Tecnologico Jorge Bonilla ---****"
	Escribir "SISTEMA DE PAGOS DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NomEstudiante
	
	Escribir "¿Qué carrera estudias?"
	Escribir "[1] Computación e Informatica"
	Escribir "[2] Secretariado"
	Escribir "[3] Administración" 
	Escribir "Seleccione la opción: " Sin saltar
	Leer Carrera 
	Si (Carrera = 1) Entonces 
		Matricula = 300
		Mensualidad = 450
    Finsi 
	Si (Carrera = 2) Entonces
		Matricula = 200
			Mensualidad = 350 
	FinSi
	Si (Carrera = 3) Entonces
			Matricula = 250
			Mensualidad = 400 
		FinSi

		Escribir "¿Esta en el ranngo de fecha permitido?" Sin saltar 
		Escribir "(1) = SI (0) = NO" Sin Saltar 
	Leer conFecha  
    Si (conFecha = "SI") Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas"
		Escribir "¿Qué concepto desea pagar?"
		Escribir "[1] Matricula o mensualidad"
		Escribir "[2] Matricula y mensualidades"
		Escribir "[3] Todo el semestre"
		Escribir "[4] Toda la carrera" 
		Escribir "Seleccione el concepto a pagar: " Sin saltar
		Leer concepto 
		
		Si (Concepto = 1) Entonces
			Definir OpcionNM Como Entero
			Escribir "Elige la opcion a pagar" 
			Escribir "[1] Matricula"
			Escribir "[2] Mensualidad"
			Leer OpcionNM 
			Si OpcionNM = 1 Entonces
				Escribir "Usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad 
			Fin Si
		SiNo
			Escribir "No se puede realizar la operacion: " 
		Fin Si
		Si (concepto = 2) Entonces 
			Definir NroMensualidades Como Entero
			Escribir "¿Cuantas mensualidades desea pagar?"
			Leer NroMensualidades 
			Si (NroMensualidades >=2) Y (NroMensualidades <=4) Entonces 
				Definir NueMatricula, NueMensualidad, MontoPagar Como Real
				NueMatricula = Matricula * 0.05
				NueMensualidad = Mensualidad * 0.10
				MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)* NroMensualidades)
				Escribir "Usted debe pagar: " MontoPagar
			SiNo
				Escribir "88888No se puede realizar la operación"
			Fin Si
			
			
			
		SiNo
			Escribir "No se puede realizar la operación"
		Fin Si
	Si (concepto = 3) Entonces 
			Definir NueMatricula, NueMensualidad, MontoPagar Como Real
			NueMatricula = Matricula * 0.10
			NueMensualidad = Mensualidad * 0.20
			MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)* NroMensualidades)
			Escribir "Usted debe pagar: " MontoPagar
		Fin Si
	Si (Concepto = 4) Entonces 
			Definir NueMatricula, NueMensualidad, MontoPagar Como Real
			NueMatricula = Matricula * 0.20
			NueMensualidad = Mensualidad * 0.40
			MontoPagar = ((Matricula-NueMatricula)*6)+ ((Mensualidad - NueMensualidad)*30) 
			Escribir "Usted debe pagar: " MontoPagar
		FinSi
		
	Sino 
		Escribir "El estudiante esta fuera del rango de las fechas permitidas"
		Definir multa como Real 
		multa = Mensualidad*0.01
		Mensualidad = Mensualidad + multa
		Escribir "La nueva mensualidad es: " Mensualidad
	FinSi
	
FinAlgoritmo
