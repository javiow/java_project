/*
 
 create table member
 (
 	m_id 				varchar2(100),
 	m_name			varchar2(100),
 	m_pwd			varchar2(100),
 	m_email			varchar2(100),
 	m_tel				varchar2(100),
 	m_age			int,
 	m_gender		varchar2(100),
 	m_addr			varchar2(100),
 	m_position		varchar2(100)
 )
 
 alter table member
 	add constraint pk_member_m_id primary key(m_id)
   
 create table grade
 (
 	m_id				varchar2(100),
 	g_grade			varchar2(100),
 	g_count			int,
 	g_price			int,
 	g_recdate		varchar2(100)
 )
 
 alter table grade 
 	add constraint fk_grade_m_id foreign key(m_id) references member(m_id)
 
 create table order_prod
 (
 	o_idx				int,
 	p_idx				int,
 	m_id				varchar2(100),
 	o_name			varchar2(100),
 	o_count			int,
 	o_color			varchar2(100),
 	o_size			varchar2(100),
 	o_date			varchar2(100)
 )
 
 alter table order_prod
 	add constraint pk_order_o_idx primary key(o_idx)
 	
 alter table order_prod 
 	add constraint fk_order_p_idx foreign key(p_idx) references product(p_idx)
 
 alter table order_prod 
 	add constraint fk_order_m_id foreign key(m_id) references member(m_id)
 	
 create table product
 (
 	p_idx				int,
 	p_name			varchar2(100),
 	p_kind			varchar2(100),
 	p_price			int,
 	p_regdate		varchar2(100),
 	p_filename		varchar2(100),
 	p_explain		varchar2(100)
 )
 
 alter table product
 	add constraint pk_product_p_idx primary key(p_idx)
 
 create table instock
 (
 	p_idx				int,
 	p_name			varchar2(100),
 	i_count			int,
 	i_date				varchar2(100)
 )
 
  alter table instock
 	add constraint pk_instock_p_idx primary key(p_idx)
 
 create table stock
 (
 	p_idx				int,
 	p_name			varchar2(100),
 	s_count			int,
 	s_date			varchar2(100)
 )
 
  alter table stock
 	add constraint pk_stock_p_idx primary key(p_idx)
 
 create table outstock
 (
 	p_idx				int,
 	p_name			varchar2(100),
 	out_count		int,
 	out_date			varchar2(100)
 )
 
  alter table outstock
 	add constraint pk_outstock_p_idx primary key(p_idx)
 
*/
