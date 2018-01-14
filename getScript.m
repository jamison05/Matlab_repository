function [ output_args ] = getScript( input_args )
%In Matlscript_version_numberversion2ab this function returns the script of the ancillary program 
%imported into a cell array. s


switch input_args
    case 1
        %In the Matlab are not global to the workspace
        load('painterfile7','script_version_numberversion1');
        output_args=script_version_numberversion1;
    case 2
        load('painterfile7','script_version_numberversion2');
        output_args= script_version_numberversion2;
    case 3 
        load('painterfile7','script_version_numberversion3');
        output_args= script_version_numberversion3;
    case 4 
        load('painterfile7','script_version_numberversion4');
        output_args= script_version_numberversion4;
    case 5
        load('painterfile7','script_version_numberversion5');
        output_args= script_version_numberversion5;
    case 6
        load('painterfile7','script_version_numberversion6');
        output_args= script_version_numberversion6;
    case 7    
        load('painterfile7','script_version_numberversion7');
        output_args= script_version_numberversion7;
        
end

