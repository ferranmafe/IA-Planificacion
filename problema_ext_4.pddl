(define (problem problema_ext_4)
  (:domain dominio_hotel_ext_4)
  (:objects
    h001 h002 - habitacion
    r001 r002 r003 r004 r005 - reserva
  )
  (:init
    (= (plazas-habitacion h001) 3)
    (= (plazas-habitacion h002) 4)
    (= (personas-reserva r001) 2)
    (= (personas-reserva r002) 3)
    (= (personas-reserva r003) 3)
    (= (personas-reserva r004) 4)
    (= (personas-reserva r005) 4)
    (= (inicio-reserva r001) 22)
    (= (fin-reserva r001) 23)
    (= (inicio-reserva r002) 2)
    (= (fin-reserva r002) 5)
    (= (inicio-reserva r003) 4)
    (= (fin-reserva r003) 8)
    (= (inicio-reserva r004) 15)
    (= (fin-reserva r004) 20)
    (= (inicio-reserva r005) 15)
    (= (fin-reserva r005) 21)
    (= (reservas-descartadas) 0)
    (= (plazas-desperdiciadas) 0)
    (= (habitaciones-abiertas) 0)
  )

  (:goal
    (forall (?r - reserva) (reserva-comprobada ?r))
  )
  (:metric minimize
    (+
      (* (reservas-descartadas) 3)
      (+
        (* (plazas-desperdiciadas) 1)
        (* (habitaciones-abiertas) 2)
      )
    )
  )
)
