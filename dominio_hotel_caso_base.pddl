(define (domain dominio_hotel_caso_base)
  (:requirements :strips :fluents :adl)
  (:types
    habitacion
    reserva
  )
  (:predicates
    (habitacion-reservada ?r - reserva ?h - habitacion)
    (reserva-comprobada ?r - reserva)
  )
  (:functions
    (personas-reserva ?r - reserva)
    (plazas-habitacion ?h - habitacion)
    (inicio-reserva ?r - reserva)
    (fin-reserva ?r - reserva)
  )
  (:action asignar-reserva
    :parameters (?h - habitacion ?r - reserva)
    :precondition (and
      (not (reserva-comprobada ?r))
      (<= (personas-reserva ?r) (plazas-habitacion ?h))
      (not
        (exists (?re - reserva)
          (and
            (habitacion-reservada ?re ?h)
            (or
              (and (>= (inicio-reserva ?re) (inicio-reserva ?r)) (<= (inicio-reserva ?re) (fin-reserva ?r)))
              (and (>= (fin-reserva ?re) (inicio-reserva ?r)) (<= (fin-reserva ?re) (fin-reserva ?r)))
              (and (>= (inicio-reserva ?r) (inicio-reserva ?re)) (<= (fin-reserva ?r) (fin-reserva ?re)))
            )
          )
        )
      )
    )
    :effect (and (reserva-comprobada ?r) (habitacion-reservada ?r ?h) )
  )
)
