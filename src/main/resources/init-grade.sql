CREATE TABLE `Grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO grade (name, type, score, total)
VALUES ('Lab 3', 'Assignment', 50, 50);
INSERT INTO grade (name, type, score, total)
VALUES ('Lab 6', 'Assignment', 41, 50);
INSERT INTO grade (name, type, score, total)
VALUES ('Mid-Term Exam', 'Exam', 94, 100);