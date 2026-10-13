classdef assignment_app < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        ExitButton                      matlab.ui.control.Button
        TextArea                        matlab.ui.control.TextArea
        Animation                       matlab.ui.control.Button
        InverseKinematicsButton         matlab.ui.control.Button
        ForwardKinematicsButton         matlab.ui.control.Button
        TransformationMatrixPOSEButton  matlab.ui.control.Button
        TextArea_2                      matlab.ui.control.TextArea
        UIAxes2                         matlab.ui.control.UIAxes
    end


    % Properties that correspond to app components
    properties (Access = public)

        UIAxes    matlab.ui.control.UIAxes
        BackgroundImage 
        StartAnimationButton matlab.ui.control.Button
        RobotAxes matlab.ui.control.UIAxes
 
    end     
    methods (Access = private)

        
         function pose = forwardKinematics(~, theta1, theta2, theta3, ~)
        
        L1 = 1; 
        L2 = 1; 
          x = L1*cos(theta1) + L2*cos(theta1 + theta2);
        y = L1*sin(theta1) + L2*sin(theta1 + theta2);
        z = theta3; 
        pose = [1 0 0 x; 0 1 0 y; 0 0 1 z; 0 0 0 1];
         end 
  
function position = forwardKinematics_1(~, jointAngles)
    L1 = 1; 
    L2 = 1; 
    L3 = 1; 
    theta1 = jointAngles(1);
    theta2 = jointAngles(2);
    theta3 = jointAngles(3);
    theta4 = jointAngles(4); 

    x = L1 * cos(theta1) + L2 * cos(theta1 + theta2) + L3 * cos(theta1 + theta2 + theta3);
    y = L1 * sin(theta1) + L2 * sin(theta1 + theta2) + L3 * sin(theta1 + theta2 + theta3);
    z = theta4; 
    position = [x; y; z]; 
end

   function singularity = isSingular(~, jointAngles)
        mdl_puma560;

        J = p560.jacob0(jointAngles);
        if abs(det(J)) < 1e-6
            singularity = true; 
        else
            singularity = false; 
        end
   end
end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
       
     app.TextArea.Visible = 'off'; 
    % Load backdrop from the same folder as this app (portable)
    appDir = fileparts(mfilename('fullpath'));
    imgFile = fullfile(appDir, 'R2.jpg');
    if exist(imgFile, 'file') ~= 2
        imgFile = fullfile(pwd, 'R2.jpg');
    end
    if exist(imgFile, 'file') ~= 2
        errordlg('R2.jpg not found. Keep it next to assignment_app.m in Assignment #01.', 'Missing Image');
        return;
    end
    app.BackgroundImage = imread(imgFile);
app.UIAxes2.Position = [-90 -110 1700 1300]; 
    imshow(app.BackgroundImage, 'Parent', app.UIAxes2, 'InitialMagnification', 'fit');

    app.UIAxes2.XLim = [0 size(app.BackgroundImage, 2)];
    app.UIAxes2.YLim = [0 size(app.BackgroundImage, 1)]; 

     app.UIAxes2.Interactions = []; 
        end

        % Button pushed function: TransformationMatrixPOSEButton
        function TransformationMatrixPOSEButtonPushed(app, event)
prompt = {'Enter theta1 (degrees):', 'Enter theta2 (degrees):', 'Enter theta3 (degrees):', 'Enter theta4 (degrees):'};
dlgtitle = 'Input Angles';
dims = [1 35];
definput = {'0', '0', '0', '0'}; 
answer = inputdlg(prompt, dlgtitle, dims, definput);
if isempty(answer)
    return; 
end

theta1 = str2double(answer{1});
theta2 = str2double(answer{2});
theta3 = str2double(answer{3});
theta4 = str2double(answer{4});

theta1 = deg2rad(theta1);
theta2 = deg2rad(theta2);
theta3 = deg2rad(theta3);
theta4 = deg2rad(theta4);

