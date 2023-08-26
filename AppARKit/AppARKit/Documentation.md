#  Steps
0. ADD Privacy for Camera Usage 
1. Create ARView 
2. Create ARView Representable to show ARView
3. Call Representable in ContentView

# Docs

##Warum App Anstatt App Playground ? 
In einer Playground App haben wir keinen Zugriff auf die IOS Target Properties.
Hier müssen wir nämlich die Privacy Rechte für die Kamera Nutzung zur verfügung stellen.
    
    
##Konfigurationen
Es gibt in ARkit vier verschiedenen "konfiguratoren", welche uns je nach konfigurationen verschiedene möglichkeiten zur verfügung stellt.
    1. ARWorldTrackingConfiguration()   Tracking der Umgebenen Elemente z.b zum Plazieren von Objekten
    2. ARGeoTrackingConfiguration()     Tracking der Globalen Coordinanten
    3. ARFaceTrackingConfiguration()    Tracking von Gesichtern
    4. ARBodyTrackingConfiguration()    Tracking von Körpern
    
##Anchors und Entities
Entities sind unsere virtuellen 3d Objekte, welche wir in der Realen Welt nutzen/platzieren wollen.
    
    
    
