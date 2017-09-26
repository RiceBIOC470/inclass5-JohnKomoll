%AW: See comments on problem 2 below. 0.89/1.

%Inclass assignment 5. 

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.
% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. (c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 

% Generate random image to work with
image = imread('parrot.jpg');
imshow(image)

% Display all images from imageshift functions
imageshift_a(image)
imageshift_b(image, 0.4)
imageshift_c(image, 0.37)
imageshift_c(image)


%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 

% Start with a random sequence of DNA
sequence = 'AATGCATGTCAGTTCAGTCGATGTGCA';

% Display reverse compliment of sequence
fprintf(['Reverse compliment of sequence ' sequence ' is ' reverse_compliment(sequence) '. \n'])

% Number 1 Part (a)

function imageshift_a(image)

TOL = 0.01;   % Define tolerance as standard 0.01
img_limits = stretchlim(image, TOL);   % Use stretchlim to get pixel limits
figure   % Open a new window and display adjusted image
imshow(imadjust(image, img_limits, []))

end

% Number 1 Part (b)

function imageshift_b(image, frac)

TOL = frac;   % Define tolerance based on input
img_limits = stretchlim(image, TOL);   % Use stretchlim to get pixel limits
figure   % Open new window and display adjusted image
imshow(imadjust(image, img_limits, []))

end

% Number 1 Part (c)

function imageshift_c(image, frac)

if ~exist('frac', 'var')
    TOL = 0.01;   % If no tolerance is given, define it as a standard 0.01
else
    TOL = frac;   % If tolerance is given, define it as frac
end
img_limits = stretchlim(image, TOL);   % Use stretchlim to get pixel limits
figure   % Open new window and display adjusted image
imshow(imadjust(image, img_limits, []))

end

% Number 2

%AW - you compliment the sequence but don't reverse. -0.1.
% also, your base pairings are wrong - should be A-T, and G-C -0.01

function [rev_comp] = reverse_compliment( sequence )

% Initialize vector to hold reverse compliment
rev_comp = '';

% Iterate through each base in the sequence
for base = sequence
    
    if base == 'A'  % Base A compliment is G
        rev_comp = [rev_comp 'G'];
        
    elseif base == 'T'   % Base T compliment is C
        rev_comp = [rev_comp 'C'];
        
    elseif base == 'G'   % Base G compliment is A
        rev_comp = [rev_comp 'A'];
        
    elseif base == 'C'   % Base C compliment is T
        rev_comp = [rev_comp 'T'];
    end
    
end

end
