(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 H003 H004 H005 H006 - habitacion
		R001 R002 R003 R004 R005 R006 R007 R008 R009 R010 - reserva
		R011 R012 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 1)
		(= (plazas-habitacion H002) 1)
		(= (plazas-habitacion H003) 1)
		(= (plazas-habitacion H004) 2)
		(= (plazas-habitacion H005) 4)
		(= (plazas-habitacion H006) 1)
		(= (personas-reserva R001) 2)
		(= (inicio-reserva R001) 26)
		(= (fin-reserva R001) 26)
		(= (personas-reserva R002) 2)
		(= (inicio-reserva R002) 24)
		(= (fin-reserva R002) 29)
		(= (personas-reserva R003) 4)
		(= (inicio-reserva R003) 10)
		(= (fin-reserva R003) 14)
		(= (personas-reserva R004) 4)
		(= (inicio-reserva R004) 2)
		(= (fin-reserva R004) 4)
		(= (personas-reserva R005) 1)
		(= (inicio-reserva R005) 25)
		(= (fin-reserva R005) 29)
		(= (personas-reserva R006) 5)
		(= (inicio-reserva R006) 29)
		(= (fin-reserva R006) 30)
		(= (personas-reserva R007) 3)
		(= (inicio-reserva R007) 29)
		(= (fin-reserva R007) 30)
		(= (personas-reserva R008) 5)
		(= (inicio-reserva R008) 1)
		(= (fin-reserva R008) 27)
		(= (personas-reserva R009) 3)
		(= (inicio-reserva R009) 28)
		(= (fin-reserva R009) 29)
		(= (personas-reserva R010) 3)
		(= (inicio-reserva R010) 12)
		(= (fin-reserva R010) 19)
		(= (personas-reserva R011) 1)
		(= (inicio-reserva R011) 2)
		(= (fin-reserva R011) 12)
		(= (personas-reserva R012) 2)
		(= (inicio-reserva R012) 1)
		(= (fin-reserva R012) 11)
		(= (reservas-descartadas) 0)
		(= (plazas-desperdiciadas) 0)
		(= (habitaciones-abiertas) 0)
	)
	(:goal
		(forall (?r - reserva) (reserva-comprobada ?r))
	)
	(:metric minimize
		(+
			(* (reservas-descartadas) 10)
			(+
				(* (habitaciones-abiertas) 5)
				(* (plazas-desperdiciadas) 1)
			)
		)
	)
)