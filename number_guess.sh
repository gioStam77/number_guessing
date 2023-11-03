#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOM_NUMBER=$(($RANDOM %1000))

echo -e "\nEnter your username:"
read USERNAME

ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USERNAME'");
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$ID");
BEST_GAME=$($PSQL "SELECT MIN(num_guesses)FROM games WHERE user_id=$ID");
if [[ -z $ID ]]
then
  INSERT_NEW_PLAYER=$($PSQL "INSERT INTO users(user_name)VALUES('$USERNAME')");
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  echo -e "\nWelcome back,$USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
echo -e "\nGuess the secret number between 1 and 1000:"
read INPUT_NUMBER

if [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]]
  then 
  echo -e "\nThat is not an integer, guess again:"
  read INPUT_NUMBER
else
  NUM_OF_GUESSES=1
  while [[ ! $INPUT_NUMBER -eq $RANDOM_NUMBER ]]

    do 
    NUM_OF_GUESSES=$(expr $NUM_OF_GUESSES + 1)

      if [[ $INPUT_NUMBER -gt $RANDOM_NUMBER ]]
      then
      echo -e "\nIt's lower than that, guess again:"
      read INPUT_NUMBER 
      elif [[ $INPUT_NUMBER -lt $RANDOM_NUMBER ]] 
      then
      echo -e "\nIt's higher than that, guess again:"
      read INPUT_NUMBER
      fi 
      done  
     INSERTED_GAME=$($PSQL "INSERT INTO games(user_id,num_guesses)VALUES($ID,$NUM_OF_GUESSES)"); 
     echo -e You guessed it in $NUM_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!
fi
