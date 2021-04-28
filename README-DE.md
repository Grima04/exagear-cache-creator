Wählen Sie Ihre Sprache aus: [English](https://github.com/Grima04/exagear-cache-creator/blob/main/README.md) / [Français](https://github.com/Grima04/exagear-cache-creator/blob/main/README-FR.md) / Deutsch
# ExaGear cache creator Anwendung
ExaGear cache creator - erstellen Sie auf einfache Art und Weise einen benutzerdefinierten .obb Cache für den ExaGear Emulator, angepasst auf Ihre Bedürfnisse, mit diesem kleinen Skript.

## Um welche Software handelt es sich hierbei und wozu dient sie?
Diese Anwendung besteht aus 2 kleinen Skripten, welche die Erstellung des .obb Caches für den ExaGear Windows Emulator auf Android automatisiert. Hierbei wird automatisch eine Ubuntu Systemumgebung, welche von ExaGear benötigt wird, über chroot erstellt. Des Weiteren werden Wine und einige ExaGear spezifische Patches installiert. Anschließend wird das Ubuntu Dateisystem in eine .obb datei gepackt, welche sofort einsatzbereit ist.

## Welche Funktionen werden momentan angeboten?
Momentan werden folgende Optionen angeboten:
* Wahl zwischen einem Ubuntu 16.04 und Ubuntu 18.04 Dateisystem
* Wahl zwischen Wine devel und Wine stable Versionen
* Benutzerdefinierte Version von Wine: Wine 3.0 bis 6.0 für Wine stable und Wine 3.10 bis 6.6 für Wine devel
* Unterstützung für den Import von zusätzlichen Bibliotheken wie beispielsweise libGL.so.1

## Welche Funktionen sind momentan einsatzbereit?
* Zur Zeit wird die Cache-Erstellung mit Ubuntu 18.04 vollständig unterstützt, Ubuntu 16.04 weist noch einige Probleme vor, vor allem mit den Wine Abhängigkeiten. Zusätzlich sind die Wine "Mirrors" noch nicht vollständig implementiert.
* Dieses Programm wurde nur auf einem Ubuntu 16.04 x86_64 Rechner getestet. Bitte erwarten Sie sich keine Unterstützung für andere Betriebssysteme. Theoretisch sollte die Anwendung jedoch ohne Probleme auf Ubuntu 18.04, 20.04 oder anderen Debian basierten Distributionen lauffähig sein. (Keine Garantie)

## Anweisungen:
* Installieren Sie zuerst debootstrap auf Ihrem System, laden sie das gesamte Projekt als .zip herunter und entpacken Sie es auf einem beliebigen Pfad.
* Springen Sie anschließend in den libs Ordner des Projektes (dort, wo Sie die zip entpackt haben) und fügen sie die Bibliotheken die Sie nutzen möchten mit ihrem vollständigen Dateipfad in den libs Ordner. Zum Beispiel: falls Sie eine eigene libGL Bibliothek nutzen wollen (für virgl, LLVMpipe,...), sollte ihre Dateistruktur wie folgt gegliedert sein: **ihr-projekt-entpack-pfad/libs/usr/lib/i386-linux-gnu/libGL.so.1**
* Verändern Sie als Nächstes die Ausführungsrechte des Sktiptes mit **chmod +x exagear-create-cache.sh**, führen Sie das Skript mit sudo aus und befolgen Sie die Anweisungen im Terminal: **sudo ./exagear-create-cache.sh**
* Ihnen wird die Auswahl zwischen Ubuntu 18.04 und 16.04 (**Bitte wählen Sie momentan nur Ubuntu 18.04 aus**), Wine devel oder stable und einer spezifischen Wine Version angeboten werden.
* Falls alles wie geplant abläuft, werden sie am Ende eine .obb Datei im obb-cache Ordner vorfinden, welche sofort einsatzbereit ist.
* Kopieren Sie schlussendlich die .obb Datei auf ihr Mobiltelefon und fügen Sie sie in den folgenden Dateipfad ein: **/storage/emulated/0/Android/obb/com.eltechs.ed/**
* Jetzt können Sie die ExaGear Anwendung mit Ihrem eigenen Cache starten.
* **NB: Ich bin nicht verantwortlich und hafte nicht für eventuellen Schaden, Dateiverluste, usw. an Ihrem Rechner, Mobilgerät und/oder Ihnen, welcher durch die Benutzung dieser Software hervorgerufen wird. Benutzung auf eigene Gefahr.**

## Zusätzliche Informationen: 
* Bitte kontaktieren Sie mich über die "Issue" Funktion auf GitHub falls Probleme mit der Installation von einer spezifischen Wine Version auftreten sollten. Es wird sich höchstwahrscheinlich um einen Fehler in den Wine Quelllinks handeln, sodass Sie auch versuchen könnten den Fehler selbst zu beheben (falls Sie möchten).
