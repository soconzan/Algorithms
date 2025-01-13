# select apnt_no, pt_name, pt_no, mcdp_cd, dr_name, apnt_ymd

select apnt_no, p.pt_name, a.pt_no, d.mcdp_cd, d.dr_name, apnt_ymd
from appointment a
join patient p on a.pt_no = p.pt_no
join doctor d on a.mddr_id = d.dr_id
where date(apnt_ymd) = '2022-04-13'
and apnt_cncl_yn = 'N'
order by apnt_ymd