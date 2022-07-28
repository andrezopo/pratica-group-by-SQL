-- Questão 1

SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

-- Questão 2

SELECT "userId" as id, COUNT("courseId") as educations FROM educations GROUP BY "userId";

-- Questão 3

SELECT u.name as writer, COUNT(t.id) as "testimonialCount" FROM testimonials t JOIN users u ON t."writerId" = u.id WHERE u.id = 435 GROUP BY writer;

-- Questão 4

SELECT MAX(j.salary) as "maximumSalary", r.name as role FROM jobs j JOIN roles r ON j."roleId" = r.id WHERE j.active = true GROUP BY r.name ORDER BY "maximumSalary" ASC;

-- Questão Bônus

SELECT s.name as school, c.name as course, COUNT(e."userId") as "studentsCount", e.status as role FROM educations e JOIN schools s ON e."schoolId" = s.id JOIN courses c ON e."courseId" = c.id GROUP BY s.name, c.name, e.status ORDER BY "studentsCount" DESC LIMIT 3;
