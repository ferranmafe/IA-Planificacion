(define (problem problema_ext_4_dos_habitaciones)
	(:domain dominio_hotel_ext_4)
	(:objects
		H001 H002 H003 - habitacion
		R001 R002 R003 R004 R005 R006 R007 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 2)
		(= (plazas-habitacion H002) 2)
		(= (plazas-habitacion H003) 2)
		(= (personas-reserva R001) 1)
		(= (inicio-reserva R001) 1)
		(= (fin-reserva R001) 2)
		(= (personas-reserva R002) 2)
		(= (inicio-reserva R002) 1)
		(= (fin-reserva R002) 2)
		(= (personas-reserva R003) 1)
		(= (inicio-reserva R003) 3)
		(= (fin-reserva R003) 4)
		(= (personas-reserva R004) 2)
		(= (inicio-reserva R004) 3)
		(= (fin-reserva R004) 4)
		(= (personas-reserva R005) 1)
		(= (inicio-reserva R005) 5)
		(= (fin-reserva R005) 6)
		(= (personas-reserva R006) 2)
		(= (inicio-reserva R006) 5)
		(= (fin-reserva R006) 6)
		(= (personas-reserva R007) 2)
		(= (inicio-reserva R007) 3)
		(= (fin-reserva R007) 4)
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
