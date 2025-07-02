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
- `hugo server` starten (watched auf changes)

### Wie füge ich eine Seite hinzu?
Genereller syntax ist
`hugo new --kind <archetype> <pfad>`

Gerade existier nur ein archetype, der sich "post" nennt. Der Pfad wird dann unter dem content/ ordner erstellt.

z.B. `hugo new --kind post impressum.md` kopiert die datei "archetypes/post.md" nach "content/impressum.md".

Dann kann man content/impressum.md editieren.

### Deutsch und Englisch Versionen
Die Deutsche und Englische Versionen / Variationen von einem Post werden mit `<name>.en.md` (englisch) und `<name>.md` (deutsch) erstellt

# Pitfalls:
- immer STRG+SHIFT+R zum reloaden verwenden sonst werden links evtl nicht geupdated

Nicht vergessen:
`git config user.name xyz12345`
`git config user.email vorname.nachname@st.oth-regensburg.de`
