# Suomalaiset postinumerot

Datat rouhitaan *fetch.py* skriptillä Postin tietokannasta.
http://www.posti.fi/yritysasiakkaat/laheta/postinumeropalvelut/postinumerotiedostot.html


## Tiedostot

`postcode_map_light.json` *~92K* postinumero -> nimi (joko suomalainen tai ruotsalainen riippuen kunnan kielisyyssuhteesta)   
`postcode_map.json` *~1,7M* postinumero -> tietue (kaikki data postin tiedostosta json-muodossa)   
`postcodes.json` *~1,7M* lista tietueista json-muodossa   


**Huom! Gzipattuina koko pienenee vielä entisestään.**


## Ajantasaisuus

Viimeisin päivitys `LAST_UPDATED`-tiedostossa
Uusi versio buildataan joka päivä klo 12:00 jos muutoksia ilmenee buildi julkaistaan uutena patchinä NPM:ään ja committina gittiin.

## Postinumeroiden päivitys
```
./fetch_and_update.sh
```

## Esimerkki

```
npm install datasets-fi-postalcodes

```

```
const postinumerot = require('datasets-fi-postalcodes');
console.log(postinumerot['00100'])
```


## Käyttöehdot

Data on postin ja sitä koskee kaikki http://www.posti.fi/liitteet-yrityksille/ehdot/postinumeropalvelut-palvelukuvaus-ja-kayttoehdot.pdf dokumentin käyttöehdot.

JSON-muunnokset ovat vapaasti käytettävissä ja muunneltavissa.
