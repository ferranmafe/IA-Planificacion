(define (problem problema_caso_base)
  (:domain dominio_hotel_ext_1)
  (:objects
    h001 h002 - habitacion
    r001 r002 r003 r004 r005 r006- reserva
  )
  (:init
    (= (plazas-habitacion h001) 4)
    (= (plazas-habitacion h002) 4)
    (= (personas-reserva r001) 4)
    (= (personas-reserva r002) 4)
    (= (personas-reserva r003) 4)
    (= (personas-reserva r004) 4)
    (= (personas-reserva r005) 4)
    (= (personas-reserva r006) 4)
    (= (inicio-reserva r001) 1)
    (= (fin-reserva r001) 15)
    (= (inicio-reserva r002) 16)
    (= (fin-reserva r002) 30)
    (= (inicio-reserva r003) 2)
    (= (fin-reserva r003) 6)
    (= (inicio-reserva r004) 8)
    (= (fin-reserva r004) 12)
    (= (inicio-reserva r005) 16)
    (= (fin-reserva r005) 20)
    (= (inicio-reserva r006) 22)
    (= (fin-reserva r006) 24)
    (= (reservas-descartadas) 0)
  )

  (:goal
    (forall (?r - reserva) (reserva-comprobada ?r))
  )
  (:metric
      minimize (reservas-descartadas)
  )
)
