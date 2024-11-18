select count(*) as count
from ECOLI_DATA
where genotype & 7 in (1, 4, 5);