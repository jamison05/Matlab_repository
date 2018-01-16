%a1 - acrylicbrush
%Here I am going to put time into 
fileID = fopen('script_iteration1.txt','w');
formatSpec = '%s';
end_script_value = [12,27,27,27];
    %This will be turned into a function. 
    %That will be coordinated with strokes. 
short_test_listarray =[1,2,1,1,2]; 

ui= ncols;

current_script = getScript(short_test_listarray(1));
[nrows,ncols] = size(current_script);
        %pnt x  434.00 y  244.00 time 124282 prs 1.00 tlt 0.00 brg 0.00 whl 1.00 rot 0.00

%Cat concatenates the array along the first dimension. 

for i = 1: size(short_test_listarray)
    result = cat(1,current_script,cellStroke1(1));  
    %This is how I push elements into the array 
    total_scripts = vertcat(total_scripts, result);
end 


fileID = fopen('script_iteration1.txt','w');
formatSpec = '%s';

T = cell2table(total_scripts, 'VariableNames',{'var1'});
input_str = input(prompt,'s');
file_table= strcat(input_str,'_table.txt');
writetable(T, file_table);
fclose(fileID);