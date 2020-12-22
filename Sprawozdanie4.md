# Sprawozdanie 4
# Adam Gawieńczuk

# Computer Vision API 

Jest to serwis służący do przetwarzania zdjęć i filmów. Za jego pomocą można rozpoznać poszczególne obiekty na zdjęciach, opisać zdjęcia, wyciągnąć różne informacje, takie jak tekst. Może także zostać wykorzystany do automatycznego znajdywania potrzebnych fragmentów lub klatek filmu.

W praktycznym zastosowaniu Computer Vision API może zostać wykorzystany to konwertowania zdjęć dokumentów na pliki tekstowe, rozpoznawania tożsamości osób, wyszukiwania i blokowania nieodpowiednich zdjęć, filmów.

By używać Computer Vision API należy utworzyć zasób w serwisie Azure i pobrać klucz dostępu oraz endpoint, które są potrzebne do autoryzacji użytkownika. API można wykorzystywać w dowolnym języku posiadającym bibliotekę dla Computer Vision. W kodzie należy podać klucz dostępu oraz endpoin, by dokonać uwierzytelnienia a następnie za pomocą kodu można wywołać odpowiednie metody. Wynik jest zwracany w formacie JSON.

![alt text](https://user-images.githubusercontent.com/32729112/102911104-e941c580-447b-11eb-9655-38a7c74199bf.png?raw=true)

Computer Vision API posiada dwie instancje: 
- Free – darmową, posiadającą podstawowe funkcjonalności i umożliwiają ona przeprowadzanie 20 transakcji na minutę z limitem 5000 na miesiąc
- S1 – płatną, posiada różne dostępne funkcjonalności w zależności od pakietu, umożliwia wykonywanie 10 transakcji na sekundę, a cena zależy od pakietu i ilości transakcji jakie można wykonać w ciągu miesiąca.

# Custom Vision

Jest to serwis do tworzenia niestandardowych zbiorów i sieci rozpoznających nowe typy zdjęć. Za jego pomocą można dodawać do zbioru zdjęcia przedmiotów, postaci, jakie tylko są potrzebnie i przypisać im tagi, by sieć była w stanie rozpoznać co przedstawia każde ze zdjęć. 

Można wykorzystać ten serwis do tworzenia własnych zbiorów zdjęć i budować sieć, która rozpozna i zaakceptuje zdjęcia tylko z wymaganej kategorii.

Nowe projekty Custom Vision tworzy się na stronie internetowej https://www.customvision.ai/. Należy wybrać workspace oraz rodzaj subskrypcji. Po uwożeniu projektu można dodawać nowe tagi, które będzie się przypisywać dodawanym do zbioru zdjęciom. Po dodaniu i przypisaniu zdjęciom tagu można nauczyć sieć rozpoznawania zapisanych typów zdjęć rozpoczynając proces nauki. Nauczoną sieć można przetestować poprzez przesyłanie testowych zdjęć.

Custom Vision zawiera dwa pakiety:
- Free – darmowy, umożliwia wykonywanie 2 transakcji na sekundę, dozwolone są 2 projekty, 1 godzina nauki sieci na miesiąc, utrzymanie 5000 zdjęć do nauki oraz 10000 transakcji na miesiąc
- Standard – umożliwia wykonywanie 10 transakcji na sekundę, cena zależy od wykonywanych zadań, 2$ za 1000 transakcji, 20$ za godzinę nauczania sieci i 0,70$ za każde 1000 zdjęć

# Video Indexer

Jest to serwis do przetwarzania filmów. Umożliwia rozpoznawanie przedmiotów na filmach, postaci, wykrywa tekst pisany oraz może przetworzyć mowę na tekst.

Video Indexer może zostać wykorzystany do automatycznego przetwarzania zdjęć i blokowania lub wycinania niepożądanych treści.

By rozpocząć pracę z Video Indexer należy najpierw zasubskrybować na stronie https://www.videoindexer.ai/account/login i pobrać klucz dostępu oraz id. Korzystać z API można z języków posiadających bibliotekę umożliwiająco wykorzystanie Computer Vision. Pierwszym krokiem jest autoryzacja poprzez podanie id i klucza dostępu. Filmy można przesłać za pomocą strony internetowej lub wywołując metody i podając wymagane parametry. Podając id przesłanego filmu można go analizować. Analiza zwraca plik JSON, którego treść zależy od parametrów, które potrzebujemy. Możliwe jest wyszukiwanie poszczególnych scen oraz przypisywania im tagów. Można je edytować, jeśli wygenerowane tagi są błędne lub nie są potrzebne.

Video Indexer umożliwia 10 godzin darmowego indeksowania za pomocą strony internetowej lub 40 przy wykorzystaniu API. Większa ilość czasu lub funkcji jest płatna i zależy od tego co jest potrzebne:
- Analiza audio, video – $0.034 za dzień
- Kodowanie filmów – standard $0.015, premium $0.035
- Przetwarzanie na żywo – $0.034 za dzień
- Streaming – standard $2.15 za dzień, do 600 Mbp, premium $4.64 za dzień, do 200 Mbps za film
- Ochrona treści – w zależności od usługi $0.20 za 100 licencji lub $0.10 za 100 kluczy

# Projekt Computer Vision

# System COVIDowy

Zadaniem systemu COVIDowego jest rozpoznawanie na podstawie zdjęcia, czy dana osoba ma założoną maseczką. System przetwarza zdjęcie przesłane za pomocą URL i zwraca wynik, z jaką pewnością może stwierdzić czy osoba na przesłanym zdjęciu ma założoną maseczkę.

![alt text](https://user-images.githubusercontent.com/32729112/102911115-ed6de300-447b-11eb-8bc6-0dd769185dd7.png?raw=true)

Pierwszym krokiem w tworzeniu systemu było zbudowanie i nauczenie sieci rozpoznawania zdjęć różnych osób i maseczek. Do tego celu wykorzystałem serwis Custom Vision. Zaimportowałem zdjęcia osób, maseczek oraz osób w maseczkach. Po zbudowaniu modelu został on przetestowany na zdjęciach nienależących do zdjęć na których był nauczony. Wyniki były bliskie 100% w poprawnych kategoriach.
Zbudowany model został zaimportowany do grupy zasobów na platformie azure. Do przetestowania poprawnego działania utworzony został prosty program w ASP.net. Łączy się on z zaimportowanym modelem i po przesłaniu zdjęcia zwraca prawdopodobieństwo z jakim sieć jest w stanie stwierdzić przynależność do jednej lub dwóch kategorii: person i mask. Następnie utworzona strona została opublikowana na platformie Azure i jest dostępna pod adresem: https://facemask20201222141442.azurewebsites.net/. 

![alt text](https://user-images.githubusercontent.com/32729112/102911125-efd03d00-447b-11eb-99bb-02f3466f9361.png?raw=true)

![alt text](https://user-images.githubusercontent.com/32729112/102911363-345bd880-447c-11eb-9dc5-ac3217ff09ed.png?raw=true)
