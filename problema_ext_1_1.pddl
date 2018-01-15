(define (problem problema_ext_1)
	(:domain dominio_hotel_ext_1)
	(:objects 
		H001 H002 H003 H004 H005 H006 H007 - habitacion
		R001 R002 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (plazas-habitacion H002) 5)
		(= (plazas-habitacion H003) 2)
		(= (plazas-habitacion H004) 5)
		(= (plazas-habitacion H005) 5)
		(= (plazas-habitacion H006) 3)
		(= (plazas-habitacion H007) 1)
		(= (personas-reserva R001) 3)
		(= (inicio-reserva R001) 2)
		(= (fin-reserva R001) 2)
		(= (personas-reserva R002) 3)
		(= (inicio-reserva R002) 26)
		(= (fin-reserva R002) 27)
		(= (reservas-descartadas) 0)
		(= (plazas-desperdiciadas) 0)
	)
	(:goal
		(forall (?r - reserva) (reserva-comprobada ?r))
	)
	(:metric minimize
		(+
			(* (reservas-descartadas) 1)
			0
		)
	)
)
