# Käytännönläheinen R kliinikolle

Kurssin oppikirja ja latausmateriaalit. Kirja on tehty Quartolla.

- `docs/` on valmis verkkosivusto. GitHub Pages julkaisee sen sellaisenaan.
- `*.qmd` ovat julkaistujen lukujen lähteet ja `lataukset/` osallistujien tiedostot.
- `_freeze/` sisältää ajettujen koodien tulokset, jotta vanhoja lukuja ei tarvitse ajaa uudelleen.

Aineisto on synteettistä opetusaineistoa (`NHSRdatasets::synthetic_news_data`).
Kuvaajista ei voi tehdä kliinisiä johtopäätöksiä.

## Ylläpitäjälle

Tämä kansio luodaan työkalulla. Älä muokkaa tiedostoja täällä: muutokset katoavat
seuraavassa ajossa. Muokkaa lähteitä (kansio `kirja/lahteet/` tämän repon ulkopuolella) ja aja
`python3 kirja/tyokalut/valmistele.py`. Julkaisemattomien päivien luvut ja ratkaisut
eivät ole tässä repossa, koska julkisen repon tiedostot ja historia ovat kaikkien luettavissa.

Julkaisu GitHub Pagesiin: Settings → Pages → Deploy from a branch → `main` ja `/docs`.
