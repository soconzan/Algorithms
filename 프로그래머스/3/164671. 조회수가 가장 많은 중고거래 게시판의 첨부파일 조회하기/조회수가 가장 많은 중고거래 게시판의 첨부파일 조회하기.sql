select concat('/home/grep/src/', f.board_id, '/', file_id, file_name, file_ext) as file_path
from USED_GOODS_FILE f
left join USED_GOODS_BOARD b on f.board_id = b.board_id
where views = (select max(views)
              from USED_GOODS_BOARD)
order by file_id desc;