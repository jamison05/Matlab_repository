classdef scriptModMultiple
    %This object prints multiple script functions. 
    %This is where take the cell_array from scriptMod 
    %I have to construct a new object each time 
    
    properties
      iterations
      Program
    end
    
    methods
        
        
        function constructScriptMult = scriptModMultiple(program) 
            total_scripts= cell(100000,1);
            %This is running the code as is without tranferring any value. 
            constructScriptMult.Program = program;
            initiateOneScript =scriptModIndividual(3,1); 
            
            %If modifying the code for fuzzy logic, (which will be done for some parts)
            
            %Maybe influence the values with fuzzy logic
            initiateOneScript.opacity =.5;
            initiateOneScript.brush_max= 99;
            initiateOneScript.brush_min= 5;
            initiateOneScript.changeValue= 3;  
            
            initiateOneScript =scriptModIndividual(3,1);
            initiateOneScript.opacity =.7;
            initiateOneScript.brush_max= 135;
            initiateOneScript.brush_min= 5;
            initiateOneScript.changeValue= 3; 
            
            %Before calling changeValue, initiate the 3 properties with
            %values. Unfortunately,you will have to iterate through each
            %change and save it to the file, but this msy reduce errors
            
            
            %3, 6, 7, 8, 10, 12,13,15, 19, 20, 23, 27,29
            %This will call each brsh and also reimplement fuzzylogic structure
            
            
            
            
                result = initiateOneScript.scriptCellArray;  
                %This is how I push elements into the array 
                total_scripts = vertcat(total_scripts, result);
                fileID = fopen('script_iteration1.txt','w');
                formatSpec = '%s';

                T = cell2table(total_scripts, 'VariableNames',{'var1'});
                input_str = input(prompt,'s');
                file_table= strcat(input_str,'_table.txt');
                writetable(T, file_table);
                fclose(fileID);
          
        end
        
        
    end
    
    
    
end
