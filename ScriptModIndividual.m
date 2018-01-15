classdef ScriptModIndividual
    %This will access the painter strokes as objects and then make
    %modifications of each.  
    
    %Here is where I am going to use another class to create more structure
    %for the scripts. This is important so that the scripts can be able be
    %more agile.  And I can do more with and create more interpolerative
    %effects.  ((In additino I will also have to create a class that describes
    %how each image sychronizes based on fuzzy logic ))
    
    %Personal expression will be done with neural networks. 
        
    properties(Dependent)
        program_of_patterns
        set_stroke_opacity
        set_gitter_opacity
        set_image_textures
        scriptCellArray % This is the combination of both stroke and brush
        scriptCellArray_brush
        scriptCellArray_strokes
        %These are the main properties I would to affect
        opacity
        brush_max
        brush_min
        texture_use
        changeValue
        indexEffects
        %Scripting Program will be a structure since it is complicated
        %to orient all of the objects correctly with this. 
        scriptingProgram=1;
    end
    
    methods
        function construct_brush = ScriptModIndividual(script_num, chng_val)
            
            if nargin > 0
               
            %Initialize the stroke object
            stroke_object= stroke_Program1(1);%This will be the default
            
            
            [nrows,ncols] = size(current_script);
            
            %pnt x  434.00 y  244.00 time 124282 prs 1.00 tlt 0.00 brg 0.00 whl 1.00 rot 0.00
            %Cat concatenates the array along the first dimension. 
            
            
            if (ScriptModIndividual.scriptingProgram == 1)
                
                stroke_object.Program =1;
                checklayer1 = stroke_object.layer_1_val;
                checklayer2 = stroke_object.layer_2_val;
                checklayer3 = stroke_object.layer_3_val;
                calculated_X = cell(stroke_object.i_touch_array_x.length);
                calculated_Y = cell(stroke_object.i_touch_array_y.length);
                calculated_Press = cell(stroke_object.i_touch_array_pressure.length);
                calculated_brush = cell(stroke_object.i_touch_array_pressure.length); 
                %This is only one algorithm that follows time. 
                for i = 1:stroke_object.i_touch_array_x.length 
                    calculated_X(i) = (stroke_object.X_1array(i)*stroke_object.option_overide_percent) ...
                    + stroke_object.i_touch_array_x(i) *stroke_object.option_overide_percent2 ...
                    *(strokr_object.fuzzy_y(i)/10);
                    calculated_Y(i) = (stroke_object.Y_1array(i)*stroke_object.option_overide_percent) ...
                    + stroke_object.i_touch_array_y(i)*stroke_object.option_overide_percent2 ...
                    *(strokr_object.fuzzy_x(i)/10);
                    
                    calculated_Press(i)= (stroke_object.i_touch_array_pressure)*(strokr_object.fuzzy_x(i)/10);
                
                end
                for i = 1:i_touch_array_x.length   
                    current_str = strcat('pnt x',char('-----'), num2str(cell2mat( calculated_X(i))),char('-----'), 'y', ...
                    char('-----'), num2str(cell2mat( calculated_Y1(i)),char('-----'),'time ',char('-----'), num2str(cell2mat(sroke_object.i_touch_time)),...
                    char('-----'), 'prs',char('-----'), num2str(cell2mat(calculatedd_Press(i))),char('-----'), ...
                    ' tlt   0.00   brg   0.00   whl   1.00   rot   0.00'));
                    updatedString = regexprep(current_str, '-----', '      ');
                    calculated_brush(i)= cell({updatedString}); 
                end
                    %Important closing is always important.
                    calculated_brush(i_touch_array_x.length.length+1)=cell('stroke_end');
                    construct_brush.scriptCellArray_strokes = calculated_brush;
                    current_script = getScript(script_num);
                    construct_brush.scriptCellArray_brush = current_script;
                    
               if (chng_val==0)
                     result = cat(1,current_script,calculated_brush);
                     construct_brush.scriptCellArray = result;
            
              
               end
           end  
           
            
            end
           
           
        end
        
        %the changeValue will ge called outside and then the objects 
        %will go ino 
           
        %pnt x  434.00 y  244.00 time 124282 prs 1.00 tlt 0.00 brg 0.00 whl 1.00 rot 0.00
        %First one the Fuzzy logic inference to get values.  
        %3, 6, 7, 8, 10, 12,13,15, 19, 20, 23, 27,29
            %This activates all of the changes that will affect
                     %the brush based pn the brush selection sent to the
                     %constructor.
                     
                     %Operations will be performed on the calling function 
                     %In future iterations of modifying the code I will set
                     %will make setter functions to calculate the values
                     %especially as it gets more intricate. 
                 
        function obj = set.changeValue(obj,status)
                obj.changeValue=status;
                switch status
                    case 0
                     %no action te value does not change
                    case 3
                     %Item 3
                     obj.indexEffects = getbrushPropertyLocations(3);
                     %Replaces the value with another value
                     obj.set_stroke_opacity =1;  
                    case 6
                     obj.indexEffects = getbrushPropertyLocations(6);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1;  
                    case 7
                     obj.indexEffects = getbrushPropertyLocations(7);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1; 
                    case 8
                     obj.indexEffects = getbrushPropertyLocations(8);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1; 
                    case 10    
                     obj.indexEffects = getbrushPropertyLocations(10);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1; 
                    case 12    
                     obj.indexEffects = getbrushPropertyLocations(12);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1; 
                    case 13    
                     obj.indexEffects = getbrushPropertyLocations(13);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1;
                    case 15    
                     obj.indexEffects = getbrushPropertyLocations(15);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1;
                    case 19    
                     obj.indexEffects = getbrushPropertyLocations(19);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1;
                    case 20    
                     obj.indexEffects = getbrushPropertyLocations(20);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1; 
                    case 23    
                     obj.indexEffects = getbrushPropertyLocations(23);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1;
                    case 27    
                     obj.indexEffects = getbrushPropertyLocations(27);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1;
                    case 29    
                     obj.indexEffects = getbrushPropertyLocations(29);
                     %Replaces the value with another value
                     obj.set_gitter_opacity =1;  
                end    
                 result = cat(1,transfer_values.scriptCellArray_brush, calculated_brush);
                 obj.scriptCellArray = result;

            end
        
