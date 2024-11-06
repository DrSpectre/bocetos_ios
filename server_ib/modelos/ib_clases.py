from pydantic import BaseModel
from typing import Optional, Union


class Muro(BaseModel):
    id: Optional[int] = 0
    nombre: Optional[str] = ""
    url: Optional[str] = ""

class RecursoMedia(BaseModel):
    id: int
    url: Optional[str] = "404"
    tipo: str

class Publicacion(BaseModel):
    id: Optional[int] = 0
    muro_id: int
    texto: str
    ultima_actualizacion: float
    fecha_publicacion: str
    recurso_id: Optional[int]

class Comentarios(BaseModel):
    id: Optional[int] = -1
    publicacion: int
    texto: str
    fecha_publicacion: str
    recurso: Optional[int] = -1

