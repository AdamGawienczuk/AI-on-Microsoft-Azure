# Sprawozdanie 3
# Bot informacyjny COVID-19 dla sanepidu

Bot ma za zadanie odpowiadać na pytania użytkowników. Posiada proste pytanie nakierowujące oraz faktyczne przekazujące informacje. Użytkownik wpisuje w okno czatu wiadomości, na które bot odpowiada.

Do zbudowania bota wykorzystano aplikację Bot Framework Composer, w której został zaprojektowany przebieg działań bota. Polegało to na utowrzeniu dialogów oraz triggerów wykunujących się w odpowiednim momencie zadawania pytań. Działanie bota w tej aplikacji jest przedsawiana w postaci drzewa. Został on także połączony z serwisem LUIS, który poprzez wykorzystanie uczenia maszynowego umożliwia zrozumienie dużo większej puli pytań i nie muszą być dokładne z przykładowymi sformułowanymi pytaniami. Stworzenie i nauczenie polega na wpisaniu kilka przykładowych odpowiedzi użytkownika oraz odświeżeniu bota, co rozpoczyna proces nauki. Testy były przeprowadzone w aplikacji Bot Framework Emulator, który umożliwia symulowanie rozmowy bota z użytkownikiem oraz dokładnie opisuje przebieg danych w bocie. Utworzona została także baza pytań QnA, ale pojawił się problem ze importem bazy pytań QnA z serwisu zamieszczonego na chmurze Azure. Pomimo podawania poprawnych danych i postępowania zgodnie z instrukcjami nie dało się pobrać bazy pytań do aplikacji Bot Framework Composer. Gotowego bota można opublikować w chmurze azure.

![alt text](https://user-images.githubusercontent.com/32729112/99470630-51652f00-2945-11eb-963b-9e52290dc1c3.png?raw=true)

Przykład pytania QnA.

![alt text](https://user-images.githubusercontent.com/32729112/99470647-59bd6a00-2945-11eb-83e9-ea06b070269c.png?raw=true)

Fragmen kostrukcji bota.


Kod bota został umieszczeony w folderze https://github.com/AdamGawienczuk/AI-on-Microsoft-Azure/tree/main/Bot_kod
