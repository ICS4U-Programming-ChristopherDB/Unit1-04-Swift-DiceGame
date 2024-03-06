//  DiceGame.swift
//
//  Created by Christopher Di Bert
//  Created on 2024-03-05
//  Version 1.0
//  Copyright (c) Christopher Di Bert. All rights reserved.
//
//  Guess the correct dice value to win!


func main() {
    // Generates a random number from 1-6.
    let randomNum: Int = Int.random(in:1..<7)
    // Initializes the number of guesses.
    var guesses: Int = 0
    // Loop repeats until the user guesses correctly.
    repeat {
        // Increments the number of guesses by 1.
        guesses += 1
        // Gets the user's guess and checks for input errors.
        print("Enter a guess (1-6): ", terminator: "")
        if let userGuessStr = readLine(), let userGuess = Int(userGuessStr) {
            // Checks if the user's guess is in range.
            if userGuess >= 1 && userGuess <= 6 {
                if userGuess < randomNum {
                    print("Too small!")
                }
                else if userGuess > randomNum {
                    print("Too large!")
                }
                // If the user guessed correctly.
                else {
                    break
                }
            }
            // If the user entered a number beyond 1-6.
            else {
                print("You must enter a number from (1-6)")
                guesses -= 1
            }
        }
        // If the user did not enter an integer.
        else {
            print("You must enter an integer!")
            guesses -= 1
        }
    } while true
    // Once the user guesses correctly, tell them how many guesses it took.
    print("Correct! It took you \(guesses) to guess correctly!")
}
main()