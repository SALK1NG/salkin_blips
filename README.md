# salkin_blips

Ein minimalistisches und performantes Script zur einfachen Verwaltung von Karten-Markierungen (Blips) auf deinem FiveM Server.

## 🌟 Features
*   **Performance:** Läuft mit 0.00ms, da die Blips nur einmal beim Start geladen werden.
*   **ShortRange Support:** Blips verstopfen nicht die Minimap, sind aber auf der Hauptkarte immer sichtbar.
*   **Einfache Konfiguration:** Neue Blips können mit nur einer Zeile in der `config.lua` hinzugefügt werden.
*   **Standalone-fähig:** Benötigt theoretisch kein Framework, ist aber für ESX vorbereitet.

## 🛠 Installation
1. Kopiere den Ordner `salkin_blips` in dein `resources` Verzeichnis.
2. Füge `ensure salkin_blips` in deine `server.cfg` ein.
3. Bearbeite die `config.lua`, um deine eigenen Standorte hinzuzufügen.

## 📖 Konfiguration
Du kannst folgende Werte für jeden Blip anpassen:
*   `coords`: Die Position (vector3).
*   `sprite`: Das Icon (Eine Liste findest du im FiveM Wiki).
*   `color`: Die Farbe des Icons.
*   `scale`: Die Größe des Icons auf der Karte.
*   `label`: Der Text, der im Menü angezeigt wird.
