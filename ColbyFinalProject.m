%Colby Final Project 

%Colby final project: matching system based on NYT questions
clear
clc
clf
Answers = [];%the individual responses to questions
QAnswers = [];%tracks all answers to questions
PersonData = [];%just data about person
Data = []; %person and question data
match = []; %for analysis 
matches = [];%for analysis 

%DISPLAY
%Looked at figure properties
axis off
box off

fig = gcf; %keep in the beginning 
fig.MenuBar = 'none';
fig.ToolBar = 'none';
fig.Color = [0 0.4470 0.7410];%a nice teal color
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
text(0.5,0.5,"Welcome to the Love Calculator! Click to continue through.",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
waitforbuttonpress;
clf

axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
text(0.5,0.5,"This test draws from The New York Times' 36 questions that lead to love.",'FontSize',30,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
waitforbuttonpress;
clf

axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
context = {'The study originally used two strangers on a coffee date.'; 'So, imagine your partner is someone you aren''t close with already.'};
text(0.5,0.5, context ,'FontSize',30,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
waitforbuttonpress;
clf

axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
text(0.5,0.5,"After answering three sets of questions, I will give you three matches -- friend or more.",'FontSize',28 ,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
waitforbuttonpress;
clf

axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
text(0.5,0.5,"To answer the questions, double click with the cross pointer. Otherwise, hang tight.",'FontSize',28 ,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
waitforbuttonpress;
clf

axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
name = {'First, I''ll need some of your info.';'Sounds good? Click anywhere to continue.'};%'Please type all your answers like, " xx " and then hit enter after.';'Sounds good? Click anywhere to continue.'};
text(0.5,0.5, name ,'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
waitforbuttonpress
clf

%TO COLLECT USER STUFF W/ ERROR MESSAGES
uni= input("What are the digits from your uni?\n");
if isempty(uni) %isnumeric(uni) == 0 this second portion DOES NOT WORK, supposed to be if it's false that uni is a #
    fprintf('Error\n');
    uni= input("What are the digits from your uni?\n");
end 

if isnumeric(uni) == 0
    fprintf('Error\n');
    uni= input("What are the digits from your uni?\n");
end 
    
PersonData = [PersonData; uni];

%DECIDED TO NOT USE THIS DATA I HAD INITIALLY COLLECTED
for l = 1
% tf = isstring(uni);%test if response is formatted as a string, 1 is true and 0 is false
% while tf ~= 1 %if it's true that tf is not a string (could be 0 = false or NaN ideally)
%     fprintf('\nError: Please type your reponse like, "xx" and press enter."\n')
%     uni= input("What is your uni?\n");
% end
% school = input("What school do you go to ? Please type BC, SEAS, GS, or CC.\n"); 
% tf = isstring(school);
% while tf ~= 1 %&& (question = NaN)
%     fprintf('\nError: Please type your reponse like, "xx" and press enter."\n')
%     school = input("What school do you go to ? Please type BC, SEAS, GS, or CC.\n");
% end
% usergender = input("Which best describes your gender identity? Please type man, woman, or non-binary.\n");
% tf = isstring(usergender);
% while tf ~= 1 %&& (question = NaN)
%     fprintf('\nError: Please type your reponse like, "xx" and press enter."\n')
%     usergender = input("Which best describes your gender identity? Please type man, woman, or non-binary.\n");;
% end
% userpref = input("Which genders are you primarily interested in? You can type more than one-- separate with commas, please. Type man, woman, or non-binary.\n");
% tf = isstring(userpref);
% while tf ~= 1 %&& (question = NaN)
%     fprintf('\nError: Please type your reponse like, "xx" and press enter."\n')
%     userpref = input("Which genders are you primarily interested in? You can type more than one-- separate with commas, please. Type man, woman, or non-binary.\n");;
% end
%make all above into 1s and 0s 
% PersonData = [ uni; school; usergender; userpref; ]; 
% PersonData = [ uni ];
end

axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
text(0.5,0.5,"Thank you!",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
pause(2);
clf

axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
text(0.5,0.5,"Alright. Ready for Set 1? Hit enter to begin.",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
waitforbuttonpress;
[~,~] = ginput(1);
clf

%THIS SECTION IS FOR THE QUESTIONS THEMSELVES
%how to make sure it doesn't crash if people don't click 
% while w ~= 0            (end is at 648)
%     %if people don't click
%     w = waitforbuttonpress;
%     uicontrol = 'Please click!';
clf    
axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize; 
text(0.5, 0.5,"Would you like to be famous?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x <= 0.9);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf    
axis off
box off

text(0.5, 0.5,"Before making a phone call, do you ever rehearse what you're going to say?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf    
axis off
box off

text(0.5, 0.5,"When did you last sing to yourself?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.1, 0.4,"<1 day",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.4, 0.4,"2-6 days",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
text(0.6, 0.4,"7-13 days",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
text(0.8, 0.4,">14 days",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.1 <= x) && (x <= 0.3)
    QAnswers = 1;
elseif (0.4<= x) && (x<= 0.5) 
    QAnswers = 2; 
elseif (0.6<= x) && (x<= 0.7)
    QAnswers = 3;
elseif (0.8<= x) && (x<= 0.9)
    QAnswers = 4;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf    
axis off
box off

text(0.5, 0.5,"To others?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.1, 0.4,"<1 day",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.4, 0.4,"2-6 days",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
text(0.6, 0.4,"7-13 days",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
text(0.8, 0.4,">14 days",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.1 <= x) && (x <= 0.3)
    QAnswers = 1; 
elseif (0.4<= x) && (x<= 0.5) 
    QAnswers = 2; 
elseif (0.6<= x) && (x<= 0.7)
    QAnswers = 3;
elseif (0.8<= x) && (x<= 0.9)
    QAnswers = 4;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

question5 = {'If you were able to live to the age of 90 and retain either 1) the mind or' ; '2) the body of a 30-year-old for the last 60 years of your life, which would you want?'};
text(0.5, 0.5, question5,'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"1",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"2",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"Do you have a secret hunch about how you will die?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6);
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"If you could change anything about the way you were raised, would you?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

fig.MenuBar = 'none';
fig.ToolBar = 'auto';
fig.Color = [0 0.4470 0.7410];%a nice teal color, stil
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;
text(0.5,0.5,"You are 33% done! Ready for Set 2? Click anywhere.",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;
[~,~] = ginput(1);

%Set 2
clf
axis off
box off

question8 = {'If a crystal ball could tell you the truth about yourself, your life, the future,';'which would you choose?'};
text(0.5, 0.5, question8 ,'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Self",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.5, 0.4,"Life",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"Future",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);

w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.25 <= x) && (x <= 0.4)
    QAnswers = 1; 
elseif (0.45 <= x) && (x<= 0.6) 
    QAnswers = 2; 
elseif (0.65 <= x) && (x<= 0.85)
    QAnswers = 3;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"Is there something you've dreamed of doing for a long time?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"Have you done it yet?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 0.99);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"What do you value most in a friendship?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]) 
text(0.2, 0.4,"Common interests",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1])
text(0.5, 0.4,"Shared background",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1])
text(0.2, 0.2,"Common values",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1])
text(0.5, 0.2,"Equality and reciprocity",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1])
w = waitforbuttonpress;

[x,y] = ginput(1);
if (0.2 <= x) && (x <= 0.4) && (0.4 <= y) && (y <= 0.7)
    QAnswers = 1; 
elseif (0.5<= x) && (x<= 0.7) && (0.4 <= y) && (y <= 0.7)
    QAnswers = 2; 
elseif (0.2 <= x) && (x<= 0.4) && (0.2 <= y) && (y <= 0.5)
    QAnswers = 3;
elseif (0.5<= x) && (x<= 0.7) && (0.2 <= y) && (y <= 0.5)
    QAnswers = 4;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

question12 = {'If you knew that in one year you would die suddenly,'; 'would you change anything about the way you are now living?'}; 
text(0.5, 0.5, question12,'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"What primary role do love and affection play in your life? Choose one that best fits.",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.25, 0.4,"Physical connection",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.4,"Something fun and casual",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.25, 0.2,"Emotional support",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.2,"Intellectual connection",'FontSize',24,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,y] = ginput(1);
if (0.2 <= x) && (x <= 0.4) && (0.4 <= y) && (y <= 0.7)
    QAnswers = 1; 
elseif (0.5 <= x) && (x<= 0.7) && (0.4 <= y) && (y <= 0.7)
    QAnswers = 2; 
elseif (0.2 <= x) && (x<= 0.4) && (0.2 <= y) && (y <= 0.5)
    QAnswers = 3;
elseif (0.5<= x) && (x<= 0.7) && (0.2 <= y) && (y <= 0.5)
    QAnswers = 4;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

question14 = {'How close and warm is your family? Choose a number between 1 and 10,'; 'with 1 being not close and 10 being the closest.'};
text(0.5, 0.5, question14 ,'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.25, 0.4,"1-2",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.4,"3-5",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.25, 0.2,"6-8",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.2,"9-10",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,y] = ginput(1);
if (0.2 <= x) && (x <= 0.4) && (0.3 <= y) && (y <= 0.5)
    QAnswers = 1; 
elseif (0.5<= x) && (x<= 0.7) && (0.3 <= y) && (y <= 0.5)
    QAnswers = 2; 
elseif (0.2 <= x) && (x<= 0.4) && (0.1 <= y) && (y <= 0.29)
    QAnswers = 3;
elseif (0.5<= x) && (x<= 0.7) && (0.1 <= y) && (y <= 0.29)
    QAnswers = 4;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"Do you feel your childhood was happier than most other people's?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.3 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.7<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5,"How do you feel about your relationship with your mother?",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.2, 0.4,"Generally good",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.6, 0.4,"Not so good",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.15 <= x) && (x <= 0.55)
    QAnswers = 1; %where 1 is yes
else
    (0.60<= x) && (x<= 1);
    QAnswers = 2 ;%where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

%Set 3
text(0.5,0.5,"You are 66% done! Ready for Set 3? Click anywhere.",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;
[~,~] = ginput(1);

clf
axis off
box off

question17 = {'If you were going to become a close friend with your partner,';'is there something important you would want them to know?'};
text(0.5, 0.5, question17,'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.25 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else
    (0.65<= x) && (x<= 1);
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5, 'When did you last cry in front of another person?', 'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.25, 0.4,"<1 day",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.4,"2-6 days",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.25, 0.2,"7-13 days",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.2,">14 days",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,y] = ginput(1);
if (0.2 <= x) && (x <= 0.4) && (0.3 <= y) && (y <= 0.5)
    QAnswers = 1; 
elseif (0.5<= x) && (x<= 0.7) && (0.3 <= y) && (y <= 0.5)
    QAnswers = 2; 
elseif (0.2 <= x) && (x<= 0.4) && (0.1 <= y) && (y <= 0.29)
    QAnswers = 3;
elseif (0.5<= x) && (x<= 0.7) && (0.1 <= y) && (y <= 0.29)
    QAnswers = 4;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf
axis off
box off

text(0.5, 0.5, 'When did you last cry by yourself?', 'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
text(0.25, 0.4,"<1 day",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.4,"2-6 days",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.25, 0.2,"7-13 days",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.55, 0.2,">14 days",'FontSize',28,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,y] = ginput(1);
if (0.2 <= x) && (x <= 0.4) && (0.3 <= y) && (y <= 0.5)
    QAnswers = 1; 
elseif (0.5<= x) && (x<= 0.7) && (0.3 <= y) && (y <= 0.5)
    QAnswers = 2;
elseif (0.2 <= x) && (x<= 0.4) && (0.1 <= y) && (y <= 0.29)
    QAnswers = 3;
elseif (0.5<= x) && (x<= 0.7) && (0.1 <= y) && (y <= 0.29)
    QAnswers = 4;
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];

clf;
axis off;
box off;

text(0.5, 0.5, 'Do you believe there''s anything too serious to be joked about?','FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]); 
text(0.3, 0.4,"Yes",'FontSize',36,'HorizontalAlignment','left','FontName','Helvetica','Color',[0.5,1,1]);
text(0.7, 0.4,"No",'FontSize',36,'HorizontalAlignment','right','FontName','Helvetica','Color',[0.5,1,1]);
w = waitforbuttonpress;

[x,~] = ginput(1);
if (0.25 <= x) && (x <= 0.6)
    QAnswers = 1; %where 1 is yes
else (0.65<= x) && (x<= 0.99); 
    QAnswers = 2; %where 2 is no 
end 

Answers = [Answers; QAnswers];
Data = [PersonData; Answers];
% end

%ALL THE FILE STUFF AT THE END
fileID = fopen('DataFile.txt', 'a+');%opens the file w/ reading and writing abilties. also appends
fmt = '%4d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\n';%write a 21x1 string instead of a number, NaN
fprintf(fileID, fmt, Data);
fclose(fileID);

clf;
axis off;
box off;

fig.MenuBar = 'none';
fig.ToolBar = 'none';
fig.Color = [0 0.4470 0.7410];%a nice teal color
fig.NumberTitle = 'off';
fig.Pointer = 'hand';
screensize = get(groot, 'Screensize');
fig.Position = screensize;

text(0.5,0.5,"You're done! Thanks for completing my quiz.",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
pause(4);

clf;
axis off;
box off;

state = {'"Happy loving! I''ll get your results to you in just a moment!';'Head back to the Command Window.'};
text(0.5,0.5,"",'FontSize',36,'HorizontalAlignment','center','FontName','Helvetica','Color',[0.5,1,1]);
pause(4);

%ANALYSIS
bigmatrix = dlmread('DataFile.txt','',0,0);%read whole thing
matrix = bigmatrix(:,2:21);%this portion is only the responses to questions 
                            %inside tru(1) indicates identical, false(0) indicates not identical
answers = Answers'; %transpose answers so horizontal

%FIND IF IDENTICAL RESPONSES
for i = 1:size(matrix,1)-1%move vertically by row through the answers but exclude last row bc that's the last person
    for j = 1:length(answers)%move horizontally across columns
        same = ismember(answers(1,j),matrix(i,j));%will be same if user's response is = to response in matrix
        match = [match same];%array showing if each answer is same or not
        j = j+1;
    end
    matches = [matches; match];% a matrix with rows being the questions in data file.
    match = [];%reset to empty after i finish that row
%     i = i+1;%move onto the next row and repeat
end

%FIND 
usefulunis = [];
usefulunis = bigmatrix(1:length(bigmatrix)-1,1);%do not want to include the user themselves, so length minus 1
unitopmatches = [usefulunis sum(matches,2)];  
sorted = sortrows(unitopmatches,-2);%sort descending by second row 
best = sorted(1);
next = sorted(1+1);
last = sorted(1+2);

bestt = num2str(best);
nextt = num2str(next);
lastt = num2str(last);

bestpercent = sorted(1,2)/20;
nextpercent = sorted(1+1,2)/20;
lastpercent = sorted(1+2,2)/20;

bpercentt = num2str(bestpercent);
npercentt = num2str(nextpercent);
lpercentt = num2str(lastpercent);

matchmessage = ['Your top match is ' bestt ', your next match is ' nextt ' and your last match is ' lastt '.\nPress enter for your percentages!\n']; 
matchmsg = matchmessage;
prompt = input(matchmsg);

percentmessage = ['Your top three matches have ' bpercentt ', ' npercentt ' and ' lpercentt ' predicted success, respectively.\n'];
percentmsg = percentmessage;
prompt = input(percentmsg);

fprintf('Here''s a histogram that shows the frequency of identical answers between you and everyone else in the program.\n'); 

% For example, 5 people share 5/20 similar responses.

%histogram that shows the frequency of identical answers for the last
%respondant compared to the database
clf
fig.Color = [1 1 1];%white
axis on;
box on;
x = sorted(:,2);
xlabel('number of similar responses'); %my histogram labels aren't working, I'm sorry
ylabel('frequency');
hist(x);

