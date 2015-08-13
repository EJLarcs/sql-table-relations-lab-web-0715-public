CREATE TABLE IF NOT EXISTS schools (
  id INTEGER PRIMARY KEY,
  name TEXT,
  rating INTEGER,
  year_established INTEGER
  );

CREATE TABLE IF NOT EXISTS courses (
    id INTEGER PRIMARY KEY,
    name TEXT,
    school_id INTEGER REFERENCES schools
);

CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      age INTEGER
);

CREATE TABLE IF NOT EXISTS enrollments (
      id INTEGER PRIMARY KEY,
      student_id INTEGER REFERENCES schools,
      course_id INTEGER REFERENCES schools
);
