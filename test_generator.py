from pathlib import Path
import random

def get_extension():
    ext = int(input("Selecciona la extensión del problema (1,3,4):\n"))
    while (ext != 1 and ext != 3 and ext != 4):
        ext = int(input("Extensión inválida:\n"))
    return ext

def create_file(ext):
    i = 0
    path_name = "./problema_ext_" + str(ext) + "_" + str(i) +  ".pddl"
    existing_file = Path(path_name)
    while existing_file.exists():
        i += 1
        path_name = "./problema_ext_" + str(ext) + "_" + str(i) +  ".pddl"
        existing_file = Path(path_name)
    my_file = open(path_name, "w")
    return my_file

def get_num_rooms():
    r = int(input("Introduce el número de habitaciones del hotel [1,x]:\n"))
    while (r < 1):
        r = int(input("Número inválido!\n"))
    return r

def get_num_booking():
    r = int(input("Introduce el número de reservas del hotel [0,x]:\n"))
    while (r < 0):
        r = int(input("Número inválido!\n"))
    return r

def get_3_digit_num(i):
    if (i/100 >= 1):
        return str(i)
    elif (i/10 >= 1):
        return "0" + str(i)
    return "00" + str(i)


def generate_room_names(rooms):
    count = 0;
    room_names = ""
    for i in range(1, rooms + 1):
        if (count == 0):
            room_names += "\t\t"
        room_names += "H" + get_3_digit_num(i) + " "
        if (count == 9):
            room_names+= "- habitacion\n"
            count = -1
        count += 1
    if count != 0:
        room_names+= "- habitacion\n"
    return room_names

def generate_booking_names(res):
    count = 0;
    booking_names = ""
    for i in range(1, res + 1):
        if (count == 0):
            booking_names += "\t\t"
        booking_names += "R" + get_3_digit_num(i) + " "
        if (count == 9):
            booking_names+= "- reserva\n"
            count = -1
        count += 1
    if count != 0:
        booking_names+= "- reserva\n"
    return booking_names

def initialize_room_atr(r):
    room_atr = ""
    for i in range(1, r + 1):
        room_atr += "\t\t(= (plazas-habitacion "
        room_atr += "H" + get_3_digit_num(i) + ") " + str(random.randint(1, 5)) + ")\n"
    return room_atr

def initialize_booking_atr(r):
    booking_atr = ""
    for i in range(1, r + 1):
        booking_atr += "\t\t(= (personas-reserva "
        booking_atr += "R" + get_3_digit_num(i) + ") " + str(random.randint(1, 5)) + ")\n"
        booking_atr += "\t\t(= (inicio-reserva "
        fecha_inicio = random.randint(1, 30)
        booking_atr += "R" + get_3_digit_num(i) + ") " + str(fecha_inicio) + ")\n"
        booking_atr += "\t\t(= (fin-reserva "
        booking_atr += "R" + get_3_digit_num(i) + ") " + str(random.randint(fecha_inicio, 30)) + ")\n"
    return booking_atr

def generate_metrics(ext):
    metrics = ""
    metrics += "\t(:metric minimize\n"
    metrics += "\t\t(+\n"
    if ext == 1:
        metrics += "\t\t\t(* (reservas-descartadas) 1)\n"
        metrics += "\t\t\t0\n"
    elif ext == 3:
        metrics += "\t\t\t(* (reservas-descartadas) 3)\n"
        metrics += "\t\t\t(* (plazas-desperdiciadas) 1)\n"
    elif ext == 4:
        metrics += "\t\t\t(* (reservas-descartadas) 3)\n"
        metrics += "\t\t\t(+\n"
        metrics += "\t\t\t\t(* (habitaciones-abiertas) 2)\n"
        metrics += "\t\t\t\t(* (plazas-desperdiciadas) 1)\n"
        metrics += "\t\t\t)\n"
    metrics += "\t\t)\n"
    metrics += "\t)\n"
    return metrics


def generate_content(ext, rooms, res):
    content = ""
    content += "(define (problem problema_ext_" + str(ext) + ")\n"
    content += "\t(:domain dominio_hotel_ext_" + str(ext) + ")\n"
    content += "\t(:objects \n"
    content += generate_room_names(rooms)
    content += generate_booking_names(res)
    content += "\t)\n"
    content += "\t(:init\n"
    content += initialize_room_atr(rooms)
    content += initialize_booking_atr(res)
    content += "\t\t(= (reservas-descartadas) 0)\n"
    if (ext == 3 || ext || 4):
        content += "\t\t(= (plazas-desperdiciadas) 0)\n"
    if ext == 4:
        content += "\t\t(= (habitaciones-abiertas) 0)\n"
    content += "\t)\n"
    content += "\t(:goal\n"
    content += "\t\t(forall (?r - reserva) (reserva-comprobada ?r))\n"
    content += "\t)\n"
    content += generate_metrics(ext)
    content += ")\n"
    return content


def main():
    extension = get_extension()
    my_file = create_file(extension)
    rooms = get_num_rooms()
    res = get_num_booking()
    my_file.write(generate_content(extension, rooms, res))
    my_file.close()
    print("Archivo creado correctamente, ya puede ejecutar el planificador!")

main()
