#!/bin/bash

#La variable userId toma los parametros pasados por fuera con el id de usuario a consultar, puede ser unos o varios a la vez. De este modo podés repetir consultas sin modificar el script.


sellerId=$*   


#u se va a repetir la cantidad de veces por parametro pasado.

for u in $sellerId     
do

# curl consulta la url de la API con el VALOR de userId.
#jq trae los valores de .results (que es un arreglo) solo con las propiedades pasadas entre llaves {}.

	curl https://api.mercadolibre.com/sites/MLA/search?seller_id=$u | jq '.results | .[] | {id, title, category_id, domain_id}' > logApi_$u.txt 

done

#La salida escribe un LOG.txt en el directorio actual, por cada seller_id consultado.
