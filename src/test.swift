import Foundation

func guessNumberGame() {

    let randomNumber = Int.random(in: 1...100)
    var guessed = false
    var attempts = 0
    
    print("Welcome to the Number Guessing Game!")
    print("I have chosen a random number between 1 and 100. Try to guess it!")
    
    while !guessed {
        print("Enter your guess:")

        if let input = readLine(), let guess = Int(input) {
            attempts += 1

            if guess == randomNumber {
                guessed = true
                print("Congratulations! You guessed the number \(randomNumber) correctly in \(attempts) attempts!")
            } else if guess < randomNumber {
                print("The number is higher than \(guess). Try again!")
            } else {
                print("The number is lower than \(guess). Try again!")
            }
        } else {
            print("Please enter a valid number.")
        }
    }
}

guessNumberGame()
