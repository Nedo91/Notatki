var playerName = "Alice" // variable typu String - slowa, zdania, wyrazy - pisane rzeczy
var age = 21   // variable typu Int - Integere liczba
var temperature = 72.2 // variable typu Float/Double - liczby po przecinku
var activeMembership = true   // variable typu Boolean (czy statement to prawda czy falsz)


    
age = age + 5 // skoro wartosc jest juz przypisana do Age od poczatku, mozna uzywac dalej tego obiektu w roznych sytuacjach np * / + -

var bonusScore: Int  // inicjujemy ze variable - bonusScore bedzie intem
var environmentName: String // inicjujemy ze bedzie stringiem
var levelCompleted: Bool  // inicjujemy ze bedzie boolem (prawda/falsz)
var progressPercentage: Double   // inicjujemy ze bedzie doublem

// let to make a constant -

let myConstantMessage = "Hello"

let currentMonth: String
let todaysTemperature: Double
let amIexhausted: Bool
let hoursOfLearning: Int
let hoursOfLearningDay2: Int
let hoursOfLearningTotal: Int

// definiowanie leta i uzywanie ich

currentMonth = "Listopad"
 // currentMonth = "Grudzien" - nie moge zmienic na grudzien pozniej, z racji tego ze LET daje jednorazowa mozliwosc przepisania wartosci w tym przypadku wartosc to STRING
hoursOfLearning = 10  // jak wpisze "pietnascie to wysypie blad z racji tego, ze zainicjowalismy ze hoursOfLearning ma byc Intem!!!
hoursOfLearningDay2 = 5
hoursOfLearningTotal = hoursOfLearning +   hoursOfLearningDay2 // int + int = int, gdybym chcial sprawdzic jakiego typu jest dany obiekt -> type(of: HoursOfLearning)
type(of: hoursOfLearningTotal)

// Operators    > < + * / (($$ and || or  = assignment  == equality === identity + addition))

// ?? - nil coalsecing operator
// ... - closed range operator
// ..< - half open range operator   -> - return arrow


// zmian przypisanych wartosci by umozliwic conversie

var score = 1            // int
var highScore = 100.0    // double

// score = highScore      mozna dodac po prostu do score = 1.0 i bedzie git badz dac na poczatku score: Double = 1 ale.......
highScore = Double(score) // tym sposobem przedrostkiem Double - wymuszamy nawias do zmiany jej inicjacji automatycznej, ktorej uzyl swift

let score1: Double
let highScore1: Int

// highScore1 = Int(score1)    ta zasada nie zadziala na LET z racji tego, ze tak jak wczesniej bylo pisane - LET jest constanse nie zmiennym w pozniejszych dzialaniach, raz ustalony zostaje jaki jest.

// Define a few constants and variables     --- OPTIONALS ---
// Variables and Constants ARE NOT AUTOMATICALLY INITIALIZED TO DEFAULT VALUES - co to znaczy? to znaczy, ze nie dostaniesz zwrotki typu "" , 0 , false
// to trzeba okreslic by dostac wynik

var firstName: String
var middleName: String?
var lastName: String

var email: String
var secondaryEmail: String?

var daysUntilNextTrip: String?

// sluzy nam to w przypadku braku np neta, czy bazy danych niekompletnych do ustawienia wartosci default czyli w tym przypadku - nil

//   Using Optionals

var regularInt: Int
var optionalInt: Int?

regularInt = 100
optionalInt = 100
//pozniej
 //optionalInt = nil
// regularInt = nil - nie moge tego zrobic z powodu tego, ze tylko optionale maja nila i moga sie na niego cofnac.

if optionalInt != nil {
    var unwrappedInt = optionalInt!
    unwrappedInt = unwrappedInt + 50
    print(unwrappedInt)
                        // forced unwrapped !. Zmusilem go do wypakowania zawartosci jesli nie jest nilem
                        // gdyby byl nilem - to by wyjebalo error
}

if let unwrapped = optionalInt {
    print(unwrapped)
} else {
    // there is no value - wiec jak usuniemy u gory optionalInt = 100 - dostaniemy zwrotke w postaci stringa - "there is no value"
    print("there is no value")
    
}

 //       --- Arrays ---

var musicalModes = ["Alex","Nedo","Tomek","Dozer","Freak","Dareczek","Lepszy","Gorszy"]
var alcoholSpace = [1,2,3,4,5,6,7] // zbior wartosci danych - zeby nie pisac pod kazdym segmentem var alcoholSpace1,2,3 etc bierzemy je wszystkie w kwadratowy nawias

// what is on index 2
let initialMpde = musicalModes[2]

// zmiana stringa na indexie 3

musicalModes[3] = "Dozerrr"

// dodanie nowego elementu

musicalModes.append("Rafal")

// usuwanie
// uzyto tutaj formy let i funkcji  removeLast() - mozna tez wziac i wpisac   musicalModes.removeLast() albo jesli chcemy inny musicalModes.remove(at: numer indexu)
let theRemovedElement = musicalModes.removeLast()
musicalModes.remove(at: 0)

// Definiowanie Arreyow

var myStringArray: [String]  // gdybym chcial dodac appendem - to sie nie uda bo nie mam zdefiniowanych wartosci - Array jest Stringiem ale wartosci wpisane w [] nie sa okreslone stad nie moge dodac niczego
var myIntArray: [Int]

// tworzenie pustego zdefiniowanego Arraya

var myStringArray1: [String] = []
var myIntArray1: [Int] = []

