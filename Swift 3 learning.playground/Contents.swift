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


