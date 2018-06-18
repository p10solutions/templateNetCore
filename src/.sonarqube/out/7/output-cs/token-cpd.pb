ß
GC:\Template\templateNetCore\src\Template.Domain\DTO\PesquisaTemplate.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Domain "
." #
DTO# &
{ 
public 

sealed 
class 
PesquisaTemplate (
{ 
public		 
string		 
Nome		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
DateTime

 
?

 
DataInclusao

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
int 
? 
	IdUsuario 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ƒ
LC:\Template\templateNetCore\src\Template.Domain\Entities\TemplateEntidade.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Domain "
." #
Entities# +
{ 
public		 

sealed		 
class		 
TemplateEntidade		 (
:		) *
Entidade		+ 3
<		3 4
TemplateEntidade		4 D
>		D E
{

 
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
DataInclusao $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
DataAlteracao &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
TemplateEntidade 
(  
)  !
:! "
base" &
(& '
new' *
TemplateValidation+ =
(= >
)> ?
)? @
{ 	
} 	
public 
override 
bool 
Validar $
($ %
)% &
{ 	
return 
Validar 
( 
this 
)  
;  !
} 	
} 
} Š
YC:\Template\templateNetCore\src\Template.Domain\Entities\Validacoes\TemplateValidation.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Domain "
." #
Entities# +
.+ ,

Validacoes, 6
{ 
public		 

class		 
TemplateValidation		 #
:		# $

Validation		% /
<		/ 0
TemplateEntidade		0 @
>		@ A
{

 
public 
void 
ValidarNome 
(  
)  !
{ 	
RuleFor 
( 
t 
=> 
t 
. 
Nome 
)  
. 
Length 
( 
$num 
, 
$num 
) 
. 
NotEmpty 
( 
) 
. 
WithMessage 
( 
$str :
): ;
;; <
} 	
public 
void 
ValidarDescricao $
($ %
)% &
{ 	
RuleFor 
( 
t 
=> 
t 
. 
	Descricao $
)$ %
. 
MaximumLength 
( 
$num "
)" #
. 
WithMessage 
( 
$str U
)U V
;V W
} 	
public 
override 
void  
ConfigurarValidacoes 1
(1 2
)2 3
{ 	
ValidarNome 
( 
) 
; 
ValidarDescricao 
( 
) 
; 
} 	
}   
}!! ì
^C:\Template\templateNetCore\src\Template.Domain\Interfaces\Repositories\ITemplateRepository.cs
	namespace

 	
Template


 
.

 
Domain

 
.

 

Interfaces

 $
.

$ %
Repositories

% 1
{ 
public 

	interface 
ITemplateRepository (
:( )
IRepository* 5
<5 6
TemplateEntidade6 F
>F G
{ 

IQueryable 
< 
TemplateEntidade #
># $
Listar% +
(+ ,
PesquisaTemplate, <
pesquisa= E
,E F
	PaginacaoG P
	paginacaoQ Z
)Z [
;[ \
} 
} “
WC:\Template\templateNetCore\src\Template.Domain\Interfaces\Services\ITemplateService.cs
	namespace 	
Template
 
. 
Domain 
. 

Interfaces $
.$ %
Services% -
{ 
public 

	interface 
ITemplateService %
{		 
TemplateEntidade

 
	Cadastrar

 "
(

" #
TemplateEntidade

# 3
template

4 <
)

< =
;

= >
TemplateEntidade 
Alterar  
(  !
TemplateEntidade! 1
template2 :
): ;
;; <
void 
Remover 
( 
int 
id 
) 
; 
} 
} ˜
UC:\Template\templateNetCore\src\Template.Domain\Interfaces\UoW\IUnitOfWorkCadastro.cs
	namespace 	
Template
 
. 
Domain 
. 

Interfaces $
.$ %
UoW% (
{ 
public 

	interface 
IUnitOfWorkCadastro (
:( )
IUnitOfWork* 5
{		 
}

 
} û
JC:\Template\templateNetCore\src\Template.Domain\Service\TemplateService.cs
	namespace

 	
Template


 
.

 
Domain

 
.

 
Service

 !
{ 
public 

sealed 
class 
TemplateService '
:( )
Template* 2
.2 3
Core3 7
.7 8
Domain8 >
.> ?
Services? G
.G H
BaseH L
.L M
ServiceM T
<T U
TemplateEntidadeU e
>e f
,f g
ITemplateServiceh x
{ 
ITemplateRepository 
_templateRepository /
;/ 0
public 
TemplateService 
( 
ITemplateRepository 2
templateRepository3 E
,E F
IHandler '
<' (
DomainNotification( :
>: ;
domainNotification< N
,N O
IUnitOfWorkCadastro 2

unitOfWork3 =
) 
: 
base 
( 
domainNotification %
,% &

unitOfWork' 1
)1 2
{ 	
_templateRepository 
=  !
templateRepository" 4
;4 5
} 	
public 
TemplateEntidade 
Alterar  '
(' (
TemplateEntidade( 8
template9 A
)A B
{ 	
if 
( 
! 
VerificarEntidade "
(" #
template# +
)+ ,
), -
return 
template 
;  
template   
.   
DataAlteracao   "
=  # $
DateTime  % -
.  - .
Now  . 1
;  1 2
_templateRepository"" 
.""  
	Atualizar""  )
("") *
template""* 2
)""2 3
;""3 4
Commit$$ 
($$ 
$str$$ A
)$$A B
;$$B C
return&& 
template&& 
;&& 
}'' 	
public)) 
TemplateEntidade)) 
	Cadastrar))  )
())) *
TemplateEntidade))* :
template)); C
)))C D
{** 	
if++ 
(++ 
!++ 
VerificarEntidade++ "
(++" #
template++# +
)+++ ,
)++, -
return,, 
template,, 
;,,  
template00 
.00 
DataInclusao00 !
=00" #
DateTime00$ ,
.00, -
Now00- 0
;000 1
_templateRepository22 
.22  
	Adicionar22  )
(22) *
template22* 2
)222 3
;223 4
Commit44 
(44 
$str44 C
)44C D
;44D E
return66 
template66 
;66 
}77 	
public99 
void99 
Remover99 
(99 
int99 
id99  "
)99" #
{:: 	
_templateRepository;; 
.;;  
Remover;;  '
(;;' (
id;;( *
);;* +
;;;+ ,
Commit== 
(== 
$str== A
)==A B
;==B C
}>> 	
}?? 
}@@ 