myStringArray1.append("Tomek")  // w tym wypadku moge juz dodac wartosc z racji tego, ze okreslilem dodatkowo ze [] - to string

 // robienie IF i ELSE !!!!!!!!!!!!

var score2 = 100.0

if score2 < 10 {
    print("Score is not greater than 10")
} else {
    print("It is greater than 10")
}
 // podczas uzywania if potrzebujemy wiedziec czy to jest true or false jesli obiekt a > b w wypadku true - printuj hurra, w wypadku false - printuj fuuuck

// SWITCH STATEMENTS

let volcanoExplosivityIndex: Int    // wartosc od 0 - 8
volcanoExplosivityIndex = 090909

// pozniej

switch volcanoExplosivityIndex {
case 0:
    print("suaba")   // kazdy case musi miec printa, nie mozna dodac pare casow pod jednego printa. mozna jednak zrobic case 1,2,3,4:
case 1:
    print("troche drgnelo")
case 2:
    print("robi sie powaznie")
case 3:
    print("lo kurwa spierdalajcie")
case 4:
    print("dupa1")
case 5:
    print("dupa2")
case 6:
    print("dupa3")
case 7:
    print("dupa4")
case 8:
    print("dupa5")
default:
    print("wszystko luz, jest na defaulcie") // na koncu musi byc default zeby okreslic wartosc gdy nie wybierzemy zadnego case
    
    // zasiegi w swifcie     x(cyfra ktora podamy) ... y(cyfra)  np.    1...10 = 1,2,3,4,5,6,7,8,9,10  - trzy kropki daja nam odliczanie tego co jest miedzy naszymi liczbami   np   case 1...6:   zsumuje nasze casy od 1 do 6 i printnie im cosik.
// LOOOOOOPSSYYYYY !!!!!!!111111oneoneoneoneoe
    
    let bunchOfwords: [String] = ["6","5","4","3","2","1",]
    
    for word in bunchOfwords {    // cokolwiek uzyje jako "word" to tylko okreslenie na jedna z wartosci w obiekcie bunchOfWords ktory stworzylem
        print(word)
        
    }
    
}


for number in 2...102 {  //dajac   1..<10 otrzymamy 1,2,3,4,5,6,7,8,9 ! takze operator ..< da nam zakres od liczby poczatkowej do koncowej -1
    print(number)
}
// funkcja stride!
for number in stride(from: 1, to: 100, by: 5) {
    print(number)      // tutaj moze byc wartosc -5 w by: i kazda tak na prawde
}

for number in stride(from: 0, through: 250, by: 50) {
    print(number)
}


// String Interpolation - dodanie kawalka tekstu w srodek istniejacego juz tekstu

var trackName = "Dozer"
var artistsName = "Freak"
var duration = 229

let message = "Now playing \(trackName) by \(artistsName) which is \(duration) long" // nie potrzebuje rowniez LET zeby wywolac te komende, moge po prostu ja wkleic do print( "Now playing \(trackName) by \(artistsName) which is \(duration) long" ) i tez by poszlo
print(message)

//       functioooons!!!! ;xx;x;x;x;x;;x;;x;x;;;

func showMessage(number: Int, name: String, fat: Bool) {     // w nawiasach number to nazewnictwo, moge nazwac jak tylko chce ale zainicjowalem go jako Int
    print("The function call worked. You passed in the Int: \(number) of the name \(name) an is he fat? \(fat)")
}
 // showMessage(number: 20) // zawsze po wywolaniu funkcji bedzie nazwa w tym przypadku number: <- zawsze bedzie to co w nawiasie i dopiero potem bedzie typ (int,string,boolean)
showMessage(number: 25, name: "Tomek", fat: true)
  // warto zapamietac, ze wartosci podane w funkcji sa constant - nie da sie ich zmienic, mozna przypisac do nowego obiektu var i wtedy zmienic

// returning values in func

func basicFunction() -> String {    // ta funkcja zwraca wartosc typu String ale moze zwrocic tez nic - wtedy usuwamy strzalke badz dajemy -> Void (polecaja wyjebac strzalke)
    let str = "This is bullshit.."
    return str
}
// mamy 3x funkcji     func basicFunction() -> String ( funkcja ktora nie ma wartosci i zwraca nam stringa (wartosc ktora wymagamy)
//                     func basicFunction(name: String) -> Bool - funkcja o jakims typie ktora zwraca inny typ (String -> Bool)
//                     func basicFunction(name: String) -> Void - funkcja o jakims typie ktora nie zwraca nam nic.

basicFunction()  // podstawowe wywolanie funkcji
let result = basicFunction() // przypisanie constant funkcji do result
print(result)


// usuwanie labelow w funkcji i ich zmiana

func showMessage1(_ message: String) {  // dodanie _ i spacji usuwa nam po wywolaniu funkcji label czyli nazwe (message: ) w tym przypadku ale nie usuwa opisu
    print("The text passed was \(message)")
}

//call
showMessage1("To troche glupie ze az tyle kodu needuje")
// zmiana nazwy labela w wywolaniu funkcji

func difference(from firstAmount: Int,to secondAmount: Int) -> Int {
    if firstAmount > secondAmount {
        return firstAmount - secondAmount
    }else{
        return secondAmount - firstAmount
    }
}

let result1 = difference(from: 25555, to: 3467)
print("The Diffirence is \(result1)") // by zmienic nazewnictwo labela czyli first Amount / secondAmount wystarczy dodac przed nimi nazwe i oddzielic spacja


