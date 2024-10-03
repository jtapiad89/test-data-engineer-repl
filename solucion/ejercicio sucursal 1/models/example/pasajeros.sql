{{ config(materialized='incremental', unique_key = ['ID_Pasajero']) }}



select ID_Pasajero,Pasajero,Edad
from pasajeros
order by ID_Pasajero
