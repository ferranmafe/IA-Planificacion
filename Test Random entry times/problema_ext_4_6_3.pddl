(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 H003 H004 H005 H006 - habitacion
		R001 R002 R003 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 5)
		(= (plazas-habitacion H002) 2)
		(= (plazas-habitacion H003) 2)
		(= (plazas-habitacion H004) 5)
		(= (plazas-habitacion H005) 1)
		(= (plazas-habitacion H006) 4)
		(= (personas-reserva R001) 1)
		(= (inicio-reserva R001) 23)
		(= (fin-reserva R001) 27)
		(= (personas-reserva R002) 3)
		(= (inicio-reserva R002) 5)
		(= (fin-reserva R002) 22)
		(= (personas-reserva R003) 3)
		(= (inicio-reserva R003) 22)
		(= (fin-reserva R003) 25)
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
