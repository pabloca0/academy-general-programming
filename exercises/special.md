# Situaciones especiales
En esta sección vamos a tratar con algunos problemas curiosos que han sucedido o que podrían suceder.

## 📝 Ejercicios
[Precarga con llamadas](#Ejercicio-1)

[Precarga con llamadas v2](#Ejercicio-2)

### Ejercicio 1
Tenemos un array de X objetos crypto y debido a la situacion deben realizarse X llamadas de detalle para poder obtener la información adicional durante el proceso de carga de un splash. Estas llamadas pueden dar error. ¿Como realizarías la carga para tener el control en todo momento de cuando se han cargado toda la información para quitar el splash y entrar en la home?

```
Ejemplo:
[
	{
		id: 1,
		name: bitcoin
	},
	{
		id: 2,
		name: ethereum
	},
	{
		id: 3,
		name: cardano
	}
]


El detalle (http://larutaquesea.com/crypto/{id}) proporciona:  Precio, capitalización, sube o baja
```

### Ejercicio 2
Basandote en el ejercicio 1 pero suponiendo que la versión de ios es la 10 y hay cosas que no están disponibles por tanto deberás usar completion.


![Rudo](../README/rudo.png)

**Develop by rudo apps**

hola@rudo.es | https://www.rudo.es