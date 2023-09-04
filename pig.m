
fprintf("Please choose who will go first (Player 1 goes first, Player 2 goes second)\n") %users decide who will go first
turnone = 1; %Used to continue the game until a player hits 100
grandtotalone = 0; %sets initial grandtotal values (will end up being summed)
grandtotaltwo = 0;
totalone = 0;
totaltwo = 0;
while (turnone ~= 2) %if this value becomes 2 then a player have won the game
if (turnone == 1) %if it is player 1's turn
totaltwo = 0; %resets player 2's turn total (not their move)
playerone = (input("Player 1 enter in any key(s) to roll your dice\n", "s"));
n = randi(6); %dice are set to random numbers between 1 and 6
ntwo = randi(6);
fprintf("First dice reads: %i\n", n); %prints dice
fprintf("Second dice reads: %i\n", ntwo);
if (n == 1) && (ntwo == 1) %if both rolls are 1's
    fprintf("Turn ended and total of your turn is now 0\n");
    totalone = 0; %this variable holds number accumulated on a single turn (read the output line above)
    turnone = 0; %sets turn to player 2's
elseif (n == 1) || (ntwo == 1) %if only 1 of the dies are 1
    totalone = totalone + n + ntwo; %this variable holds number accumulated on a single turn (read output line below)
    fprintf("Turn ended and total of your turn is now %i\n", totalone);
    turnone = 0; %sets turn to player 2's (read output line above for why)
    grandtotalone = grandtotalone + totalone; %sums grandtotal when turn ends
else %if user does not roll 1
    totalone = totalone + n + ntwo; %total for turn is sum of dies
    fprintf("Total of turn is now %i\n", totalone);
    choice = (input("\nEnter yes to continue, enter any other key(s) to end turn: ", "s"));
    if (choice == "yes") %user gets to decide to risk losing everything gained on turn and proceed, or save progress
    turnone = 1; %if yes then it stays their turn
    else
    turnone = 0; %if anything else it means they want to end their turn
    grandtotalone = grandtotalone + totalone; %sums grandtotal when turn ends
    end
end
fprintf("Player 1 your grandtotal is %i\n", grandtotalone); %reads total
if (grandtotalone >= 100) %if total surpasses 100, player 1 wins
    turnone = 2; %while loop ends, ending game
    fprintf("Player 1 wins!");
end
end
if (turnone == 0) % player 2's turn
    totalone = 0; %resets player 1's turn total (not their move)
    playertwo = (input("Player 2 enter in any key(s) to roll your dice\n", "s"));
an = randi(6); %second set of dice for player two
antwo = randi(6);
fprintf("First dice reads: %i\n", an);
fprintf("Second dice reads: %i\n", antwo);
if (an == 1) && (antwo == 1) %if both rolls are 1's
    fprintf("Turn ended and total of turn is now 0\n"); 
    totaltwo = 0; %this variable holds number accumulated on a single turn (read the output line above)
    turnone = 1; %sets turn to player 1's
elseif (an == 1) || (antwo == 1) %if only roll is a 1
    totaltwo = totaltwo+ an + antwo;%this variable holds number accumulated on a single turn (read output line below)
    fprintf("Turn ended and total of your turn is now %i\n", totaltwo);
    turnone = 1; %sets turn to player 1's
    grandtotaltwo = grandtotaltwo + totaltwo; %sums grandtotal when turn ends
else %if both rolls are not 1
    totaltwo = totaltwo + an + antwo;%total for turn is sum of dies
    fprintf("Total of your turn is now %i\n", totaltwo);
    choicetwo = (input("Enter yes to continue, enter any other key(s) to end turn: ", "s"));
    if (choicetwo == "yes")%user gets to decide to risk losing everything gained on turn and proceed, or save progress
    turnone = 0; %if yes it stays their turn
    else
        turnone = 1; %if anything else it means they want their turn to end and player 1's turn proceeds
        grandtotaltwo = grandtotaltwo + totaltwo; %sums grandtotal when turn ends
    end
end
fprintf("Player 2 has a grandtotal of %i\n", grandtotaltwo); %outputs their grand total
if (grandtotaltwo >= 100) %if they get over 100, they win
    turnone = 2; %loop ends, so game ends
    fprintf("Player 2 wins!");
end
end
end
fprintf("Thanks for playing!"); % closing message
