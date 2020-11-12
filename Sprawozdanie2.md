# Sprawozdanie 2
# Adam Gawieńczuk
# Web App Bot

Jest to serwis obsługujący boty aplikacji internetowych. Najprostszym przykładem jest Question and Answer bot odpowiadający na odpowiednio zadane pytania. 
QnA boty mogą być wykorzystane w biurach obsługi klienta, by przyśpieszyć pracę i zmniejszyć kolejki do konsultantów. Mogą także je zastąpić, jeśli nie ma możliwości utworzenia biur obsługi. 

By bot poprawnie funkcjonował, należy utworzyć QnA Maker. Jest to serwis do tworzenia i zarządzania bazą potencjalnych pytań i odpowiedzi bota. Za pomocą strony https://www.qnamaker.ai/ możliwe jest dodawanie i zarządzanie knowledge base, zawierających pytania. Otwierając wybrane knowledge base pojawia się możliwość dodawania par pytań i odpowiedzi. W każdej parze możliwe jest przypisanie wielu pytań do jednej odpowiedzi. 
 
![alt text](https://user-images.githubusercontent.com/32729112/98998041-cdbad500-2535-11eb-88c4-92df685642eb.png?raw=true)

Przykładowa para pytań i odpowiedzi.
 
![alt text](https://user-images.githubusercontent.com/32729112/98997747-4bcaac00-2535-11eb-8a09-c10ae1112310.png?raw=true)

Przykładowa konwersacja.

Cennik QnA Maker

 - Free	
3 transakcje na sekundę	
Do 1 MB na każdy dokument
Do 100 transakcji na minutę
Do 50,000 transakcji na miesiąc
Darmowe zarządzanie 3 dokumentami na miesiąc

 - Standard
3 transakcje na sekundę	
Do 100 transakcji na minutę
10$ za nielimitowaną ilość zarządzanych dokumentów

# Bot Framework Composer

Jest to aplikacja do tworzenia botów. Utworzone boty można zintegrować z serwisem LUIS, by ulepszyć ich działanie o rozpoznawanie tekstu.
Przejrzysty interfejs ułatwia tworzenie botów. Poprzez działanie na diagramach reprezentujących schemat działania bota można tworzyć różne scenariusze poprzez dodawanie nowych pól lub diagramów. Bot zamiast prostych wiadomości może wysyłać karty, które można sformatować, by były bardziej przejrzyste dla użytkownika. Można go rozszerzyć poprzez integrację z Bot Framework Language Generation (LG) library. Umożliwia ona dokładniejsze rozpoznawanie pisanych przez użytkownika wiadomości, dając do dyspozycji bazę różnych pytań i odpowiedzi. Bota można także zintegrować z LUIS, co umożliwia interpretowanie wiadomości użytkownika.
 
![alt text](https://user-images.githubusercontent.com/32729112/98998134-f216b180-2535-11eb-9f37-20336283368d.png?raw=true)

Przykładowy diagram.

Tworzone boty można testować w aplikacji Bot Framework Emulator.

Aplikacja jest darmowa. Cena zależy od innych wykorzystywanych serwisów.
