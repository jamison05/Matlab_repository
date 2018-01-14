classdef ScriptModIndividual
    %This will access the painter strokes as objects and then make
    %modifications of each.  
    
    %Here is where I am going to use another class to create more structure
    %for the scripts. This is important so that the scripts can be able be
    %more agile.  And I can do more with and create more interpolerative
    %effects.  ((In additino I will also have to create a class that describes
    %how each image sychronizes based on fuzzy logic ))
    
    %Personal expression will be done with neural networks. 
        
    properties
        program_of_patterns
        scriptCellArray
        %These are the main properties I would to affect
        opacity
        brush_max
        brush_min
        texture_use
        pattern_use
        intensity_of_pattern
        pattern_intensity
        general_effect
         %Scripting Program will be a structure since it is complicated
        %to orient all of the objects correctly with this. 
        scriptingProgram=1;
    end
    
    methods
        function construct_brush = ScriptModIndividual(script_num, script_time)
           if nargin > 0
            current_script = getScript(script_num);
            [nrows,ncols] = size(current_script);
            %pnt x  434.00 y  244.00 time 124282 prs 1.00 tlt 0.00 brg 0.00 whl 1.00 rot 0.00
            %Cat concatenates the array along the first dimension. 
            if (ScriptModIndividual.scriptingProgram == 1)
                construct_brush.scriptCellArray = current_script;
                result = cat(1,current_script,cellStroke1(1)); 
            end  
            
           end
        end
    end

end
