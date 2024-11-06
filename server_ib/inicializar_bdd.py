import sqlite3

direcccion_de_bdd = "ib_basico.db"

def crear_tablas():
    conexion = sqlite3.Connection(direcccion_de_bdd)

    cursor = conexion.cursor()

    foros = cursor.execute("""create table muros (
                                id int primary key autoincrement,
                                nombre varchar not null,
                                url varchar not null,
                           ) """)
    foros = foros.fetchall()

    conexion.close()
    return True

