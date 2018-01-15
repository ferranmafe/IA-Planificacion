(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 H003 H004 H005 H006 H007 H008 H009 H010 - habitacion
		R001 R002 R003 R004 R005 R006 R007 R008 R009 R010 - reserva
		R011 R012 R013 R014 R015 R016 R017 R018 R019 R020 - reserva
		R021 R022 R023 R024 R025 R026 R027 R028 R029 R030 - reserva
		R031 R032 R033 R034 R035 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (plazas-habitacion H002) 3)
		(= (plazas-habitacion H003) 2)
		(= (plazas-habitacion H004) 2)
		(= (plazas-habitacion H005) 5)
		(= (plazas-habitacion H006) 4)
		(= (plazas-habitacion H007) 5)
		(= (plazas-habitacion H008) 2)
		(= (plazas-habitacion H009) 4)
		(= (plazas-habitacion H010) 2)
		(= (personas-reserva R001) 1)
		(= (inicio-reserva R001) 27)
		(= (fin-reserva R001) 28)
		(= (personas-reserva R002) 1)
		(= (inicio-reserva R002) 25)
		(= (fin-reserva R002) 25)
		(= (personas-reserva R003) 2)
		(= (inicio-reserva R003) 10)
		(= (fin-reserva R003) 21)
		(= (personas-reserva R004) 3)
		(= (inicio-reserva R004) 6)
		(= (fin-reserva R004) 29)
		(= (personas-reserva R005) 1)
		(= (inicio-reserva R005) 1)
		(= (fin-reserva R005) 21)
		(= (personas-reserva R006) 4)
		(= (inicio-reserva R006) 6)
		(= (fin-reserva R006) 9)
		(= (personas-reserva R007) 3)
		(= (inicio-reserva R007) 21)
		(= (fin-reserva R007) 30)
		(= (personas-reserva R008) 1)
		(= (inicio-reserva R008) 16)
		(= (fin-reserva R008) 22)
		(= (personas-reserva R009) 4)
		(= (inicio-reserva R009) 24)
		(= (fin-reserva R009) 27)
		(= (personas-reserva R010) 1)
		(= (inicio-reserva R010) 7)
		(= (fin-reserva R010) 17)
		(= (personas-reserva R011) 5)
		(= (inicio-reserva R011) 9)
		(= (fin-reserva R011) 20)
		(= (personas-reserva R012) 5)
		(= (inicio-reserva R012) 7)
		(= (fin-reserva R012) 23)
		(= (personas-reserva R013) 4)
		(= (inicio-reserva R013) 13)
		(= (fin-reserva R013) 26)
		(= (personas-reserva R014) 1)
		(= (inicio-reserva R014) 9)
		(= (fin-reserva R014) 21)
		(= (personas-reserva R015) 5)
		(= (inicio-reserva R015) 25)
		(= (fin-reserva R015) 27)
		(= (personas-reserva R016) 4)
		(= (inicio-reserva R016) 12)
		(= (fin-reserva R016) 23)
		(= (personas-reserva R017) 2)
		(= (inicio-reserva R017) 2)
		(= (fin-reserva R017) 23)
		(= (personas-reserva R018) 3)
		(= (inicio-reserva R018) 19)
		(= (fin-reserva R018) 30)
		(= (personas-reserva R019) 3)
		(= (inicio-reserva R019) 7)
		(= (fin-reserva R019) 30)
		(= (personas-reserva R020) 5)
		(= (inicio-reserva R020) 20)
		(= (fin-reserva R020) 22)
		(= (personas-reserva R021) 2)
		(= (inicio-reserva R021) 20)
		(= (fin-reserva R021) 21)
		(= (personas-reserva R022) 4)
		(= (inicio-reserva R022) 25)
		(= (fin-reserva R022) 26)
		(= (personas-reserva R023) 3)
		(= (inicio-reserva R023) 22)
		(= (fin-reserva R023) 27)
		(= (personas-reserva R024) 5)
		(= (inicio-reserva R024) 29)
		(= (fin-reserva R024) 30)
		(= (personas-reserva R025) 3)
		(= (inicio-reserva R025) 1)
		(= (fin-reserva R025) 19)
		(= (personas-reserva R026) 3)
		(= (inicio-reserva R026) 16)
		(= (fin-reserva R026) 21)
		(= (personas-reserva R027) 1)
		(= (inicio-reserva R027) 6)
		(= (fin-reserva R027) 17)
		(= (personas-reserva R028) 3)
		(= (inicio-reserva R028) 19)
		(= (fin-reserva R028) 24)
		(= (personas-reserva R029) 4)
		(= (inicio-reserva R029) 9)
		(= (fin-reserva R029) 19)
		(= (personas-reserva R030) 2)
		(= (inicio-reserva R030) 4)
		(= (fin-reserva R030) 23)
		(= (personas-reserva R031) 4)
		(= (inicio-reserva R031) 7)
		(= (fin-reserva R031) 25)
		(= (personas-reserva R032) 3)
		(= (inicio-reserva R032) 4)
		(= (fin-reserva R032) 21)
		(= (personas-reserva R033) 5)
		(= (inicio-reserva R033) 15)
		(= (fin-reserva R033) 18)
		(= (personas-reserva R034) 2)
		(= (inicio-reserva R034) 2)
		(= (fin-reserva R034) 4)
		(= (personas-reserva R035) 1)
		(= (inicio-reserva R035) 18)
		(= (fin-reserva R035) 18)
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