if any(isnan([theta1, theta2, theta3, theta4]))
    errordlg('All inputs must be numeric values. Please try again.', 'Input Error');
    return; 
end

pose = app.forwardKinematics(theta1, theta2, theta3, theta4); 

endEffectorPos = pose(1:3, 4);
disp('End Effector Position:');
disp(endEffectorPos);

formattedPose = sprintf('[%.1f %.1f %.1f %.1f\n              %.1f %.1f %.1f %.1f\n              %.1f %.1f %.1f %.1f\n              %.1f %.1f %.1f %.1f]', ...
    pose(1,1), pose(1,2), pose(1,3), pose(1,4), ...
    pose(2,1), pose(2,2), pose(2,3), pose(2,4), ...
    pose(3,1), pose(3,2), pose(3,3), pose(3,4), ...
    pose(4,1), pose(4,2), pose(4,3), pose(4,4));

output_String = sprintf('\nOUTPUT\n\nPOSE = %s', formattedPose);
app.TextArea.Value = {output_String}; 
app.TextArea.Visible = 'on'; 
pause(5); 
app.TextArea.Visible = 'off'; 
puma560 = loadrobot('puma560', 'DataFormat', 'row', 'Gravity', [0 0 -9.81]);

disp('PUMA 560 Joint Limits (radians):');
disp(puma560.Bodies{1}.Joint.PositionLimits); 
theta = [theta1 theta2 theta3 theta4 0 0]; 

for i = 1:length(theta)
    qmin = puma560.Bodies{i}.Joint.PositionLimits(1); 
    qmax = puma560.Bodies{i}.Joint.PositionLimits(2); 
    
    if theta(i) < qmin || theta(i) > qmax
        errordlg(sprintf('Joint %d exceeds its limits! Valid range: [%.1f, %.1f]', i, qmin, qmax), 'Joint Limit Error');
        return;
    end
end


 figure('Name', 'SUMO_ROBO', 'NumberTitle', 'off', 'WindowState', 'maximized');
show(puma560, theta, 'Frames', 'off');




        end

        % Button pushed function: ForwardKinematicsButton
        function ForwardKinematicsButtonPushed(app, event)

   p560 = loadrobot('puma560', 'DataFormat', 'row', 'Gravity', [0 0 -9.81]); 

    prompt = {'Enter theta1 (degrees):', 'Enter theta2 (degrees):', 'Enter theta3 (degrees):', ...
              'Enter theta4 (degrees):'};
    dlgtitle = 'Input Joint Angles';
    dims = [1 35];
    definput = {'0', '0', '0', '0'};
    answer = inputdlg(prompt, dlgtitle, dims, definput);

    if isempty(answer)
        return; 
    end

    theta1 = deg2rad(str2double(answer{1}));
    theta2 = deg2rad(str2double(answer{2}));
    theta3 = deg2rad(str2double(answer{3}));
    theta4 = deg2rad(str2double(answer{4}));

    if any(isnan([theta1, theta2, theta3, theta4]))
        errordlg('All inputs must be numeric values. Please try again.', 'Input Error');
        return; 
    end

