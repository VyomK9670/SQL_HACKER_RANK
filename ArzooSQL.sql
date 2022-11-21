drop table candidates1;
drop table InterviewRoundDetails1 ;
drop table CandidateInterviews1 ;

create table candidates1 (candidateId int  ,candidateName varchar(226), YearsOfExp INT);
create table InterviewRoundDetails1(roundId INT ,roundName varchar(226), roundMaxScore INT);
create table CandidateInterviews1(interviewId INT ,candidateId INT, roundId INT,score INT);

insert into candidates1 values(1,'sofia',2);
insert into candidates1 values(2,'siofan',4);
insert into candidates1 values(3,'abram',3);
insert into candidates1 values(4,'Perla',5);
insert into candidates1 values(5,'sanju',2);

insert into InterviewRoundDetails1 values(1,'Coding',5);
insert into InterviewRoundDetails1 values(2,'DSA',5);
insert into InterviewRoundDetails1 values(3,'Tr1',5);
insert into InterviewRoundDetails1 values(4,'tr2',5);
insert into InterviewRoundDetails1 values(5,'Bar raiser',5);
insert into InterviewRoundDetails1 values(6,'hr',5);

insert into CandidateInterviews1 values(12,3,4,4);

insert into CandidateInterviews1 values(13,4,1,1);
insert into CandidateInterviews1 values(14,4,2,2);
insert into CandidateInterviews1 values(15,4,3,3);
insert into CandidateInterviews1 values(16,5,1,2);

insert into CandidateInterviews1 values(17,5,2,4);
insert into CandidateInterviews1 values(18,5,3,3);


insert into CandidateInterviews1 values(1,1,1,4);
insert into CandidateInterviews1 values(2,1,2,4);
insert into CandidateInterviews1 values(3,1,3,4);
insert into CandidateInterviews1 values(4,1,4,4);
insert into CandidateInterviews1 values(5,1,5,4);
insert into CandidateInterviews1 values(6,2,1,3);
insert into CandidateInterviews1 values(7,2,2,5);
insert into CandidateInterviews1 values(8,2,3,2);

insert into CandidateInterviews1 values(9,3,1,3);
insert into CandidateInterviews1 values(10,3,2,4);
insert into CandidateInterviews1 values(11,3,3,5);

select c.candidateId,c.candidateName,c.YearsOfExp,sum(s.score) as total from candidates1 as c join CandidateInterviews1 as s on c.candidateId=s.candidateId group by c.candidateId having total>15 and c.YearsOfExp>2;



select *  from condidates ;
select c.condidateId ,  c.condidateName, C.yearofexp ,sum (s.score) as total from condidates1 as c join condidateinterviews1 as s on c.condidateId = s.condidatesId group by c.condidateid having total > 15 and c.yearofexp>2
