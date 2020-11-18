# Sprawozdanie 3
# Bot informacyjny COVID-19 dla sanepidu

Bot ma za zadanie odpowiadać na pytania użytkowników. Posiada proste pytanie nakierowujące oraz faktyczne przekazujące informacje. Użytkownik wpisuje w okno czatu wiadomości, na które bot odpowiada.

Do zbudowania bota wykorzystano aplikację Bot Framework Composer, w której został zaprojektowany przebieg działań bota. Polegało to na utowrzeniu dialogów oraz triggerów wykunujących się w odpowiednim momencie zadawania pytań. Działanie bota w tej aplikacji jest przedsawiana w postaci drzewa. Został on także połączony z serwisem LUIS, który poprzez wykorzystanie uczenia maszynowego umożliwia zrozumienie dużo większej puli pytań i nie muszą być dokładne z przykładowymi sformułowanymi pytaniami. Stworzenie i nauczenie polega na wpisaniu kilka przykładowych odpowiedzi użytkownika oraz odświeżeniu bota, co rozpoczyna proces nauki. Testy były przeprowadzone w aplikacji Bot Framework Emulator, który umożliwia symulowanie rozmowy bota z użytkownikiem oraz dokładnie opisuje przebieg danych w bocie. Utworzona została także baza pytań QnA, ale pojawił się problem ze importem bazy pytań QnA z serwisu zamieszczonego na chmurze Azure. Pomimo podawania poprawnych danych i postępowania zgodnie z instrukcjami nie dało się pobrać bazy pytań do aplikacji Bot Framework Composer. Gotowy bot obsługuje tylko język angielski i jest gotowy do opublikowania na chmutze azure.

![alt text](https://user-images.githubusercontent.com/32729112/99470630-51652f00-2945-11eb-963b-9e52290dc1c3.png?raw=true)

Przykład utworzonego pytania QnA.


![alt text](https://user-images.githubusercontent.com/32729112/99499769-b175c880-2979-11eb-9da9-8afde68a289f.png?raw=true)

Fragmen kostrukcji bota.

Przykładowe pytania, na które odpowiada bot:
- How does covid symptoms look like?
- How can I make a test?
- Where can I find test results?
- When does the quarantine starts?
- When does the quarantine ends?
- How does quarantine look like?
- I have a covid what can I do?
- I return from abroad what schould I do?
- I had close contact with infected person what schould I do?
- I have covid symptoms what can I do?

Kod bota został umieszczeony w folderze https://github.com/AdamGawienczuk/AI-on-Microsoft-Azure/tree/main/Bot_kod
