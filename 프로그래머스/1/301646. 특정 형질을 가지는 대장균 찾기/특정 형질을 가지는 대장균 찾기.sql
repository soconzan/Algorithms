select count(*) as count
from ECOLI_DATA
where genotype & 2 != 2
and genotype & 5 in (1, 4, 5);