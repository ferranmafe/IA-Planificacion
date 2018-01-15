(define (problem problema_ext_4)
	(:domain dominio_hotel_ext_4)
	(:objects 
		H001 H002 H003 H004 H005 H006 H007 H008 H009 H010 - habitacion
		H011 H012 H013 H014 H015 H016 H017 H018 H019 H020 - habitacion
		H021 H022 H023 H024 H025 H026 H027 H028 H029 H030 - habitacion
		H031 H032 H033 H034 H035 H036 H037 H038 H039 H040 - habitacion
		R001 R002 R003 R004 R005 R006 R007 R008 R009 R010 - reserva
		R011 R012 R013 R014 R015 R016 R017 R018 R019 R020 - reserva
		R021 R022 R023 R024 R025 R026 R027 R028 R029 R030 - reserva
		R031 R032 R033 R034 R035 R036 R037 R038 R039 R040 - reserva
		R041 R042 R043 R044 R045 R046 R047 R048 R049 R050 - reserva
		R051 R052 R053 R054 R055 R056 R057 R058 R059 R060 - reserva
		R061 R062 R063 R064 R065 R066 R067 R068 R069 R070 - reserva
		R071 R072 R073 R074 R075 R076 R077 R078 R079 R080 - reserva
	)
	(:init
		(= (plazas-habitacion H001) 4)
		(= (plazas-habitacion H002) 2)
		(= (plazas-habitacion H003) 1)
		(= (plazas-habitacion H004) 4)
		(= (plazas-habitacion H005) 1)
		(= (plazas-habitacion H006) 1)
		(= (plazas-habitacion H007) 1)
		(= (plazas-habitacion H008) 5)
		(= (plazas-habitacion H009) 3)
		(= (plazas-habitacion H010) 5)
		(= (plazas-habitacion H011) 3)
		(= (plazas-habitacion H012) 1)
		(= (plazas-habitacion H013) 1)
		(= (plazas-habitacion H014) 2)
		(= (plazas-habitacion H015) 5)
		(= (plazas-habitacion H016) 2)
		(= (plazas-habitacion H017) 1)
		(= (plazas-habitacion H018) 2)
		(= (plazas-habitacion H019) 4)
		(= (plazas-habitacion H020) 4)
		(= (plazas-habitacion H021) 2)
		(= (plazas-habitacion H022) 3)
		(= (plazas-habitacion H023) 4)
		(= (plazas-habitacion H024) 1)
		(= (plazas-habitacion H025) 5)
		(= (plazas-habitacion H026) 4)
		(= (plazas-habitacion H027) 1)
		(= (plazas-habitacion H028) 4)
		(= (plazas-habitacion H029) 5)
		(= (plazas-habitacion H030) 3)
		(= (plazas-habitacion H031) 1)
		(= (plazas-habitacion H032) 5)
		(= (plazas-habitacion H033) 3)
		(= (plazas-habitacion H034) 5)
		(= (plazas-habitacion H035) 3)
		(= (plazas-habitacion H036) 4)
		(= (plazas-habitacion H037) 5)
		(= (plazas-habitacion H038) 5)
		(= (plazas-habitacion H039) 4)
		(= (plazas-habitacion H040) 5)
		(= (personas-reserva R001) 3)
		(= (inicio-reserva R001) 19)
		(= (fin-reserva R001) 21)
		(= (personas-reserva R002) 3)
		(= (inicio-reserva R002) 24)
		(= (fin-reserva R002) 29)
		(= (personas-reserva R003) 5)
		(= (inicio-reserva R003) 1)
		(= (fin-reserva R003) 2)
		(= (personas-reserva R004) 1)
		(= (inicio-reserva R004) 17)
		(= (fin-reserva R004) 29)
		(= (personas-reserva R005) 2)
		(= (inicio-reserva R005) 1)
		(= (fin-reserva R005) 24)
		(= (personas-reserva R006) 4)
		(= (inicio-reserva R006) 2)
		(= (fin-reserva R006) 28)
		(= (personas-reserva R007) 1)
		(= (inicio-reserva R007) 28)
		(= (fin-reserva R007) 28)
		(= (personas-reserva R008) 2)
		(= (inicio-reserva R008) 6)
		(= (fin-reserva R008) 19)
		(= (personas-reserva R009) 5)
		(= (inicio-reserva R009) 23)
		(= (fin-reserva R009) 26)
		(= (personas-reserva R010) 5)
		(= (inicio-reserva R010) 3)
		(= (fin-reserva R010) 24)
		(= (personas-reserva R011) 1)
		(= (inicio-reserva R011) 18)
		(= (fin-reserva R011) 24)
		(= (personas-reserva R012) 4)
		(= (inicio-reserva R012) 11)
		(= (fin-reserva R012) 19)
		(= (personas-reserva R013) 1)
		(= (inicio-reserva R013) 28)
		(= (fin-reserva R013) 30)
		(= (personas-reserva R014) 1)
		(= (inicio-reserva R014) 16)
		(= (fin-reserva R014) 23)
		(= (personas-reserva R015) 4)
		(= (inicio-reserva R015) 30)
		(= (fin-reserva R015) 30)
		(= (personas-reserva R016) 5)
		(= (inicio-reserva R016) 22)
		(= (fin-reserva R016) 24)
		(= (personas-reserva R017) 5)
		(= (inicio-reserva R017) 24)
		(= (fin-reserva R017) 26)
		(= (personas-reserva R018) 2)
		(= (inicio-reserva R018) 14)
		(= (fin-reserva R018) 19)
		(= (personas-reserva R019) 2)
		(= (inicio-reserva R019) 16)
		(= (fin-reserva R019) 24)
		(= (personas-reserva R020) 5)
		(= (inicio-reserva R020) 16)
		(= (fin-reserva R020) 23)
		(= (personas-reserva R021) 5)
		(= (inicio-reserva R021) 19)
		(= (fin-reserva R021) 26)
		(= (personas-reserva R022) 2)
		(= (inicio-reserva R022) 11)
		(= (fin-reserva R022) 14)
		(= (personas-reserva R023) 2)
		(= (inicio-reserva R023) 27)
		(= (fin-reserva R023) 28)
		(= (personas-reserva R024) 1)
		(= (inicio-reserva R024) 11)
		(= (fin-reserva R024) 25)
		(= (personas-reserva R025) 4)
		(= (inicio-reserva R025) 28)
		(= (fin-reserva R025) 29)
		(= (personas-reserva R026) 5)
		(= (inicio-reserva R026) 18)
		(= (fin-reserva R026) 30)
		(= (personas-reserva R027) 4)
		(= (inicio-reserva R027) 2)
		(= (fin-reserva R027) 14)
		(= (personas-reserva R028) 4)
		(= (inicio-reserva R028) 24)
		(= (fin-reserva R028) 30)
		(= (personas-reserva R029) 4)
		(= (inicio-reserva R029) 5)
		(= (fin-reserva R029) 25)
		(= (personas-reserva R030) 2)
		(= (inicio-reserva R030) 24)
		(= (fin-reserva R030) 28)
		(= (personas-reserva R031) 5)
		(= (inicio-reserva R031) 20)
		(= (fin-reserva R031) 21)
		(= (personas-reserva R032) 1)
		(= (inicio-reserva R032) 4)
		(= (fin-reserva R032) 6)
		(= (personas-reserva R033) 4)
		(= (inicio-reserva R033) 27)
		(= (fin-reserva R033) 28)
		(= (personas-reserva R034) 2)
		(= (inicio-reserva R034) 7)
		(= (fin-reserva R034) 22)
		(= (personas-reserva R035) 3)
		(= (inicio-reserva R035) 17)
		(= (fin-reserva R035) 21)
		(= (personas-reserva R036) 2)
		(= (inicio-reserva R036) 8)
		(= (fin-reserva R036) 10)
		(= (personas-reserva R037) 4)
		(= (inicio-reserva R037) 27)
		(= (fin-reserva R037) 29)
		(= (personas-reserva R038) 5)
		(= (inicio-reserva R038) 8)
		(= (fin-reserva R038) 19)
		(= (personas-reserva R039) 4)
		(= (inicio-reserva R039) 9)
		(= (fin-reserva R039) 10)
		(= (personas-reserva R040) 2)
		(= (inicio-reserva R040) 29)
		(= (fin-reserva R040) 30)
		(= (personas-reserva R041) 1)
		(= (inicio-reserva R041) 9)
		(= (fin-reserva R041) 26)
		(= (personas-reserva R042) 2)
		(= (inicio-reserva R042) 23)
		(= (fin-reserva R042) 25)
		(= (personas-reserva R043) 1)
		(= (inicio-reserva R043) 15)
		(= (fin-reserva R043) 26)
		(= (personas-reserva R044) 4)
		(= (inicio-reserva R044) 25)
		(= (fin-reserva R044) 30)
		(= (personas-reserva R045) 2)
		(= (inicio-reserva R045) 12)
		(= (fin-reserva R045) 13)
		(= (personas-reserva R046) 4)
		(= (inicio-reserva R046) 14)
		(= (fin-reserva R046) 26)
		(= (personas-reserva R047) 3)
		(= (inicio-reserva R047) 22)
		(= (fin-reserva R047) 26)
		(= (personas-reserva R048) 1)
		(= (inicio-reserva R048) 28)
		(= (fin-reserva R048) 29)
		(= (personas-reserva R049) 5)
		(= (inicio-reserva R049) 15)
		(= (fin-reserva R049) 30)
		(= (personas-reserva R050) 3)
		(= (inicio-reserva R050) 24)
		(= (fin-reserva R050) 30)
		(= (personas-reserva R051) 1)
		(= (inicio-reserva R051) 28)
		(= (fin-reserva R051) 29)
		(= (personas-reserva R052) 5)
		(= (inicio-reserva R052) 29)
		(= (fin-reserva R052) 29)
		(= (personas-reserva R053) 4)
		(= (inicio-reserva R053) 1)
		(= (fin-reserva R053) 9)
		(= (personas-reserva R054) 4)
		(= (inicio-reserva R054) 17)
		(= (fin-reserva R054) 20)
		(= (personas-reserva R055) 2)
		(= (inicio-reserva R055) 7)
		(= (fin-reserva R055) 9)
		(= (personas-reserva R056) 2)
		(= (inicio-reserva R056) 4)
		(= (fin-reserva R056) 20)
		(= (personas-reserva R057) 3)
		(= (inicio-reserva R057) 3)
		(= (fin-reserva R057) 3)
		(= (personas-reserva R058) 5)
		(= (inicio-reserva R058) 24)
		(= (fin-reserva R058) 29)
		(= (personas-reserva R059) 1)
		(= (inicio-reserva R059) 22)
		(= (fin-reserva R059) 30)
		(= (personas-reserva R060) 4)
		(= (inicio-reserva R060) 27)
		(= (fin-reserva R060) 29)
		(= (personas-reserva R061) 2)
		(= (inicio-reserva R061) 7)
		(= (fin-reserva R061) 18)
		(= (personas-reserva R062) 5)
		(= (inicio-reserva R062) 9)
		(= (fin-reserva R062) 20)
		(= (personas-reserva R063) 4)
		(= (inicio-reserva R063) 11)
		(= (fin-reserva R063) 27)
		(= (personas-reserva R064) 3)
		(= (inicio-reserva R064) 28)
		(= (fin-reserva R064) 28)
		(= (personas-reserva R065) 4)
		(= (inicio-reserva R065) 30)
		(= (fin-reserva R065) 30)
		(= (personas-reserva R066) 4)
		(= (inicio-reserva R066) 29)
		(= (fin-reserva R066) 30)
		(= (personas-reserva R067) 3)
		(= (inicio-reserva R067) 5)
		(= (fin-reserva R067) 10)
		(= (personas-reserva R068) 4)
		(= (inicio-reserva R068) 16)
		(= (fin-reserva R068) 26)
		(= (personas-reserva R069) 4)
		(= (inicio-reserva R069) 29)
		(= (fin-reserva R069) 29)
		(= (personas-reserva R070) 4)
		(= (inicio-reserva R070) 6)
		(= (fin-reserva R070) 13)
		(= (personas-reserva R071) 5)
		(= (inicio-reserva R071) 1)
		(= (fin-reserva R071) 12)
		(= (personas-reserva R072) 5)
		(= (inicio-reserva R072) 20)
		(= (fin-reserva R072) 23)
		(= (personas-reserva R073) 4)
		(= (inicio-reserva R073) 18)
		(= (fin-reserva R073) 25)
		(= (personas-reserva R074) 5)
		(= (inicio-reserva R074) 12)
		(= (fin-reserva R074) 28)
		(= (personas-reserva R075) 3)
		(= (inicio-reserva R075) 20)
		(= (fin-reserva R075) 24)
		(= (personas-reserva R076) 2)
		(= (inicio-reserva R076) 23)
		(= (fin-reserva R076) 29)
		(= (personas-reserva R077) 1)
		(= (inicio-reserva R077) 30)
		(= (fin-reserva R077) 30)
		(= (personas-reserva R078) 3)
		(= (inicio-reserva R078) 8)
		(= (fin-reserva R078) 14)
		(= (personas-reserva R079) 2)
		(= (inicio-reserva R079) 20)
		(= (fin-reserva R079) 23)
		(= (personas-reserva R080) 2)
		(= (inicio-reserva R080) 30)
		(= (fin-reserva R080) 30)
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
