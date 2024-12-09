# Programrendszerek fejlesztése projekt infrastruktúra leírása Terraform segítségével

## Projekt leírása

Az egész alapját az alábbi projekt képezi: https://github.com/Asher018/OnlineMarketplace.git
branch: devops

## MongoDB

IP: 172.100.0.30
Port: 27017
Dockerfile: Dockerfile_mongodb

## NodeJS szerver

IP: 172.100.0.10
Port: 5000

Futtatás:
A pm2-runtime-ot használjuk a futtatáshoz, azonban ehhez build-elni kell előbb a TypeScript kódot. A build-elt kód a server/build mappában foglal helyet.

## Angular alkalmazás

IP: 172.100.0.20
Port: 4200


## Terraform leírás

Minden rendszerelemet külön Terraform modulban definiáltam. Minden konténer egy példányban fut, és a megfelelő Dockerfile-ból indul ki. A külső Terraform leírásban (fő main.tf fájlban) a modulok sorrendjét a felépítés sorrendjében raktam össze. Először az adatbázis jön létre, azt követően a szerver, ami rácsatlakozik, végül a kliens, amin keresztül kéréseket tudunk indítani a szerver felé. A portok ki lettek szervezve Terraform változók formájában.

## Az indításhoz szükséges parancsok

```sh
$ terraform init
$ terraform plan
$ terraform apply
```

## A leállításhoz és minden infrastruktúra elem megszüntetéséhez szükséges parancsok

```sh
$ terraform destroy
```