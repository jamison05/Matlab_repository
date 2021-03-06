classdef scriptModMultiple
    %This object prints multiple script functions. 
    %This is where take the cell_array from scriptMod 
    %I have to construct a new object each time 
    
    properties
      iterations
      Program
    end
    
    methods
        
        %The scripts are going to be modeling for different things. 
        function constructScriptMult = scriptModMultiple(program) 
            
            %script_num, chng_val, stroke_var,user_strokevar, fuzzy_var
            total_scripts= cell(100000,1);
            result = cell(1,1);  
            
            %It is probably better to get the values from here. 
            %fuzzy logic and neural networks 
            
            
            for iter = 1:12
         
            %This is running the code as is without tranferring any value. 
            constructScriptMult.Program = program;
            initiateOneScript = ScriptModIndividual(3,3,3,4,1,99,1,.7,3); 
            
            %If modifying the code for fuzzy logic, (which will be done for some parts)
            %Maybe influence the values with fuzzy logic
          
            
            
            %Before calling changeValue, initiate the 3 properties with
            %values. Unfortunately,you will have to iterate through each
            %change and save it to the file, but this msy reduce errors
            
            
            %3, 6, 7, 8, 10, 12,13,15, 19, 20, 23, 27,29
            %This will call each brsh and also reimplement fuzzylogic structure
            
            
            
            
                result = vertcat(result, initiateOneScript.scriptCellArray);  
              
          
            end
          
                %This is how I push elements into the array 
                total_scripts =  result;
                fileID = fopen('script_iteration1.txt','w');
                formatSpec = '%s';

                T = cell2table(total_scripts, 'VariableNames',{'var1'});
                input_str = input('What is the prefered');
                file_table= strcat(mat2str(input_str),'_table.txt');
                writetable(T, file_table);
                fclose(fileID);  
          
          
        end
        
    end
    
    
    
end
