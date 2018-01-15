function [ output_args ] = cellStroke1(stroke_program)
%Returns output values for strokes
    %stroke_constructor = stroke_Program1(1,2,2,3,2);
    transfer_value = getStrokeProgram(stroke_program);
    %The value transfer_value(5)would the desired length of the strokes. 
    location = cell(transfer_value(5),1);
    
   stroke_object= stroke_Program1()
   for i = 1:transfer_value(5)   
        current_str = strcat('pnt x',char('-----'), num2str(transfer_value(1)),char('-----'), 'y', ...
        char('-----'), num2str(transfer_value(2)),char('-----'),'time ',char('-----'), num2str(transfer_value(3)),char('-----'), 'prs',' ', num2str(transfer_value(4)),char('-----'), ...
        ' tlt   0.00   brg   0.00   whl   1.00   rot   0.00');
        updatedString = regexprep(current_str, '-----', '      ');
        location(i)= cell({updatedString}); 
   end
   output_args = location;
end

