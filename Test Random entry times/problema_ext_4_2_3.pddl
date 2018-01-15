(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 - habitacion
		R001 R002 R003 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (plazas-habitacion H002) 2)
		(= (personas-reserva R001) 4)
		(= (inicio-reserva R001) 18)
		(= (fin-reserva R001) 24)
		(= (personas-reserva R002) 3)
		(= (inicio-reserva R002) 29)
		(= (fin-reserva R002) 29)
		(= (personas-reserva R003) 1)
		(= (inicio-reserva R003) 10)
		(= (fin-reserva R003) 10)
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
