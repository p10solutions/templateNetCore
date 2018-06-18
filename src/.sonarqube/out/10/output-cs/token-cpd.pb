ó
dC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Data\AutenticacaoContext.cs
	namespace

 	
Template


 
.

 
Cadastro

 
.

 
Infra

 !
.

! "
CrossCutting

" .
.

. /
Autenticacao

/ ;
.

; <
Data

< @
{ 
public 

sealed 
class 
AutenticacaoContext +
:+ ,
	DbContext- 6
{ 
public 
DbSet 
< 
Usuario 
> 
Usuario %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
var 

cascadeFKs 
= 
modelBuilder )
.) *
Model* /
./ 0
GetEntityTypes0 >
(> ?
)? @
.  !

SelectMany! +
(+ ,
t, -
=>. 0
t1 2
.2 3
GetForeignKeys3 A
(A B
)B C
)C D
.  !
Where! &
(& '
fk' )
=>* ,
!- .
fk. 0
.0 1
IsOwnership1 <
&&= ?
fk@ B
.B C
DeleteBehaviorC Q
==R T
DeleteBehaviorU c
.c d
Cascaded k
)k l
;l m
foreach 
( 
var 
fk 
in 

cascadeFKs )
)) *
fk 
. 
DeleteBehavior !
=" #
DeleteBehavior$ 2
.2 3
Restrict3 ;
;; <
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
var 
config 
= 
new  
ConfigurationBuilder 1
(1 2
)2 3
. 
SetBasePath 
( 
	Directory &
.& '
GetCurrentDirectory' :
(: ;
); <
)< =
.   
AddJsonFile   
(   
$str   /
)  / 0
.!! 
Build!! 
(!! 
)!! 
;!! 
optionsBuilder## 
.## 
UseSqlServer## '
(##' (
config##( .
.##. /
GetConnectionString##/ B
(##B C
$str##C [
)##[ \
)##\ ]
;##] ^
}$$ 	
}%% 
}&& Ó
oC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Data\Repositories\UsuarioRepository.cs
	namespace		 	
Template		
 
.		 
Cadastro		 
.		 
Infra		 !
.		! "
CrossCutting		" .
.		. /
Autenticacao		/ ;
.		; <
Data		< @
.		@ A
Repositories		A M
{

 
public 

sealed 
class 
UsuarioRepository )
:* +

Repository, 6
<6 7
Usuario7 >
>> ?
,? @
IUsuarioRepositoryA S
{ 
public 
AutenticacaoContext "
_context# +
{, -
get. 1
{2 3
return4 :
(; <
AutenticacaoContext< O
)O P
_dbP S
;S T
}U V
}W X
public 
UsuarioRepository  
(  !
AutenticacaoContext! 4
db5 7
)7 8
: 
base 
( 
db 
) 
{ 	
} 	
public 
Usuario 
ObterUsuario #
(# $
string$ *
login+ 0
,0 1
string2 8
senha9 >
)> ?
{ 	
return 
_context 
. 
Usuario #
.# $
SingleOrDefault$ 3
(3 4
u4 5
=>6 8
u9 :
.: ;
Login; @
==A C
loginD I
&&J L
uM N
.N O
SenhaO T
==U W
senhaX ]
)] ^
;^ _
} 	
} 
} ù
kC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Data\UoW\UnitOfWorkAutenticacao.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <
UoW< ?
{		 
public

 

sealed

 
class

 "
UnitOfWorkAutenticacao

 .
:

/ 0#
IUnitOfWorkAutenticacao

1 H
{ 
AutenticacaoContext 
_db 
;  
public "
UnitOfWorkAutenticacao %
(% &
AutenticacaoContext& 9
db: <
)< =
{ 	
_db 
= 
db 
; 
} 	
public 
void 
Commit 
( 
) 
{ 	
_db 
. 
SaveChanges 
( 
) 
; 
} 	
} 
} £
_C:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Entities\AspNetUser.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <
Entities< D
{ 
public 

sealed 
class 

AspNetUser "
:# $
IUsuario% -
{  
IHttpContextAccessor		 
	_accessor		 &
;		& '
public 

AspNetUser 
( 
) 
{ 	
} 	
public 

AspNetUser 
(  
IHttpContextAccessor .
accessor/ 7
)7 8
{ 	
	_accessor 
= 
accessor  
;  !
} 	
public 
string 
Nome 
=> 
	_accessor '
.' (
HttpContext( 3
.3 4
User4 8
.8 9
Identity9 A
.A B
NameB F
;F G
public 
bool 
Autenticado 
=>  "
	_accessor# ,
., -
HttpContext- 8
.8 9
User9 =
.= >
Identity> F
.F G
IsAuthenticatedG V
;V W
} 
} ÿ
\C:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Entities\Usuario.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <
Entities< D
{ 
public		 

sealed		 
class		 
Usuario		 
:		  !
Entidade		" *
<		* +
Usuario		+ 2
>		2 3
{

 
public 
Usuario 
( 
) 
: 
base 
(  
new  #
UsuarioValidation$ 5
(5 6
)6 7
)7 8
{ 	
} 	
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Login 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Senha 
{ 
get !
;! "
set# &
;& '
}( )
public 
override 
bool 
Validar $
($ %
)% &
{ 	
return 
Validar 
( 
this 
)  
;  !
} 	
} 
} â
qC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Entities\Validacoes\UsuarioValidation.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <
Entities< D
.D E

ValidacoesE O
{ 
public 

sealed 
class 
UsuarioValidation )
:* +

Validation, 6
<6 7
Usuario7 >
>> ?
{		 
public

 
override
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
{ 	
} 	
} 
} £
vC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Interfaces\Repositories\IUsuarioRepository.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <

Interfaces< F
.F G
RepositoriesG S
{ 
public		 

	interface		 
IUsuarioRepository		 '
:		' (
IRepository		) 4
<		4 5
Usuario		5 <
>		< =
{

 
Usuario 
ObterUsuario 
( 
string #
login$ )
,) *
string+ 1
senha2 7
)7 8
;8 9
} 
} Ö
oC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Interfaces\Services\IUsuarioService.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <

Interfaces< F
.F G
ServicesG O
{ 
public 

	interface 
IUsuarioService $
{		 
Usuario

 

Autenticar

 
(

 
Usuario

 "
usuario

# *
)

* +
;

+ ,
} 
} Ø
rC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Interfaces\UoW\IUnitOfWorkAutenticacao.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <

Interfaces< F
.F G
UoWG J
{ 
public 

	interface #
IUnitOfWorkAutenticacao ,
:, -
IUnitOfWork. 9
{ 
} 
} Ù
cC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Services\UsuarioService.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
.; <
Services< D
{ 
public 

sealed 
class 
UsuarioService &
:' (
Service) 0
<0 1
Usuario1 8
>8 9
,9 :
IUsuarioService; J
{ 
IUsuarioRepository 
_usuarioRepository -
;- .
public 
UsuarioService 
( 
IUsuarioRepository 0
usuarioRepository1 B
,B C
IHandler &
<& '
DomainNotification' 9
>9 :
domainNotification; M
,M N#
IUnitOfWorkAutenticacao 5

unitOfWork6 @
) 
: 
base 
( 
domainNotification %
,% &

unitOfWork' 1
)1 2
{ 	
_usuarioRepository 
=  
usuarioRepository! 2
;2 3
} 	
public 
Usuario 

Autenticar !
(! "
Usuario" )
usuario* 1
)1 2
{ 	
if 
( 
! 
VerificarEntidade !
(! "
usuario" )
)) *
)* +
return   
usuario   
;   
usuario"" 
="" 
_usuarioRepository"" (
.""( )
ObterUsuario"") 5
(""5 6
usuario""6 =
.""= >
Login""> C
,""C D
usuario""E L
.""L M
Senha""M R
)""R S
;""S T
if$$ 
($$ 
usuario$$ 
==$$ 
null$$ 
)$$  
	Notificar%% 
(%% 
new%% 
DomainNotification%% 0
(%%0 1
$str%%1 7
,%%7 8
$str%%9 ^
)%%^ _
)%%_ `
;%%` a
return'' 
usuario'' 
;'' 
}(( 	
})) 
}** ª
qC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Token\SigningCredentialsConfiguration.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
{ 
public 

class +
SigningCredentialsConfiguration 0
{ 
private 
const 
string 
	SecretKey &
=' (
$str) I
;I J
public		 
static		 
readonly		  
SymmetricSecurityKey		 3
Key		4 7
=		8 9
new		: = 
SymmetricSecurityKey		> R
(		R S
Encoding		S [
.		[ \
ASCII		\ a
.		a b
GetBytes		b j
(		j k
	SecretKey		k t
)		t u
)		u v
;		v w
public

 
SigningCredentials

 !
SigningCredentials

" 4
{

5 6
get

7 :
;

: ;
}

< =
public +
SigningCredentialsConfiguration .
(. /
)/ 0
{ 	
SigningCredentials 
=  
new! $
SigningCredentials% 7
(7 8
Key8 ;
,; <
SecurityAlgorithms= O
.O P

HmacSha256P Z
)Z [
;[ \
} 	
} 
} ˆ
aC:\Template\templateNetCore\src\Template.Infra.CrossCutting.Autenticacao\Token\TokenDescriptor.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
Autenticacao/ ;
{ 
public 

class 
TokenDescriptor  
{ 
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
MinutesValid 
{  !
get" %
;% &
set' *
;* +
}, -
} 
}		 