jointAngles = [theta1, theta2, theta3, theta4, 0, 0]; 
    jointLimits = zeros(length(p560.Bodies), 2); 

    for i = 1:length(p560.Bodies)
        if isa(p560.Bodies{i}.Joint, 'rigidBodyJoint')
            jointLimits(i, :) = p560.Bodies{i}.Joint.PositionLimits; 
        end
    end

    for i = 1:length(jointAngles)
        qmin = jointLimits(i, 1); 
        qmax = jointLimits(i, 2); 

        if jointAngles(i) < qmin || jointAngles(i) > qmax
            errordlg(sprintf('Joint %d exceeds its limits! Valid range: [%.1f, %.1f]', i, rad2deg(qmin), rad2deg(qmax)), 'Joint Limit Error');
            return; 
        end
    end

    endEffectorName = 'link4'; 

    endEffectorPose = getTransform(p560, jointAngles, endEffectorName);
    position = transl(endEffectorPose); 
    if numel(position) ~= 3
        errordlg('The end-effector position must be a 3D point. Please check the robot model and kinematics.', 'Computation Error');
        return;
    end

    if app.isSingular(jointAngles)
        sprintf('Warning: Potential singularity at the given joint angles.\nEnd Effector Position:\nX = %.2f\nY = %.2f\nZ = %.2f', position(1), position(2), position(3));
    else
        sprintf('End Effector Position:\nX = %.2f\nY = %.2f\nZ = %.2f', position(1), position(2), position(3));
    end

    output_String = sprintf('\n\n          End Effector Position:\n\nX = %.2f\nY = %.2f\nZ = %.2f', position(1), position(2), position(3));
    app.TextArea.Value = {output_String};
    app.TextArea.Visible = 'on';

    pause(4);
    app.TextArea.Visible = 'off';

    figure('Name', 'SOMO', 'NumberTitle', 'off', 'WindowState', 'maximized');
    show(p560, jointAngles); 
        end

        % Button pushed function: InverseKinematicsButton
        function InverseKinematicsButtonPushed(app, event)
           
p560 = loadrobot('puma560', 'DataFormat', 'row', 'Gravity', [0 0 -9.81]); 

prompt = {'Enter X position:', 'Enter Y position:', 'Enter Z position:'};
dlgtitle = 'Input End-Effector Position';
dims = [1 35];
definput = {'0', '0', '0'}; 
answer = inputdlg(prompt, dlgtitle, dims, definput);

if isempty(answer)
    return; 
end

x = str2double(answer{1});
y = str2double(answer{2});
z = str2double(answer{3});

if any(isnan([x, y, z]))
    errordlg('All inputs must be numeric values. Please try again.', 'Input Error');
    return; 
end

r = sqrt(x^2 + y^2); 
theta = atan2d(y, x); 

if r < 0.5 || r > 1
    errordlg('Position is outside the radial limits of the workspace (0.5m < r < 1m).', 'Workspace Error');
    return;
elseif theta < -90 || theta > 90
    errordlg('Position is outside the angular limits of the workspace (-90° < θ < 90°).', 'Workspace Error');
    return;
elseif z < 0
    errordlg('Z-position must be non-negative.', 'Workspace Error');
    return;
end

