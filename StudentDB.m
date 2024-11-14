classdef StudentDB
    properties
        size = 20                   % Max size of the database
        studentList = [Student]     % List of students in the database
        number_of_students = 0      % Current number of students in the database
    end

    methods
        function res = init(currentObj, size)
            % Initialize the database with the given size
            currentObj.size = size;
            currentObj.studentList(1:currentObj.size) = Student;
            res = currentObj;       % Return the initialized database object
        end

        function res = createUser(currentObj)
            % Check if the database is full
            if currentObj.number_of_students + 1 > currentObj.size
                fprintf("The database is full! \n");   % Print error if full
                res = currentObj;   % Return the database object without modification
            else
                % Create a new student and add it to the list
                student = Student;
                student = student.initStudent();  % Initialize the student using input
                currentObj.studentList(currentObj.number_of_students + 1) = student;
                currentObj.number_of_students = currentObj.number_of_students + 1;  % Update the student count
                res = currentObj;    % Return the updated database object
            end           
        end
        
        function res = showStudents(currentObj)
            % Display all the students in the database
            for i = 1:currentObj.number_of_students
                fprintf('*******************');
                fprintf('User number %d \n', i);
                currentObj.studentList(i).showStudent();  % Call showStudent for each student
            end
            res = 1;                 % Return 1 after displaying all students
        end
        
        function res = save_db_to_file(currentObj, file_name)
            % Save the student database to a text file
            fileID = fopen(file_name, 'w');   % Open file for writing
            for i = 1:currentObj.number_of_students
                student = currentObj.studentList(i);
                % Write each student's information to the file
                fprintf(fileID, "%s,%s,%s,%f,%s \n", student.ID, student.Name, student.Age, student.GPA, student.Major);
            end
            fclose(fileID);          % Close the file
            res = 1;                 % Return 1 after saving
        end
        function res = load_file_name(file_name)
            loaded_database = load(file_name);
            disp(loaded_database)
            res = 1;
        end
    end
end
