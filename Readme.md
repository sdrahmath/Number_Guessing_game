# Number Guessing Game

This is a simple number guessing game implemented in PostgresSQL and Bash. The game prompts the user to guess a secret number between 1 and 1000 and provides feedback on whether the guess is too high or too low. The objective is to guess the secret number in the fewest number of tries.

## Game Rules

1. When you run the script, you will be prompted to enter a username. The username can be up to 22 characters long.
2. If the username has been used before, the game will display a welcome message along with the user's previous game statistics.
3. If the username is new, the game will display a welcome message indicating that it's the user's first time playing.
4. The game will generate a random secret number between 1 and 1000.
5. You will be prompted to enter your guesses. Make sure to input integers only. If you enter anything other than an integer, you will be asked to guess again.
6. Based on your guess, the game will provide feedback, telling you if the secret number is higher or lower than your guess.
7. Continue guessing until you correctly guess the secret number.
8. Once you guess the secret number, the game will display the number of tries it took and the actual secret number.

## Example Gameplay
$ ./number_guess.sh

Enter your username: john_doe

Welcome, john_doe! It looks like this is your first time here.

Guess the secret number between 1 and 1000: 500

It's lower than that, guess again: 300

It's higher than that, guess again: 400

It's higher than that, guess again: 450

You guessed it in 5 tries. The secret number was 450. Nice job!




## Getting Started

To play the game, follow these instructions:

1. Clone the repository: `git clone https://github.com/your-username/number_guessing_game.git`
2. Navigate to the project folder: `cd number_guessing_game`
3. Make sure you have Bash installed on your system.
4. Execute the script: `./number_guess.sh`


## Database

The game uses a PostgreSQL database to store user information and game statistics. Make sure you have PostgreSQL installed and running on your system. The script will automatically create the necessary tables and handle database interactions.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Feel free to modify and customize the game according to your needs!

Happy guessing!


