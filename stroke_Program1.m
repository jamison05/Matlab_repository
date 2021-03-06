classdef stroke_Program1
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    %Some objects will be modulation properties where you will connect 
    %Multiple files and parameters together with very complex images and
    %sounds 
    
    
    properties
         gen_iter
         X_1array
         Y_1array
         X_1
         Y_1
         Pressure_1
         Pressure_1array
         %Max time
         Time_1
         %Increment
         Time_1_increment
         %2nd layer
         i_touch_array_x
         i_touch_array_y
         i_touch_array_pressure
         i_touch_time
 
        %Third Layer
    
      %First Layer
            layer_1_val %is will access the equation
            xy_mod_equation %Manipulates x_y values based on equations 
            pressure_mod_equation % I may make trignometric functions for this
            %Second Layer 
            % This will be called after the first layer where there is an
            % option to overide/implement the first layer values more than
            % the seoond layers. .5 means equal split.  
            option_overide_percent=.5;    
            layer_2_val  %This next layer modifies the actual layer of touch points 
           
            
            layer_3_val %This is a value that is electied for function and then 
                    %It sets the following values.
           option_overide_percent2 = .3;
           %One fuzzy logic program should be enough 
           fuzzy_inference_program
           fuzzy_x
           fuzzy_y
           fuzzy_pressure   
           fuzzy_pressure_array
           Program
           Program_options
    end
    
    properties
        %This will be accessed via objects that do not want to create
        %individual arrays. 
       
 
          
      
    
    end
    
    methods
         function stroke_constructor = stroke_Program1(program,script_num, chng_val, stroke_var,user_strokevar, fuzzy_var)
           if nargin > 0 
               stroke_constructor.Program = program;
%                stroke_constructor.X_1=x_1;
%                stroke_constructor.Y_1=y_1;
%                stroke_constructor.Pressure_1 = pressure_1;
%                stroke_constructor.Time_1 = time_1;      
           end
            field = 'options';
            %This is the way that I will structure complicated opions 
            %Which are almost like constants. 
%             value = {[1,2,3,4,5];
%                     [10, 20, 30];
%                     magic(5)};
%             stroke_constructor.Program_options = struct(field,value);
%                  stroke_constructor.FirstLayerRun(script_num);
%                  stroke_constructor.SecondLayerRun(user_strokevar);
%                  stroke_constructor.ThirdLayerRun(fuzzy_var);

                 stroke_constructor.X_1array = cell(stroke_constructor.Time_1,1);
                 stroke_constructor.Y_1array = cell(stroke_constructor.Time_1,1);
                 stroke_constructor.Pressure_1array = cell(stroke_constructor.Time_1,1);

             for i = 1:stroke_constructor.Time_1
               
               stroke_constructor.X_1= sin(i);
               stroke_constructor.Y_1= sin(i);
               stroke_constructor.X_1array(i) =num2cell(stroke_constructor.X_1);
               stroke_constructor.Y_1array(i) =num2cell(stroke_constructor.Y_1);
             end
             for i = 1:stroke_constructor.Time_1
               stroke_constructor.gen_iter=i;  
               stroke_constructor.Pressure_1= stroke_constructor.pressure_mod_equation;
               stroke_constructor.Pressure_1array(i) = num2cell(stroke_constructor.Pressure_1);  
             end
             
             
             current_touchevt = getTouchEvents(program);
            [nrows,ncols] = size(current_touchevt);
             %ncols= [3 5 7 9 11 13 15 17];
             %That is it it goes through each of the arrays for that
             stroke_constructor.i_touch_array_x =current_touchevt(1:nrows,3);
             stroke_constructor.i_touch_array_y =current_touchevt(1:nrows,5);
             stroke_constructor.i_touch_array_pressure=current_touchevt(1:nrows,9);
             stroke_constructor.i_touch_time=current_touchevt(1:nrows,5); 
             
             stroke_constructor.layer_3_val= program;
           %First and foremost load the fuzzy logic structure
             cjlvl1 = readfis('Cajun_tastefislvl1.fis');
            
           %This is where  the fuzzy logic conditions come in 
           %A structure of each condition will be displayed. 
           %For instance if food gets greener than it will taste more
           %disgusting. 
           %One variable will change While the others are at set
           %state.  
           
           %This will be accessed at a high level with functions and
           %return an object. I will only apply these values also ot the
           %audio and export them as a table format.
            
           
           %Particular for global application of fuzzy logic systems.
           %max_value_x = max(obj.i_touch_array_x);
            max_time = max(cell2mat(stroke_constructor.i_touch_time));
           stroke_constructor.fuzzy_pressure_array = cell(stroke_constructor.Time_1,1);
           %Because positioning may become more complex and 
           %and that this can modify any type of function I will 
           temp_index = length(cell2mat(stroke_constructor.i_touch_time));
           
           for i = 2:temp_index
                %stroke_constructor.fuzzy_x = evalfis([obj.i_touch_time(i)/max_time obj.i_touch_time()/max_time],cjlvl1);
                %obj.fuzzy_y = evalfis([obj.i_touch_time(i)/max_time obj.i_touch_time()/max_time],cjlvl1);
                
                temp_fuzzyfeed1 = cell2mat(stroke_constructor.i_touch_time(i))/max_time;
                temp_fuzzyfeed2 = cell2mat(stroke_constructor.i_touch_time(i))/max_time;
               
            fuzzy_data = evalfis([temp_fuzzyfeed1, temp_fuzzyfeed2],cjlvl1);     
            
           stroke_constructor.fuzzy_pressure_array(i)= mat2cell(fuzzy_data,1);
           end 
             
            
            
         end
    
         function obj = set.Program(obj,program)
            obj.Program=program;
         end           
