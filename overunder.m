
choice = (input("Do you want to play over or under seven? Type yes to proceed. Type any key(s) to quit: ", "s"));
while (choice == "yes") %if typed string is yes loop iterates    
overunderseven = (input("Type over or under or seven: ", "s")); %types over or under or seven
while (overunderseven ~= "seven") && (overunderseven ~= "over") && (overunderseven ~= "under") %if user enters invalid input
    fprintf("Error. Please type a valid input\n");
    fprintf("For a list of rules or directions on how to play use this link: \n");
    overunderseven = (input("Type over or under or seven: ", "s")); %must type the word "seven" or "over" or "under"
end
if (overunderseven == "seven")
    variable = 7; %sets equal to 7
end
if (overunderseven == "over")
    variable = 8; %sets above 7
end
if (overunderseven == "under")
    variable = 6; %sets below 7
end
n = randi(6); % 1st die is from 1 to 6
fprintf("The first di reads: %i \n", n);
ntwo = randi(6); % second die is from 1 to 6
fprintf("The second di reads: %i \n", ntwo);
result = n + ntwo; % combines dies
fprintf("The total is %i \n", result);
if ((result == variable) && (variable == 7)) %if result and variable are 7
    fprintf("You win\n")
elseif (result < 7) && (variable < 7) %if result is below 7 and user guess is under
    fprintf("You win\n")
elseif (result > 7) && (variable > 7) %if result is above 7 and user guess is over
    fprintf("You win\n")
else 
    fprintf("You lose\n") %if guess is incorrect
end
choice = (input("Do you want to play again? Type yes to continue. Type any key(s) to quit: ", "s"));
end %allows user to choose to bet again using same while loop criteria
fprintf("Thanks for stopping by!\n");