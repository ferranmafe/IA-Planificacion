(define (problem problema_caso_base)
  (:domain dominio_hotel_caso_base)
  (:objects
    h001 h002 - habitacion
    r001 r002 r003 r004 - reserva
  )
  (:init
    (= (plazas-habitacion h001) 3)
    (= (plazas-habitacion h002) 4)
    (= (personas-reserva r001) 2)
    (= (personas-reserva r002) 3)
    (= (personas-reserva r003) 3)
    (= (personas-reserva r004) 4)
    (= (inicio-reserva r001) 1)
    (= (fin-reserva r001) 3)
    (= (inicio-reserva r002) 2)
    (= (fin-reserva r002) 5)
    (= (inicio-reserva r003) 1)
    (= (fin-reserva r003) 3)
    (= (inicio-reserva r004) 15)
    (= (fin-reserva r004) 20)
  )

  (:goal
    (forall (?r - reserva) (reserva-comprobada ?r))
  )
)
