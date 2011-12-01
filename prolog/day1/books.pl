book('The Second Generation','Margaret Weis').
book('The Second Generation','Tracy Hickman').
book('Dragons of Summer Flame','Margaret Weis').
book('Dragons of Summer Flame','Tracy Hickman').
book('Amber and Ashes Margaret','Weis').
book('Amber and Iron Margaret','Weis').
book('Amber and Blood Margaret','Weis').
book('Night of the Eye','Mary Kirchoff').
book('The Medusa Plague','Mary Kirchoff').
book('The Seventh Sentinel','Mary Kirchoff').
book('The Dawning of a New Age','Jean Rabe').
book('The Day of the Tempest','Jean Rabe').
book('The Eve of the Maelstrom','Jean Rabe').
book('Firstborn','Paul B. Thompson').
book('Firstborn','Tonya C. Cook').
book('The Kinslayer Wars','Douglas Niles').
book('The Qualinesti','Paul B. Thompson').
book('The Qualinesti','Tonya C. Cook').
book('The Legend of Huma','Richard A. Knaak').
book('Kaz the Minotaur','Richard A. Knaak').
book('Time of the Twins','Margaret Weis').
book('Time of the Twins','Tracy Hickman').
book('War of the Twins','Margaret Weis').
book('War of the Twins','Tracy Hickman').
book('Test of the Twins','Margaret Weis').
book('Test of the Twins','Tracy Hickman').
book('The Irda (Children of the Stars)','Linda P. Baker').
book('Fistandantilus Reborn','Douglas Niles').
book('Kindred Spirits','Mark Anthony').
book('Kindred Spirits','Ellen Porath').
book('Wanderlust','Mary Kirchoff').
book('Wanderlust','Steve Winter').
book('Dark Heart','Tina Daniell').
book('The Oath and the Measure','Michael Williams').
book('Steel and Stone','Ellen Porath').
book('The Companions','Tina Daniell').
book('Darkness and Light','Paul B. Thompson').
book('Darkness and Light','Tonya Carter Cook').
book('Kendermore','Mary Kirchoff').
book('Brothers Majere','Kevin Stein').
book('The Soulforge','Margaret Weis').
book('Brothers in Arms','by Margaret Weis').
book('Brothers in Arms','Don Perrin').
book('Lord of the Rose','Douglas Niles').
book('The Crown and the Sword','Douglas Niles').
book('The Measure and the Truth','Douglas Niles').
book('Lord Soth','Edo Van Belkom').

% search by title or author
% usage: 
%   | ?- search('Test of the Twins',S).
%   | ?- search('Margaret Weis',S).
search(X,S) :- setof(Z, (book(Z,X)), S).
search(X,S) :- setof(Z, (book(X,Z)), S).