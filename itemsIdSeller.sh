#!/bin/bash

# La variable sellerId toma los parametros pasados por fuera con el id de usuario a consultar, puede ser uno o varios a la vez. De este modo podés repetir consultas sin modificar el script.

sellerId=$*   

# u se va a ejecutar una vez por cada parametro pasado.

for u in $sellerId     
do

# curl consulta la url de la API con el VALOR/ES de sellerId.
# jq trae los valores de .results (Es un arreglo) solo con las propiedades pasadas entre llaves {}.

	curl https://api.mercadolibre.com/sites/MLA/search?seller_id=$u | jq '.results | .[] | {id, title, category_id, domain_id}' > logApi_$u.txt 

done

#La salida escribe un LOG.txt en el directorio actual, por cada seller_id consultado.
