function [ output_args ] = getTouchEvents( input_args )
%In Matlscript_version_numberversion2ab this function returns the script of the ancillary program 
%imported into a cell array. s


switch input_args
    case 1
        %In the Matlab are not global to the workspace
        load('TouchEvent_repo','touch1');
        output_args=touch1;
    case 2
        load('TouchEvent_repo','touch2');
        output_args=touch2;
    case 3 
        load('TouchEvent_repo','touch3');
        output_args=touch3;
    case 4 
        load('TouchEvent_repo','touch4');
        output_args=touch4;
    case 5
        load('TouchEvent_repo','touch5');
        output_args=touch5;
    case 6
        load('TouchEvent_repo','touch6');
        output_args=touch6;
    case 7    
        load('TouchEvent_repo','touch7');
        output_args=touch7;
end


