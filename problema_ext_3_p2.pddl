(define (problem problema_ext_3)
	(:domain dominio_hotel_ext_3)
	(:objects
		H001 - habitacion
		R001 R002 R003 R004 R005 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (personas-reserva R001) 4)
		(= (inicio-reserva R001) 19)
		(= (fin-reserva R001) 20)
		(= (personas-reserva R002) 3)
		(= (inicio-reserva R002) 19)
		(= (fin-reserva R002) 20)
		(= (personas-reserva R003) 3)
		(= (inicio-reserva R003) 21)
		(= (fin-reserva R003) 22)
		(= (personas-reserva R004) 2)
		(= (inicio-reserva R004) 21)
		(= (fin-reserva R004) 22)
		(= (personas-reserva R005) 5)
		(= (inicio-reserva R005) 19)
		(= (fin-reserva R005) 22)
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
