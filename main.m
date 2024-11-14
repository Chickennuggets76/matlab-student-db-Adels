db = StudentDB;                          % Create an instance of the StudentDB class
size = 3;                                % Set the size of the database (maximum number of students)
db = db.init(size);                      % Initialize the database with the given size

number_of_users = 4;                     % Set the number of students to be added
for i = 1:number_of_users
    fprintf('******************* \n');   % Print separator for each student
    db = db.createUser();                % Add a new student to the database
end

db.showStudents();                       % Display all students' information
file_name = 'db.txt';                    % Specify the name of the file to save the database
db.save_db_to_file(file_name);           % Save the database to the specified file
