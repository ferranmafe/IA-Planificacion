(define (domain dominio_hotel)
  (:requirements :strips :fluents :adl)
  (:types
    habitacion
    reserva
  )
  (:predicates
    (habitacion-reservada ?r - reserva ?h - habitacion)
    (reserva-hecha ?r - reserva)
    (reserva-descartada ?r - reserva)
  )
  (:functions
    (personas-reserva ?r - reserva)
    (plazas-habitacion ?h - habitacion)
    (inicio-reserva ?r - reserva)
    (fin-reserva ?r - reserva)
    (reservas-descartadas)
  )
  (:action asignar-reserva
    :parameters (?h - habitacion ?r - reserva)
    :precondition (and
      (not
        (or
          (reserva-hecha ?r)
          (reserva-descartada ?r)
        )
      )
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
    :effect (and (reserva-hecha ?r) (habitacion-reservada ?r ?h) )
  )

  (:action descartar-reserva
    :parameters (?r - reserva)
    :precondition (not
      (or
        (reserva-hecha ?r)
        (reserva-descartada ?r)
      )
    )
    :effect (and (reserva-descartada ?r) (increase (reservas-descartadas) 1))
  )
)
