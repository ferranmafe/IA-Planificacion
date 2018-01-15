(define (problem problema_ext_3)
	(:domain dominio_hotel_ext_3)
	(:objects
		H001 - habitacion
		R001 R002 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (personas-reserva R001) 4)
		(= (inicio-reserva R001) 1)
		(= (fin-reserva R001) 2)
		(= (personas-reserva R002) 3)
		(= (inicio-reserva R002) 1)
		(= (fin-reserva R002) 2)
		(= (reservas-descartadas) 0)
		(= (plazas-desperdiciadas) 0)
	)
	(:goal
		(forall (?r - reserva) (reserva-comprobada ?r))
	)
	(:metric minimize
		(+
			(* (reservas-descartadas) 5)
			(* (plazas-desperdiciadas) 1)
		)
	)
)
