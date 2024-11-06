
from fastapi import FastAPI

from uuid import uuid4 as uuid

from pydantic import BaseModel
from typing import Optional, Union

from modelos.ib_clases import Muro, Publicacion


import sqlite3

direcccion_de_bdd = "ib_basico.db"

app = FastAPI()

@app.get("/")
def obtener_foros():
    conexion = sqlite3.Connection(direcccion_de_bdd)

    cursor = conexion.cursor()

    respuesta = cursor.execute("""select * from muros""")
    respuesta = respuesta.fetchall()

    conexion.close()

    foros_obtenidos = []

    for foro in respuesta:
        print(foro)
        foros_obtenidos.append(
                Muro(
                    id = int(foro[0]),
                    nombre = foro[1],
                    url = foro[2]
                    )
                )

    return foros_obtenidos



@app.get("/{muro}")
def obtener_publicaciones_foro(muro):
    conexion = sqlite3.Connection(direcccion_de_bdd)

    cursor = conexion.cursor()

    publicaciones = cursor.execute("""select * from publicaciones where muro_id = {} """.format(muro))
    publicaciones = publicaciones.fetchall()

    conexion.close()

    publicaciones_obtenidas = []

    for publicacion in publicaciones:
        print(publicacion)
        publicaciones_obtenidas.append(
                Publicacion(
                    id = int(publicacion[0]),
                    muro_id = publicacion[1],
                    texto = publicacion[2],
                    ultima_actualizacion = float(publicacion[3]),
                    fecha_publicacion = publicacion[4],
                    recurso_id = publicacion[5],
                    )
                )

    return publicaciones_obtenidas


@app.get("/{muro}/{publicacion}")
def obtener_publicaciones_foro(muro, publicacion):
    return {"publicacion": muro, "dwdwa": publicacion}


