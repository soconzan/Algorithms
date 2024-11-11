select c.id, c.genotype, p.genotype as parent_genotype
from ecoli_data c, ecoli_data p
where c.parent_id = p.id
and c.genotype = p.genotype | c.genotype
order by c.id