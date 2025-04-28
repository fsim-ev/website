# Die Fachschafts website

## CICD:
1. Artefakte herunterladen
1. Zip entpacken (runner Artefakte)
1. zip entpacken (website.zip)
1. in entpacktem ordner: `python3 -m http.server`
1. angezeigten Link öffnen

## Developing
- `git pull`
- `git submodule upate --init`
- `nix flake develop` / `direnv allow .`
- `./serve` für jede Änderung neustarten

# Pitfalls:
- immer STRG+SHIFT+R zum reloaden verwenden sonst werden links evtl nicht geupdated

Nicht vergessen:
`git config user.name xyz12345`
`git config user.email vorname.nachname@st.oth-regensburg.de`
