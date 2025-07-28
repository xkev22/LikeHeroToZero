## Like Hero To Zero – Fallstudienprojekt

**Like Hero To Zero** ist ein Java EE-Projekt, das die CO₂-Emissionen weltweit verwaltet, visualisiert und vergleichbar macht. Das Projekt wurde im Rahmen einer Fallstudie für das Modul IPWA02 entwickelt und nutzt aktuelle Java-Technologien wie JSF, JPA (Hibernate), MySQL sowie PrimeFaces zur Umsetzung einer Webanwendung.



## Projektüberblick

Die Anwendung ermöglicht:
- Die Erfassung und Verwaltung von Emissionsdaten (Land, Jahr, Wert, Einheit)
- Einen geschützten Adminbereich mit Benutzer-Login
- Die Speicherung der Daten in einer relationalen MySQL-Datenbank


## Testzugang (lokale Datenbank)

Ein Testnutzer wurde zur schnellen Prüfung angelegt:

- **Benutzername:** `testuser`  
- **Passwort:** `testuser123`

Hinweis: Die Registrierung erfolgt derzeit manuell über die Datenbank. Eine Registrierungsseite könnte in einer späteren Ausbaustufe ergänzt werden.


## Datenbank-Dump

Die Datei `datadump.sql` enthält den vollständigen Export der Datenbankstruktur und -inhalte.  
**Ablageort:** Im Root-Verzeichnis des Projekts (wird manuell hinzugefügt).  
Sie kann per MySQL-Workbench oder CLI mit folgendem Befehl importiert werden:

```bash
mysql -u root -p likeherotozero < datadump.sql
