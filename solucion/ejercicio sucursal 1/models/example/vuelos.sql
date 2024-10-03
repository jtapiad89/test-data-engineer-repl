{{ config(materialized='incremental', unique_key = ['ID_Pasajero']) }}

{%- set columns = dbt_utils.get_filtered_columns_in_relation(from=source('sqlserver', 'pasajeros')) -%}

select 
    {% if 'Sucursal' in columns -%}
      Sucursal as Sucursal
    {% else %}
      1 as Sucursal
    {% endif %}
,Cve_LA,Viaje,Clase,Precio,Ruta,Cve_Cliente
from vuelos

