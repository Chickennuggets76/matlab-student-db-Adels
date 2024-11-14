classdef Student
    properties
        ID = ""                 % ID as a string
        Name = ""               % Name as a string
        Age = ""                % Age as a string
        GPA = 4.0               % GPA as a float
        Major = ""              % Major as a string
    end 

    methods
        function res = create_student(currentObj, ID, Name, Age, GPA, Major)
            currentObj.ID = ID;            % Set ID
            currentObj.Name = Name;        % Set Name
            currentObj.Age = Age;          % Set Age
            currentObj.GPA = GPA;          % Set GPA
            currentObj.Major = Major;      % Set Major
            res = currentObj;              % Return the updated student object
        end
        
        function res = initStudent(currentObj)
            % Ask user for information via input
            currentObj.ID = input("What's the ID of the student?", "s");
            currentObj.Name = input("What's the name of the student?", "s");
            currentObj.Age = input("What's the age of the studen?", "s");
            currentObj.GPA = input("What's the GPA of the student?", "f");
            currentObj.Major = input("What's the major of the student?", "s");
            res = currentObj;              % Return the student object with filled data
        end
        
        function res = showStudent(currentObj)
            % Display the student's information
            fprintf("Student ID: %s \n", currentObj.ID)
            fprintf("Student Name: %s \n", currentObj.Name)
            fprintf("Student Age: %s \n", currentObj.Age)
            fprintf("Student GPA: %f \n", currentObj.GPA)
            fprintf("Student Major: %s \n", currentObj.Major)
            res = 1;                                    % Return 1 after displaying
        end
        
        function res = setName(currentObj, Name)
            % Update the first name of the student and show updated info
            currentObj.Name = Name;
            currentObj.showStudent();                   % Display updated student info
            res = currentObj;                           % Return the updated student object
        end
        function res = updateGPA(currentObj, recent_grades)
            currentObj.GPA = (currentObj.GPA + recent_grades / 100 * 4) / 2;
            res = currentObj;
        end
        function displayInfo(currentObj)
            fprintf('%s %s %s %s \n',currentObj.ID,currentObj.Name,currentObj.Age,currentObj.Major)
            fprintf('%s %s %f',currentObj.Name,"'s current GPA is",currentObj.GPA)
        end
    end
end
