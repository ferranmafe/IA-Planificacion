(define (problem problema_caso_base)
  (:domain dominio_hotel_ext_1)
  (:objects
    h001 - habitacion
    r001 r002 r003 r004 r005 - reserva
  )
  (:init
    (= (plazas-habitacion h001) 4)
    (= (personas-reserva r001) 4)
    (= (personas-reserva r002) 4)
    (= (personas-reserva r003) 4)
    (= (personas-reserva r004) 4)
    (= (personas-reserva r005) 4)
    (= (inicio-reserva r001) 1)
    (= (fin-reserva r001) 10)
    (= (inicio-reserva r002) 11)
    (= (fin-reserva r002) 20)
    (= (inicio-reserva r003) 21)
    (= (fin-reserva r003) 30)
    (= (inicio-reserva r004) 8)
    (= (fin-reserva r004) 12)
    (= (inicio-reserva r005) 18)
    (= (fin-reserva r005) 22)
    (= (reservas-descartadas) 0)
  )

  (:goal
    (forall (?r - reserva) (reserva-comprobada ?r))
  )
  (:metric
      minimize (reservas-descartadas)
  )
)
