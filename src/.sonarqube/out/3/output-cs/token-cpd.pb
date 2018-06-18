Ò
NC:\Template\templateNetCore\src\Template.Domain.Core\Entities\Base\Entidade.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 
Entities '
.' (
Base( ,
{		 
public

 

abstract

 
class

 
Entidade

 "
<

" #
T

# $
>

$ %
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #

Validation 
< 
T 
> 

_validador  
;  !
ValidationResult 
resultadoValidacao +
;+ ,
public 
Entidade 
( 

Validation "
<" #
T# $
>$ %
	validador& /
)/ 0
{ 	

_validador 
= 
	validador "
;" #
} 	
public 
abstract 
bool 
Validar $
($ %
)% &
;& '
public 
bool 
Validar 
( 
T 
entidade &
)& '
{ 	

_validador 
.  
ConfigurarValidacoes +
(+ ,
), -
;- .
resultadoValidacao 
= 

_validador  *
.* +
Validate+ 3
(3 4
entidade4 <
)< =
;= >
return 
resultadoValidacao %
.% &
IsValid& -
;- .
}   	
public"" 
List"" 
<"" 
DomainNotification"" &
>""& '
ObterNotificacoes""( 9
(""9 :
)"": ;
{## 	
return$$ 
resultadoValidacao$$ %
.$$% &
Errors$$& ,
.$$, -
Select$$- 3
($$3 4
e$$4 5
=>$$6 8
new$$9 <
DomainNotification$$= O
($$O P
e$$P Q
.$$Q R
PropertyName$$R ^
,$$^ _
e$$` a
.$$a b
ErrorMessage$$b n
)$$n o
)$$o p
.$$p q
ToList$$q w
($$w x
)$$x y
;$$y z
}%% 	
}&& 
}'' §
PC:\Template\templateNetCore\src\Template.Domain.Core\Entities\Base\Validation.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 
Entities '
.' (
Base( ,
{ 
public 

abstract 
class 

Validation $
<$ %
T% &
>& '
:( )
AbstractValidator* ;
<; <
T< =
>= >
{		 
public

 
abstract

 
void

  
ConfigurarValidacoes

 1
(

1 2
)

2 3
;

3 4
} 
} ¥
IC:\Template\templateNetCore\src\Template.Domain.Core\Entities\IUsuario.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 
Entities '
{ 
public 

	interface 
IUsuario 
{ 
string		 
Nome		 
{		 
get		 
;		 
}		 
bool

 
Autenticado

 
{

 
get

 
;

 
}

  
} 
} ô
FC:\Template\templateNetCore\src\Template.Domain.Core\Entities\Teste.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 
Entities '
{ 
public 

class 
Teste 
: 
Base 
. 
Entidade &
<& '
Teste' ,
>, -
{		 
public

 
Teste

 
(

 

Validation

 
<

  
Teste

  %
>

% &
	validador

' 0
)

0 1
:

2 3
base

4 8
(

8 9
	validador

9 B
)

B C
{ 	
} 	
public 
override 
bool 
Validar $
($ %
)% &
{ 	
return 
base 
. 
Validar 
(  
this  $
)$ %
;% &
} 	
} 
} ²
JC:\Template\templateNetCore\src\Template.Domain.Core\Events\DomainEvent.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 
Events %
{ 
public 

class 
DomainEvent 
{ 
public 
static 
Func 
< 
IServiceProvider +
>+ ,
ContainerAccessor- >
{? @
getA D
;D E
setF I
;I J
}K L
private		 
static		 
IServiceProvider		 '
	Container		( 1
=>		2 4
ContainerAccessor		5 F
(		F G
)		G H
;		H I
public 
static 
void 
Raise  
<  !
T! "
>" #
(# $
T$ %
args& *
)* +
where, 1
T2 3
:4 5
IDomainEvent6 B
{ 	
if 
( 
	Container 
== 
null !
)! "
return# )
;) *
var 
obj 
= 
	Container 
.  

GetService  *
(* +
typeof+ 1
(1 2
IHandler2 :
<: ;
T; <
>< =
)= >
)> ?
;? @
( 
( 
IHandler 
< 
T 
> 
) 
obj 
) 
. 
Handle %
(% &
args& *
)* +
;+ ,
} 	
} 
} ‹

QC:\Template\templateNetCore\src\Template.Domain.Core\Events\DomainNotification.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 
Events %
{ 
public 

sealed 
class 
DomainNotification *
:* +
IDomainEvent, 8
{		 
public

 
string

 
Chave

 
{

 
get

 !
;

! "
private

# *
set

+ .
;

. /
}

0 1
public 
string 
Valor 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
DateTime 
DataOcorrencia &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
public 
DomainNotification !
(! "
string" (
chave) .
,. /
string0 6
valor7 <
)< =
{ 	
Chave 
= 
chave 
; 
Valor 
= 
valor 
; 
} 	
} 
} œ
ZC:\Template\templateNetCore\src\Template.Domain.Core\Handlers\DomainNotificationHandler.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 
Handlers '
{ 
public		 

class		 %
DomainNotificationHandler		 *
:		+ ,
IHandler		- 5
<		5 6
DomainNotification		6 H
>		H I
{

 
List 
< 
DomainNotification 
>  
_notificacoes! .
;. /
public %
DomainNotificationHandler (
(( )
)) *
{ 	
_notificacoes 
= 
new 
List  $
<$ %
DomainNotification% 7
>7 8
(8 9
)9 :
;: ;
} 	
public 
void 
Dispose 
( 
) 
{ 	
this 
. 
_notificacoes 
=  
null! %
;% &
} 	
public 
bool 
ExistemNotificacoes '
(' (
)( )
{ 	
return 
_notificacoes  
.  !
Count! &
>' (
$num) *
;* +
} 	
public 
void 
Handle 
( 
DomainNotification -
args. 2
)2 3
{ 	
_notificacoes 
. 
Add 
( 
args "
)" #
;# $
} 	
public!! 
IEnumerable!! 
<!! 
DomainNotification!! -
>!!- .
	Notificar!!/ 8
(!!8 9
)!!9 :
{"" 	
return## 
ObterValores## 
(##  
)##  !
;##! "
}$$ 	
public&& 
List&& 
<&& 
DomainNotification&& &
>&&& '
ObterValores&&( 4
(&&4 5
)&&5 6
{'' 	
return(( 
_notificacoes((  
;((  !
})) 	
}** 
}++ Ô
OC:\Template\templateNetCore\src\Template.Domain.Core\Interfaces\IDomainEvent.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 

Interfaces )
{ 
public 

	interface 
IDomainEvent !
{ 
DateTime		 
DataOcorrencia		 
{		  !
get		" %
;		% &
}		' (
}

 
} à
KC:\Template\templateNetCore\src\Template.Domain.Core\Interfaces\IHandler.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 

Interfaces )
{ 
public 

	interface 
IHandler 
< 
T 
>  
:! "
IDisposable# .
where/ 4
T5 6
:7 8
IDomainEvent9 E
{ 
void		 
Handle		 
(		 
T		 
args		 
)		 
;		 
IEnumerable

 
<

 
T

 
>

 
	Notificar

  
(

  !
)

! "
;

" #
bool 
ExistemNotificacoes  
(  !
)! "
;" #
List 
< 
T 
> 
ObterValores 
( 
) 
; 
} 
} ®
`C:\Template\templateNetCore\src\Template.Domain.Core\Interfaces\Repositories\Base\IRepository.cs
	namespace 	
Template
 
. 
Core 
. 
Domain 
. 

Interfaces )
.) *
Repositories* 6
.6 7
Base7 ;
{ 
public 

	interface 
IRepository  
<  !
T! "
>" #
where$ )
T* +
:, -
Entidade. 6
<6 7
T7 8
>8 9
{ 
void 
	Adicionar 
( 
T 
entidade !
)! "
;" #
void		 
	Atualizar		 
(		 
T		 
entidade		 !
)		! "
;		" #
void

 
Remover

 
(

 
T

 
entidade

 
)

  
;

  !
void 
Remover 
( 
int 
id 
) 
; 
bool 
Existe 
( 
int 
id 
) 
; 
T 	
Buscar
 
( 
int 
id 
) 
; 

IQueryable 
< 
T 
> 
Listar 
( 
) 
; 
} 
} ù
RC:\Template\templateNetCore\src\Template.Domain.Core\Interfaces\UoW\IUnitOfWork.cs
	namespace 	
Template
 
. 
Core 
. 
Infra 
. 
Data "
." #

Interfaces# -
.- .
UoW. 1
{ 
public 

	interface 
IUnitOfWork  
{ 
void		 
Commit		 
(		 
)		 
;		 
}

 
} ¯
MC:\Template\templateNetCore\src\Template.Domain.Core\Services\Base\Service.cs
	namespace		 	
Template		
 
.		 
Core		 
.		 
Domain		 
.		 
Services		 '
.		' (
Base		( ,
{

 
public 

abstract 
class 
Service !
<! "
T" #
># $
{ %
DomainNotificationHandler !
_domainNotification" 5
;5 6
IUnitOfWork 
_unitOfWork 
;  
public 
Service 
( 
IHandler 
<  
DomainNotification  2
>2 3
domainNotification4 F
,F G
IUnitOfWorkH S

unitOfWorkT ^
)^ _
{ 	
_domainNotification 
=  !
(" #%
DomainNotificationHandler# <
)< =
domainNotification= O
;O P
_unitOfWork 
= 

unitOfWork $
;$ %
} 	
	protected 
bool 
VerificarEntidade (
(( )
Entidade) 1
<1 2
T2 3
>3 4
entidade5 =
)= >
{ 	
if 
( 
entidade 
. 
Validar  
(  !
)! "
)" #
return$ *
true+ /
;/ 0
var 
notificacoes 
= 
entidade '
.' (
ObterNotificacoes( 9
(9 :
): ;
;; <
if 
( 
! 
notificacoes 
. 
Any !
(! "
)" #
)# $
return% +
true, 0
;0 1
notificacoes 
. 
ToList 
(  
)  !
.! "
ForEach" )
() *
DomainEvent* 5
.5 6
Raise6 ;
); <
;< =
return   
false   
;   
}!! 	
public## 
void## 
	Notificar## 
(## 
DomainNotification## 0
notification##1 =
)##= >
{$$ 	
DomainEvent%% 
.%% 
Raise%% 
(%% 
notification%% *
)%%* +
;%%+ ,
}&& 	
	protected(( 
bool(( 
Commit(( 
((( 
string(( $
mensagemErroCommit((% 7
)((7 8
{)) 	
if** 
(** 
_domainNotification** #
.**# $
ExistemNotificacoes**$ 7
(**7 8
)**8 9
)**9 :
return++ 
false++ 
;++ 
try-- 
{.. 
_unitOfWork// 
.// 
Commit// "
(//" #
)//# $
;//$ %
}00 
catch11 
(11 
	Exception11 
ex11 
)11 
{22 
DomainEvent33 
.33 
Raise33 !
(33! "
new33" %
DomainNotification33& 8
(338 9
$str339 ?
,33? @
mensagemErroCommit33A S
)33S T
)33T U
;33U V
return77 
false77 
;77 
}88 
return:: 
true:: 
;:: 
};; 	
}<< 
}== 