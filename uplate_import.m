%This script takes an excel spreadsheet (format: *.xlsx), imports it into a single array 
%called "Array", then partitions this array into arrays based on a 96-well microplate 
%reader format for easy data analysis of the series.

pkg load io
disp('Please select a file and sheet to analyze a microplate reader experiment.')
Array = xlsread(input('Filename:'), input('Sheet name (with extension):'), input('Data range:'));

%Convert Read matrix to Columns corresponding to microplate coordinates:
%~~~~Time and Temperature
t = transpose(Array(:,1));
Temp_C = transpose(Array(:,2));
%~~~~A-row
A1 = transpose(Array(:,3));
A2 = transpose(Array(:,4));
A3 = transpose(Array(:,5));
A4 = transpose(Array(:,6));
A5 = transpose(Array(:,7));
A6 = transpose(Array(:,8));
A7 = transpose(Array(:,9));
A8 = transpose(Array(:,10));
A9 = transpose(Array(:,11));
A10 = transpose(Array(:,12));
A11 = transpose(Array(:,13));
A12 = transpose(Array(:,14));
%~~~~B-row
B1 = transpose(Array(:,15));
B2 = transpose(Array(:,16));
B3 = transpose(Array(:,17));
B4 = transpose(Array(:,18));
B5 = transpose(Array(:,19));
B6 = transpose(Array(:,20));
B7 = transpose(Array(:,21));
B8 = transpose(Array(:,22));
B9 = transpose(Array(:,23));
B10 = transpose(Array(:,24));
B11 = transpose(Array(:,25));
B12 = transpose(Array(:,26));
%~~~~C-row
C1 = transpose(Array(:,27));
C2 = transpose(Array(:,28));
C3 = transpose(Array(:,29));
C4 = transpose(Array(:,30));
C5 = transpose(Array(:,31));
C6 = transpose(Array(:,32));
C7 = transpose(Array(:,33));
C8 = transpose(Array(:,34));
C9 = transpose(Array(:,35));
C10 = transpose(Array(:,36));
C11 = transpose(Array(:,37));
C12 = transpose(Array(:,38));
%~~~~D-row
D1 = transpose(Array(:,39));
D2 = transpose(Array(:,40));
D3 = transpose(Array(:,41));
D4 = transpose(Array(:,42));
D5 = transpose(Array(:,43));
D6 = transpose(Array(:,44));
D7 = transpose(Array(:,45));
D8 = transpose(Array(:,46));
D9 = transpose(Array(:,47));
D10 = transpose(Array(:,48));
D11 = transpose(Array(:,49));
D12 = transpose(Array(:,50));
%~~~~E-row
E1 = transpose(Array(:,51));
E2 = transpose(Array(:,52));
E3 = transpose(Array(:,53));
E4 = transpose(Array(:,54));
E5 = transpose(Array(:,55));
E6 = transpose(Array(:,56));
E7 = transpose(Array(:,57));
E8 = transpose(Array(:,58));
E9 = transpose(Array(:,59));
E10 = transpose(Array(:,60));
E11 = transpose(Array(:,61));
E12 = transpose(Array(:,62));
%~~~~F-row
F1 = transpose(Array(:,63));
F2 = transpose(Array(:,64));
F3 = transpose(Array(:,65));
F4 = transpose(Array(:,66));
F5 = transpose(Array(:,67));
F6 = transpose(Array(:,68));
F7 = transpose(Array(:,69));
F8 = transpose(Array(:,70));
F9 = transpose(Array(:,72));
F10 = transpose(Array(:,73));
F11 = transpose(Array(:,74));
F12 = transpose(Array(:,75));
%~~~~G-row
G1 = transpose(Array(:,76));
G2 = transpose(Array(:,77));
G3 = transpose(Array(:,78));
G4 = transpose(Array(:,79));
G5 = transpose(Array(:,80));
G6 = transpose(Array(:,81));
G7 = transpose(Array(:,82));
G8 = transpose(Array(:,83));
G9 = transpose(Array(:,84));
G10 = transpose(Array(:,85));
G11 = transpose(Array(:,86));
G12 = transpose(Array(:,87));
%~~~~H-row
H1 = transpose(Array(:,88));
H2 = transpose(Array(:,89));
H3 = transpose(Array(:,90));
H4 = transpose(Array(:,91));
H5 = transpose(Array(:,92));
H6 = transpose(Array(:,93));
H7 = transpose(Array(:,94));
H8 = transpose(Array(:,95));
H9 = transpose(Array(:,96));
H10 = transpose(Array(:,97));
H11 = transpose(Array(:,98));
H12 = transpose(Array(:,99));

%Print: "Finished Import":
disp("Finished Import")