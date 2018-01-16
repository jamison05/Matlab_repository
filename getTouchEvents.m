function [ output_args ] = getTouchEvents( input_args )
%In Matlscript_version_numberversion2ab this function returns the script of the ancillary program 
%imported into a cell array. s


switch input_args
    case 1
        %In the Matlab are not global to the workspace
        load('TouchEvent_repo','num1stroke');
        output_args=num1stroke;
    case 2
        load('TouchEvent_repo','num2stroke');
        output_args=num2stroke;
    case 3 
        load('TouchEvent_repo','num3stroke');
        output_args=num3stroke;
    case 4 
        load('TouchEvent_repo','num4stroke');
        output_args=num4stroke;
    case 5
        load('TouchEvent_repo','num5stroke');
        output_args=num5stroke;
    case 6
        load('TouchEvent_repo','num6stroke');
        output_args=num6stroke;
    case 7    
        load('TouchEvent_repo','num7stroke');
        output_args=num7stroke;
end