desired_position = [x; y; z];
endEffectorPose = transl(desired_position') * troty(0); 
ik = robotics.InverseKinematics('RigidBodyTree', p560);
weights = [1 1 1 0 0 0]; 
jointAngles = ik('link6', endEffectorPose, weights, zeros(1, 6)); 

if isempty(jointAngles)
    errordlg('No valid joint angles found for the desired position.', 'IK Error');
    return;
end

output_String = sprintf('\nJoint Angles (Theta values):\nTheta1 = %.2f\nTheta2 = %.2f\nTheta3 = %.2f\nTheta4 = %.2f\nTheta5 = %.2f\nTheta6 = %.2f', ...
    rad2deg(jointAngles(1)), rad2deg(jointAngles(2)), rad2deg(jointAngles(3)), ...
    rad2deg(jointAngles(4)), rad2deg(jointAngles(5)), rad2deg(jointAngles(6)));

app.TextArea.Value = {output_String};
app.TextArea.Visible = 'on';
pause(5);
app.TextArea.Visible = 'off';

figure('Name', 'SOMO', 'NumberTitle', 'off', 'WindowState', 'maximized'); 
show(p560, jointAngles);


        end

        % Button pushed function: ExitButton
        function ExitButtonPushed(app, event)
                delete(app.UIFigure);

        end

        % Button pushed function: Animation
        function AnimationButtonPushed(app, event)
    dh_table = {
        '1', '0', '0.2', '0.5', '-90'; 
        '2', '0', '0',   '0.5', '0';   
        '3', '0', '0',   '0.5', '0';   
        '4', '0', '0.1', '0',  '-90';  
        '5', '0', '0',   '0',   '90';  
        '6', '0', '0',   '0',   '0'    
    };

    dhFig = uifigure('Name', 'DH Table', 'NumberTitle', 'off');
    dhFig.WindowState = 'maximized';
    uitable(dhFig, 'Data', dh_table, 'ColumnName', {'Joint', 'Theta (θ)', 'Offset (d)', 'Link Length (a)', 'Twist (α)'}, ...
        'Position', [20 20 1200 600]);
    pause(10);
    close(dhFig);
     
            
     T0 = eye(4);
    T1 = transl(1, 2, 3) * rpy2tr(0.6, 0.8, 1.4);
    figure;
    trplot(T0);
    hold on;
    trplot(T1);
    numPoints = 100; 
    theta = linspace(0, pi, numPoints); 
    radius = 1; 
    S = zeros(numPoints, 3);
    for i = 1:numPoints
        S(i, :) = [radius * cos(theta(i)), radius * sin(theta(i)), 0]; 
    end

    timeInterval = 0.025; 
    t = timer('ExecutionMode', 'fixedRate', 'Period', timeInterval, ...
              'TasksToExecute', numPoints, ...
              'TimerFcn', @(~,~) updateRobot(S));

    start(t);
    wait(t);
    stop(t);
    delete(t);
    function updateRobot(S)
        persistent idx; 
        if isempty(idx)
            idx = 1; 
        end
        T_current = transl(S(idx, :)) * rpy2tr(0.6, 0.8, 1.4); 
        trplot(T_current);
        idx = idx + 1;
        if idx > size(S, 1)
            idx = []; 
        end
    end

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.WindowState = 'maximized';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.UIFigure);
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.Toolbar.Visible = 'off';
            app.UIAxes2.XColor = 'none';
            app.UIAxes2.YColor = 'none';
            app.UIAxes2.ZColor = 'none';
            app.UIAxes2.Visible = 'off';
            app.UIAxes2.Position = [1 1 639 417];

            % Create TextArea_2
            app.TextArea_2 = uitextarea(app.UIFigure);
            app.TextArea_2.Editable = 'off';
            app.TextArea_2.HorizontalAlignment = 'center';
            app.TextArea_2.WordWrap = 'off';
            app.TextArea_2.FontName = 'Book Antiqua';
            app.TextArea_2.FontSize = 48;
            app.TextArea_2.FontWeight = 'bold';
            app.TextArea_2.FontAngle = 'italic';
            app.TextArea_2.FontColor = [0.0588 1 1];
            app.TextArea_2.BackgroundColor = [0.149 0.149 0.149];
            app.TextArea_2.Tooltip = {''};
            app.TextArea_2.Position = [-59 607 1510 101];
            app.TextArea_2.Value = {'Robotic Arm Simulation'};

            % Create TransformationMatrixPOSEButton
            app.TransformationMatrixPOSEButton = uibutton(app.UIFigure, 'push');
            app.TransformationMatrixPOSEButton.ButtonPushedFcn = createCallbackFcn(app, @TransformationMatrixPOSEButtonPushed, true);
            app.TransformationMatrixPOSEButton.HorizontalAlignment = 'left';
            app.TransformationMatrixPOSEButton.WordWrap = 'on';
            app.TransformationMatrixPOSEButton.BackgroundColor = [0.0745 0.6902 0.6902];
            app.TransformationMatrixPOSEButton.FontName = 'Cooper Black';
            app.TransformationMatrixPOSEButton.FontSize = 18;
            app.TransformationMatrixPOSEButton.FontWeight = 'bold';
            app.TransformationMatrixPOSEButton.FontAngle = 'italic';
            app.TransformationMatrixPOSEButton.Position = [452 378 386 63];
            app.TransformationMatrixPOSEButton.Text = '1)         Transformation Matrix (POSE)';

            % Create ForwardKinematicsButton
            app.ForwardKinematicsButton = uibutton(app.UIFigure, 'push');
            app.ForwardKinematicsButton.ButtonPushedFcn = createCallbackFcn(app, @ForwardKinematicsButtonPushed, true);
            app.ForwardKinematicsButton.HorizontalAlignment = 'left';
            app.ForwardKinematicsButton.WordWrap = 'on';
            app.ForwardKinematicsButton.BackgroundColor = [0.0706 0.6902 0.6902];
            app.ForwardKinematicsButton.FontName = 'Cooper Black';
            app.ForwardKinematicsButton.FontSize = 18;
            app.ForwardKinematicsButton.FontWeight = 'bold';
            app.ForwardKinematicsButton.FontAngle = 'italic';
            app.ForwardKinematicsButton.Position = [452 287 386 63];
            app.ForwardKinematicsButton.Text = '2)                   Forward Kinematics';

            % Create InverseKinematicsButton
            app.InverseKinematicsButton = uibutton(app.UIFigure, 'push');
            app.InverseKinematicsButton.ButtonPushedFcn = createCallbackFcn(app, @InverseKinematicsButtonPushed, true);
            app.InverseKinematicsButton.HorizontalAlignment = 'left';
            app.InverseKinematicsButton.WordWrap = 'on';
            app.InverseKinematicsButton.BackgroundColor = [0.0706 0.6902 0.6902];
            app.InverseKinematicsButton.FontName = 'Cooper Black';
            app.InverseKinematicsButton.FontSize = 18;
            app.InverseKinematicsButton.FontWeight = 'bold';
            app.InverseKinematicsButton.FontAngle = 'italic';
            app.InverseKinematicsButton.Position = [452 196 386 63];
            app.InverseKinematicsButton.Text = '3)                    Inverse Kinematics';

            % Create Animation
            app.Animation = uibutton(app.UIFigure, 'push');
            app.Animation.ButtonPushedFcn = createCallbackFcn(app, @AnimationButtonPushed, true);
            app.Animation.HorizontalAlignment = 'left';
            app.Animation.WordWrap = 'on';
            app.Animation.BackgroundColor = [0.0706 0.6902 0.6902];
            app.Animation.FontName = 'Cooper Black';
            app.Animation.FontSize = 18;
            app.Animation.FontWeight = 'bold';
            app.Animation.FontAngle = 'italic';
            app.Animation.Position = [452 99 386 63];
            app.Animation.Text = '4)                  DH  Table & Animation';

            % Create TextArea
            app.TextArea = uitextarea(app.UIFigure);
            app.TextArea.Editable = 'off';
            app.TextArea.HorizontalAlignment = 'center';
            app.TextArea.FontSize = 48;
            app.TextArea.FontWeight = 'bold';
            app.TextArea.FontAngle = 'italic';
            app.TextArea.BackgroundColor = [0.149 0.5804 0.5804];
            app.TextArea.Position = [291 41 858 552];
            app.TextArea.Value = {'Output'};

            % Create ExitButton
            app.ExitButton = uibutton(app.UIFigure, 'push');
            app.ExitButton.ButtonPushedFcn = createCallbackFcn(app, @ExitButtonPushed, true);
            app.ExitButton.HorizontalAlignment = 'left';
            app.ExitButton.WordWrap = 'on';
            app.ExitButton.BackgroundColor = [0.0706 0.6902 0.6902];
            app.ExitButton.FontName = 'Cooper Black';
            app.ExitButton.FontSize = 18;
            app.ExitButton.FontWeight = 'bold';
            app.ExitButton.FontAngle = 'italic';
            app.ExitButton.Position = [452 10 386 63];
            app.ExitButton.Text = '5)                               Exit';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = assignment_app

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end