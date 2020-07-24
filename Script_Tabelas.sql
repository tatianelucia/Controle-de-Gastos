Create Database ControleGastos

Use ControleGastos

Create Table categoria_tb (
	categoria_id INT Identity(1,1) Primary Key	Not Null,
	nome	     VARCHAR(200)				    Not Null,
	dt_inclusao	 SMALLDATETIME					Not Null,
	dt_alteracao SMALLDATETIME					Null,
	usuario	     VARCHAR(50)					Not Null
)
---------------------------------------------------------

Create Table forma_pgmt_tb (
	forma_pgmt_id INT Identity(1,1) Primary Key	Not Null,
	tp_pgmt		  VARCHAR(100)					Not Null,
	dt_inclusao	  SMALLDATETIME					Not Null,
	dt_alteracao  SMALLDATETIME					Null,
	usuario	      VARCHAR(50)					Not Null
)
---------------------------------------------------------

Create Table produto_tb (
	produto_id   INT Identity(1,1) Primary Key	Not Null,
	nome	     VARCHAR(200)					Not Null,
	valor	     FLOAT							Not Null,
	dt_inclusao  SMALLDATETIME					Not Null,
	dt_alteracao SMALLDATETIME					Null,
	usuario	     VARCHAR(50)					Not Null
)
---------------------------------------------------------

Create Table compra_tb (
	compra_id     INT Identity(1,1) Primary Key Not Null,
	produto_id    INT							Not Null,
	forma_pgmt_id INT							Not Null,
	nome		  VARCHAR(200)					Not Null,
	nome_loja	  VARCHAR(200)					Not Null,
	vl_compra     FLOAT							Not Null,
	dt_inclusao   SMALLDATETIME					Not Null,
	dt_alteracao  SMALLDATETIME					Null,
	usuario	      VARCHAR(50)					Not Null
	Constraint FK_produto_id_nome Foreign Key (produto_id, nome) References produto_tb (produto_id, nome), 
	Constraint FK_forma_pgmt_id Foreign Key (forma_pgmt_id) References forma_pgmt_tb (forma_pgmt_id)
)
