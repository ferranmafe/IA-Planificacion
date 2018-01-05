(define (problem problema_ext_1)
  (:domain dominio_hotel_ext_1)
  (:objects
    h001 h002 h003 h004 h005 h006 h007 h008 h009 h010 h011 h012 h013 h014 h015 - habitacion
		r001 r002 r003 r004 r005 r006 r007 r008 r009 r010 r011 r012 r013 r014 r015 r016 r017 r018 r019 r020 r021 r022 r023 r024 r025 r026 r027 r028 r029 r030 - reserva
  )
  (:init
    (= (plazas-habitacion h001) 1)
		(= (plazas-habitacion h002) 4)
		(= (plazas-habitacion h003) 2)
		(= (plazas-habitacion h004) 2)
		(= (plazas-habitacion h005) 4)
		(= (plazas-habitacion h006) 2)
		(= (plazas-habitacion h007) 2)
		(= (plazas-habitacion h008) 4)
		(= (plazas-habitacion h009) 1)
		(= (plazas-habitacion h010) 3)
		(= (plazas-habitacion h011) 4)
		(= (plazas-habitacion h012) 1)
		(= (plazas-habitacion h013) 2)
		(= (plazas-habitacion h014) 4)
		(= (plazas-habitacion h015) 3)
		(= (personas-reserva r001) 1)
		(= (inicio-reserva r001) 3)
		(= (fin-reserva r001) 14)
		(= (personas-reserva r002) 4)
		(= (inicio-reserva r002) 22)
		(= (fin-reserva r002) 26)
		(= (personas-reserva r003) 4)
		(= (inicio-reserva r003) 9)
		(= (fin-reserva r003) 14)
		(= (personas-reserva r004) 1)
		(= (inicio-reserva r004) 27)
		(= (fin-reserva r004) 30)
		(= (personas-reserva r005) 1)
		(= (inicio-reserva r005) 26)
		(= (fin-reserva r005) 30)
		(= (personas-reserva r006) 3)
		(= (inicio-reserva r006) 12)
		(= (fin-reserva r006) 17)
		(= (personas-reserva r007) 1)
		(= (inicio-reserva r007) 10)
		(= (fin-reserva r007) 19)
		(= (personas-reserva r008) 4)
		(= (inicio-reserva r008) 3)
		(= (fin-reserva r008) 25)
		(= (personas-reserva r009) 3)
		(= (inicio-reserva r009) 26)
		(= (fin-reserva r009) 26)
		(= (personas-reserva r010) 2)
		(= (inicio-reserva r010) 11)
		(= (fin-reserva r010) 12)
		(= (personas-reserva r011) 5)
		(= (inicio-reserva r011) 23)
		(= (fin-reserva r011) 25)
		(= (personas-reserva r012) 4)
		(= (inicio-reserva r012) 12)
		(= (fin-reserva r012) 13)
		(= (personas-reserva r013) 1)
		(= (inicio-reserva r013) 16)
		(= (fin-reserva r013) 23)
		(= (personas-reserva r014) 1)
		(= (inicio-reserva r014) 29)
		(= (fin-reserva r014) 30)
		(= (personas-reserva r015) 4)
		(= (inicio-reserva r015) 7)
		(= (fin-reserva r015) 26)
		(= (personas-reserva r016) 5)
		(= (inicio-reserva r016) 2)
		(= (fin-reserva r016) 4)
		(= (personas-reserva r017) 5)
		(= (inicio-reserva r017) 7)
		(= (fin-reserva r017) 16)
		(= (personas-reserva r018) 4)
		(= (inicio-reserva r018) 13)
		(= (fin-reserva r018) 24)
		(= (personas-reserva r019) 2)
		(= (inicio-reserva r019) 16)
		(= (fin-reserva r019) 26)
		(= (personas-reserva r020) 1)
		(= (inicio-reserva r020) 25)
		(= (fin-reserva r020) 25)
		(= (personas-reserva r021) 2)
		(= (inicio-reserva r021) 21)
		(= (fin-reserva r021) 27)
		(= (personas-reserva r022) 5)
		(= (inicio-reserva r022) 29)
		(= (fin-reserva r022) 30)
		(= (personas-reserva r023) 2)
		(= (inicio-reserva r023) 23)
		(= (fin-reserva r023) 28)
		(= (personas-reserva r024) 4)
		(= (inicio-reserva r024) 14)
		(= (fin-reserva r024) 28)
		(= (personas-reserva r025) 1)
		(= (inicio-reserva r025) 13)
		(= (fin-reserva r025) 16)
		(= (personas-reserva r026) 1)
		(= (inicio-reserva r026) 3)
		(= (fin-reserva r026) 16)
		(= (personas-reserva r027) 5)
		(= (inicio-reserva r027) 29)
		(= (fin-reserva r027) 30)
		(= (personas-reserva r028) 1)
		(= (inicio-reserva r028) 11)
		(= (fin-reserva r028) 11)
		(= (personas-reserva r029) 1)
		(= (inicio-reserva r029) 3)
		(= (fin-reserva r029) 16)
		(= (personas-reserva r030) 4)
		(= (inicio-reserva r030) 22)
		(= (fin-reserva r030) 23)
		(= (reservas-descartadas) 0)
  )

  (:goal
    (forall (?r - reserva) (reserva-comprobada ?r))
  )
  (:metric minimize (reservas-descartadas)
  )
)
