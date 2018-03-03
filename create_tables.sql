CREATE TABLE IF NOT EXISTS `tbl_component_main_entry_index`
( `component_main_entry_index_id` int(11) NOT NULL AUTO_INCREMENT,
  `component_main_entry_index_pk` int(11) NOT NULL,
  `component_main_entry_index_comp_type` varchar(4) NOT NULL,
  `component_main_entry_index_entry_type` varchar(10) NOT NULL,
  `component_main_entry_index_title` varchar(255) NOT NULL,
  `component_main_entry_index_result` text,
  `component_main_entry_index_datetime` datetime NOT NULL, PRIMARY KEY
  (`component_main_entry_index_id`), KEY `component_main_entry_index_title`
  (`component_main_entry_index_title`), FULLTEXT KEY
  `component_main_entry_index_result` (`component_main_entry_index_result`))
ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Results fetched
from main entry of each component' AUTO_INCREMENT=7621 ;


CREATE TABLE IF NOT EXISTS `tbl_component_indv_entry_index`
( `component_indv_entry_index_id` int(11) NOT NULL AUTO_INCREMENT,
  `component_indv_entry_index_pk` int(11) NOT NULL,
  `component_main_entry_index_pk` int(11) NOT NULL,
  `component_indv_entry_index_comp_type` varchar(4) NOT NULL,
  `component_indv_entry_index_entry_type` varchar(10) NOT NULL,
  `component_indv_entry_index_title` varchar(255) NOT NULL,
  `component_indv_entry_index_result` text,
  `component_indv_entry_index_datetime` datetime NOT NULL, PRIMARY KEY
  (`component_indv_entry_index_id`), KEY `component_indv_entry_index_title`
  (`component_indv_entry_index_title`), FULLTEXT KEY
  `component_indv_entry_index_result` (`component_indv_entry_index_result`))
ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Results fetched
from indv entry of each component' AUTO_INCREMENT=8340 ;


CREATE TABLE IF NOT EXISTS `tbl_search_index` ( `search_index_id` int(11) NOT
  NULL AUTO_INCREMENT, `search_index_title` varchar(255) NOT NULL,
  `search_index_result` text, `search_index_result_having_word_in_defn` text,
  `search_index_datetime` datetime NOT NULL, `search_index_by_user` tinyint(1)
  DEFAULT NULL, PRIMARY KEY (`search_index_id`), UNIQUE KEY
  `UNQ_tbl_search_index1` (`search_index_title`), FULLTEXT KEY
  `search_index_result` (`search_index_result`), FULLTEXT KEY
  `search_index_result_having_word_in_defn`
  (`search_index_result_having_word_in_defn`)) ENGINE=MyISAM  DEFAULT
  CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Search Index to store search query
  and its result' AUTO_INCREMENT=7531 ;


CREATE TABLE IF NOT EXISTS `tbl_search_query` ( `search_query_id` int(11) NOT
  NULL AUTO_INCREMENT, `search_query` varchar(255) NOT NULL, `search_in`
  varchar(20) NOT NULL, `search_mode` varchar(10) NOT NULL,
  `search_session_key` varchar(32) NOT NULL, `user_IP` varchar(16) DEFAULT
  NULL, `search_datetime` datetime DEFAULT NULL, `result_found` tinyint(1) NOT
  NULL DEFAULT '0', `keyboard_used` char(2) DEFAULT NULL, `layout_used` char(6)
  DEFAULT NULL, PRIMARY KEY (`search_query_id`)) ENGINE=MyISAM  DEFAULT
  CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='To store search query from users'
  AUTO_INCREMENT=8409 ;