%         set_stroke_opacity
%         set_gitter_opacity
%         set_image_textures 
        function obj = set.set_stroke_opacity(obj,init)
                 obj.set_stroke_opacity=init;
                 value1 = strcat('stroke_opacity', '-----',num2str(obj.opacity));
                 %This value will be modified within the object as it
                 %progresses.  
                 updatedString = regexprep(value1, '-----', '    ');
                 obj.scriptCellArray_brush(obj.indexEffects(1)) = num2str(updatedString);      

                 value1 = strcat('max_size_slider', '-----',num2str(obj.brush_max));
                 %This value will be modified within the object as it
                 %progresses.  
                 updatedString = regexprep(value1, '-----', '    ');
                 obj.scriptCellArray_brush(obj.indexEffects(2)) = num2str(updatedString);  

                 value1 = strcat('min_radius_fraction_slider', '-----',num2str(obj.brush_min));
                 %This value will be modified within the object as it
                 %progresses.  
                 updatedString = regexprep(value1, '-----', '    ');
                 obj.scriptCellArray_brush(obj.indexEffects(3)) = num2str(updatedString);
            end 
            function obj = set.set_gitter_opacity(obj,init)
               obj.set_gitter_opacity=init;
                obj.set_stroke_opacity=init;
               value1 = strcat('glazing_opacity_jitter', '-----',num2str(obj.opacity));
                 %This value will be modified within the object as it
                 %progresses.  
                 updatedString = regexprep(value1, '-----', '    ');
                 obj.scriptCellArray_brush(obj.indexEffects(1)) = num2str(updatedString);      
                 
                 value1 = strcat('max_size_slider', '-----',num2str(obj.brush_max));
                 %This value will be modified within the object as it
                 %progresses.  
                 updatedString = regexprep(value1, '-----', '    ');
                 obj.scriptCellArray_brush(obj.indexEffects(2)) = num2str(updatedString);  
                 
                 value1 = strcat('min_radius_fraction_slider', '-----',num2str(obj.brush_min));
                 %This value will be modified within the object as it
                 %progresses.  
                 updatedString = regexprep(value1, '-----', '    ');
                 obj.scriptCellArray_brush(obj.indexEffects(3)) = num2str(updatedString);
               
            end 
            function obj = set.set_image_textures (obj,init)
                    obj.set_image_textures =init;
            end 
        
    end

end
