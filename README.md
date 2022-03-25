# scriptMeliAPI
Este es un script de consulta a la API de mercado libre, que genera un log listando los Items activos de un vendedor.
#### Imprime cuatro datos por cada Item que encuentra: 
* ID del item
* Titulo del item publicado.
* Id de la Categoria.
* Nombre de la Categoria donde está publicado.

## Modo de Uso.

* Clonar el repositorio de manera local.
* Otorgar permisos de ejecución con:
```bash 
chmod +x itemsIdSeller.sh
```
* Ejecutar el script con la siguiente orden:
```bash 
./itemsIdSeller.sh + seller_id
```
#### Ejemplo
* Si quisieramos consultar por el seller_id: 179571326 ejecutariamos la siguiente orden: 
```bash 
./itemsIdSeller.sh 179571326
```
* Pero si quisieramos consultar por dos o más usuarios a la vez ejecutariamos lo siguiente: 
```bash 
./itemsIdSeller.sh 179571326 143125485
```
*agregando cada seller_id separado por un espacio.*


### Algunos Id's de Prueba.

* 179571326 Tienda Mercado Libre.
* 143125485 Fravega.
* 181916466 Rusty.
* 179579764 Naldo Lombardi.


