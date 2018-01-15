(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 - habitacion
		R001 R002 R003 R004 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 3)
		(= (plazas-habitacion H002) 3)
		(= (personas-reserva R001) 3)
		(= (inicio-reserva R001) 23)
		(= (fin-reserva R001) 24)
		(= (personas-reserva R002) 4)
		(= (inicio-reserva R002) 15)
		(= (fin-reserva R002) 24)
		(= (personas-reserva R003) 2)
		(= (inicio-reserva R003) 28)
		(= (fin-reserva R003) 28)
		(= (personas-reserva R004) 3)
		(= (inicio-reserva R004) 25)
		(= (fin-reserva R004) 27)
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