%          function get_X_1 = get.X_1(obj)
%              %For the value, I will only create the initial value 
%              %and create stroke start and stroke end events with time. 
%              get_X_1 = obj.Time_1;
%          end
%          function get_Y_1 = get.Y_1(obj)
%             get_Y_1 = obj.Time_1;
%          end
%          function get_pressure = get.Pressure_1(obj)
%             get_pressure = obj.Time_1;
%          end
         function get_program_Time1 = get.Time_1(obj)
              get_program_Time1= 800;
         end
         
        
         function get_pressure_equation= get.pressure_mod_equation(obj)
             width = 800;
        
             switch (obj.Program)
                 case 1
                    %This makes the actual time of the corresponding 
                    %with the value of the equation.   
                    get_pressure_equation =sin(obj.gen_iter/1000);
                 case 2
                    get_pressure_equation =cos(obj.gen_iter/1000);
                 case 3
                    get_pressure_equation =tan(obj.gen_iter/1000);  
                 case 4 
                    get_pressure_equation = rand * width; %Determines any point on the screen
             end    
         end
         
         function get_xy_equation= get.xy_mod_equation(obj)
             width = 800;
        
             switch (obj.Program)
                 case 1
                    %This makes the actual time of the corresponding 
                    %with the value of the equation.   
                    get_xy_equation=sin(obj.Time_1/1000);
                 case 2
                    get_xy_equation=cos(obj.Time_1/1000);
                 case 3
                    get_xy_equation=tan(obj.Time_1/1000);  
                 case 4 
                    get_xy_equation= rand * width; %Determines any point on the screen
             end    
         end
         
       %This starts the iteration for all of the first layers.
         function obj = FirstLayerRun(program)
               %obj.layer_1_val=program;
               %I will make the time very long and according to the touch
               %events.
              
              
        end
 %pnt x 1027.14 y  839.35 time 1362539520 prs 0.27 tlt 0.28 brg 0.97 whl 1.00 rot 0.00        
        function obj = SecondLayerRun(program)
            obj.layer_2_val= program;
            current_touchevt = getTouchEvents(program);
            [nrows,ncols] = size(current_touchevt);
             %ncols= [3 5 7 9 11 13 15 17];
             %That is it it goes through each of the arrays for that
             obj.i_touch_array_x =current_touchevt(1:nrows,3);
             obj.i_touch_array_y =current_touchevt(1:nrows,5);
             obj.i_touch_array_pressure=current_touchevt(1:nrows,9);
             obj.i_touch_time=current_touchevt(1:nrows,5);   
        end
      
      function obj = ThirdLayerRun(program)
           obj.layer_3_val= program;
           %First and foremost load the fuzzy logic structure
           cjlvl1 = readfis('Cajun_tastefislvl1.fis');
            
           %This is where  the fuzzy logic conditions come in 
           %A structure of each condition will be displayed. 
           %For instance if food gets greener than it will taste more
           %disgusting. 
           %One variable will change While the others are at set
           %state.  
           
           %This will be accessed at a high level with functions and
           %return an object. I will only apply these values also ot the
           %audio and export them as a table format.
            
           
           %Particular for global application of fuzzy logic systems.
           %max_value_x = max(obj.i_touch_array_x);
           max_time = max(obj.i_touch_time);
           
           %Because positioning may become more complex and 
           %and that this can modify any type of function I will 
           for i = 1:obj.i_touch_time.length
                %obj.fuzzy_x = evalfis([obj.i_touch_time(i)/max_time obj.i_touch_time()/max_time],cjlvl1);
                %obj.fuzzy_y = evalfis([obj.i_touch_time(i)/max_time obj.i_touch_time()/max_time],cjlvl1);
                obj.fuzzy_pressure = evalfis([obj.i_touch_time(i)/max_time obj.i_touch_time()/max_time],cjlvl1);
           end    
          %It may be better just to do multiple programs in one scoop with he  
        end
     end
 end