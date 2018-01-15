(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 - habitacion
		R001 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 1)
		(= (plazas-habitacion H002) 1)
		(= (personas-reserva R001) 3)
		(= (inicio-reserva R001) 7)
		(= (fin-reserva R001) 19)
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
