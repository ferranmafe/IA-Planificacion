(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 - habitacion
		R001 R002 R003 R004 R005 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (plazas-habitacion H002) 4)
		(= (personas-reserva R001) 4)
		(= (inicio-reserva R001) 22)
		(= (fin-reserva R001) 25)
		(= (personas-reserva R002) 1)
		(= (inicio-reserva R002) 23)
		(= (fin-reserva R002) 29)
		(= (personas-reserva R003) 2)
		(= (inicio-reserva R003) 19)
		(= (fin-reserva R003) 27)
		(= (personas-reserva R004) 1)
		(= (inicio-reserva R004) 15)
		(= (fin-reserva R004) 27)
		(= (personas-reserva R005) 4)
		(= (inicio-reserva R005) 5)
		(= (fin-reserva R005) 20)
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
