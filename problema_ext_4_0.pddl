(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects
		H001 H002 H003 H004 H005 - habitacion
		R001 R002 R003 R004 R005 R006 R007 R008 R009 R010 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (plazas-habitacion H002) 3)
		(= (plazas-habitacion H003) 5)
		(= (plazas-habitacion H004) 3)
		(= (plazas-habitacion H005) 5)
		(= (personas-reserva R001) 2)
		(= (inicio-reserva R001) 3)
		(= (fin-reserva R001) 13)
		(= (personas-reserva R002) 2)
		(= (inicio-reserva R002) 14)
		(= (fin-reserva R002) 18)
		(= (personas-reserva R003) 2)
		(= (inicio-reserva R003) 22)
		(= (fin-reserva R003) 25)
		(= (personas-reserva R004) 4)
		(= (inicio-reserva R004) 30)
		(= (fin-reserva R004) 30)
		(= (personas-reserva R005) 3)
		(= (inicio-reserva R005) 11)
		(= (fin-reserva R005) 20)
		(= (personas-reserva R006) 2)
		(= (inicio-reserva R006) 21)
		(= (fin-reserva R006) 25)
		(= (personas-reserva R007) 5)
		(= (inicio-reserva R007) 26)
		(= (fin-reserva R007) 27)
		(= (personas-reserva R008) 3)
		(= (inicio-reserva R008) 13)
		(= (fin-reserva R008) 26)
		(= (personas-reserva R009) 4)
		(= (inicio-reserva R009) 25)
		(= (fin-reserva R009) 26)
		(= (personas-reserva R010) 1)
		(= (inicio-reserva R010) 16)
		(= (fin-reserva R010) 28)
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
