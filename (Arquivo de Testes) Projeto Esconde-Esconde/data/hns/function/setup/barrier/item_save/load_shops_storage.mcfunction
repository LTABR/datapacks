$execute unless data storage shop_save$(save) shop run return run tellraw @a[tag=Admin] {"text":"Um Salvamento Foi Carregado Mas as Lojas Não Foram Substituídas Pois os Storages Não Foram Encontrados.","color":"red"}

$data modify storage options loja_procuradores set from storage shop_save$(save) shop.seekers.loja_procuradores
$data modify storage options loja_escondedores set from storage shop_save$(save) shop.hiders.loja_escondedores

$data modify storage options loja_destrutivel_procuradores set from storage shop_save$(save) destructible_shop.seekers.loja_destrutivel_procuradores
$data modify storage options loja_destrutivel_escondedores set from storage shop_save$(save) destructible_shop.hiders.loja_destrutivel_escondedores
