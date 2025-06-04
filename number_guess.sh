#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Gerar número secreto
SECRET=$(( RANDOM % 1000 + 1 ))
GUESSES=0

# Entrada do usuário
echo "Enter your username:"
read USERNAME

# Buscar usuário
USER_INFO=$($PSQL "SELECT user_id, username FROM users WHERE username = '$USERNAME'")

if [[ -z $USER_INFO ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  #Inserir novo usuário na tabela users
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME')" > /dev/null
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
 Se o usuário existe
else
  USER_ID=$(echo $USER_INFO | cut -d "|" -f1)
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Início do jogo
echo "Guess the secret number between 1 and 1000:"

while true; do
  read GUESS
  ((GUESSES++))
  # Verifica se é um número inteiro
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Comparação com número secreto
  if [[ $GUESS -lt $SECRET ]]; then
    echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET ]]; then
    echo "It's lower than that, guess again:"
  else
    echo "You guessed it in $GUESSES tries. The secret number was $SECRET. Nice job!"
    $PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $GUESSES)" > /dev/null
    break
  fi
done
