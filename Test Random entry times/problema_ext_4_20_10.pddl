(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 H003 H004 H005 H006 H007 H008 H009 H010 - habitacion
		H011 H012 H013 H014 H015 H016 H017 H018 H019 H020 - habitacion
		R001 R002 R003 R004 R005 R006 R007 R008 R009 R010 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 5)
		(= (plazas-habitacion H002) 1)
		(= (plazas-habitacion H003) 2)
		(= (plazas-habitacion H004) 5)
		(= (plazas-habitacion H005) 4)
		(= (plazas-habitacion H006) 1)
		(= (plazas-habitacion H007) 5)
		(= (plazas-habitacion H008) 1)
		(= (plazas-habitacion H009) 1)
		(= (plazas-habitacion H010) 5)
		(= (plazas-habitacion H011) 2)
		(= (plazas-habitacion H012) 3)
		(= (plazas-habitacion H013) 3)
		(= (plazas-habitacion H014) 1)
		(= (plazas-habitacion H015) 1)
		(= (plazas-habitacion H016) 1)
		(= (plazas-habitacion H017) 3)
		(= (plazas-habitacion H018) 1)
		(= (plazas-habitacion H019) 4)
		(= (plazas-habitacion H020) 3)
		(= (personas-reserva R001) 1)
		(= (inicio-reserva R001) 13)
		(= (fin-reserva R001) 14)
		(= (personas-reserva R002) 3)
		(= (inicio-reserva R002) 26)
		(= (fin-reserva R002) 27)
		(= (personas-reserva R003) 1)
		(= (inicio-reserva R003) 16)
		(= (fin-reserva R003) 26)
		(= (personas-reserva R004) 2)
		(= (inicio-reserva R004) 2)
		(= (fin-reserva R004) 26)
		(= (personas-reserva R005) 3)
		(= (inicio-reserva R005) 8)
		(= (fin-reserva R005) 12)
		(= (personas-reserva R006) 1)
		(= (inicio-reserva R006) 13)
		(= (fin-reserva R006) 27)
		(= (personas-reserva R007) 4)
		(= (inicio-reserva R007) 16)
		(= (fin-reserva R007) 17)
		(= (personas-reserva R008) 5)
		(= (inicio-reserva R008) 20)
		(= (fin-reserva R008) 27)
		(= (personas-reserva R009) 2)
		(= (inicio-reserva R009) 15)
		(= (fin-reserva R009) 30)
		(= (personas-reserva R010) 5)
		(= (inicio-reserva R010) 2)
		(= (fin-reserva R010) 23)
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
