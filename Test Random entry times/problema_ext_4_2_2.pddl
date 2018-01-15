(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 - habitacion
		R001 R002 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (plazas-habitacion H002) 5)
		(= (personas-reserva R001) 5)
		(= (inicio-reserva R001) 24)
		(= (fin-reserva R001) 26)
		(= (personas-reserva R002) 5)
		(= (inicio-reserva R002) 6)
		(= (fin-reserva R002) 8)
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
