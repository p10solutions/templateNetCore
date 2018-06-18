√"
[C:\Template\templateNetCore\src\Template.Service\Configuracoes\AutenticacaoConfiguration.cs
	namespace		 	
Eventos		
 
.		 
IO		 
.		 
Services		 
.		 
Api		 !
.		! "
Configurations		" 0
{

 
public 

static 
class %
AutenticacaoConfiguration 1
{ 
public 
static 
void 
AddApiSecurity )
() *
this* .
IServiceCollection/ A
servicesB J
,J K
IConfigurationL Z
configuration[ h
)h i
{ 	
if 
( 
services 
== 
null  
)  !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
servicesI Q
)Q R
)R S
;S T
var 
tokenConfigurations #
=$ %
new& )
TokenDescriptor* 9
(9 :
): ;
;; <
new -
!ConfigureFromConfigurationOptions 1
<1 2
TokenDescriptor2 A
>A B
(B C
configuration !
.! "

GetSection" ,
(, -
$str- >
)> ?
)? @
. 
	Configure 
( 
tokenConfigurations .
). /
;/ 0
services 
. 
AddSingleton !
(! "
tokenConfigurations" 5
)5 6
;6 7
services 
. 
AddAuthentication &
(& '
options' .
=>/ 1
{ 
options 
. %
DefaultAuthenticateScheme 1
=2 3
JwtBearerDefaults4 E
.E F 
AuthenticationSchemeF Z
;Z [
options 
. "
DefaultChallengeScheme .
=/ 0
JwtBearerDefaults1 B
.B C 
AuthenticationSchemeC W
;W X
} 
) 
. 
AddJwtBearer 
( 
bearerOptions )
=>* ,
{ 
bearerOptions   
.    
RequireHttpsMetadata   2
=  3 4
false  5 :
;  : ;
bearerOptions!! 
.!! 
	SaveToken!! '
=!!( )
true!!* .
;!!. /
var## 
paramsValidation## $
=##% &
bearerOptions##' 4
.##4 5%
TokenValidationParameters##5 N
;##N O
paramsValidation%%  
.%%  !
IssuerSigningKey%%! 1
=%%2 3+
SigningCredentialsConfiguration%%4 S
.%%S T
Key%%T W
;%%W X
paramsValidation&&  
.&&  !
ValidAudience&&! .
=&&/ 0
tokenConfigurations&&1 D
.&&D E
Audience&&E M
;&&M N
paramsValidation''  
.''  !
ValidIssuer''! ,
=''- .
tokenConfigurations''/ B
.''B C
Issuer''C I
;''I J
paramsValidation))  
.))  !$
ValidateIssuerSigningKey))! 9
=)): ;
true))< @
;))@ A
paramsValidation**  
.**  !
ValidateLifetime**! 1
=**2 3
true**4 8
;**8 9
paramsValidation++  
.++  !
	ClockSkew++! *
=+++ ,
TimeSpan++- 5
.++5 6
Zero++6 :
;++: ;
},, 
),, 
;,, 
services.. 
... 
AddAuthorization.. %
(..% &
options..& -
=>... 0
{// 
options33 
.33 
	AddPolicy33 !
(33! "
$str33" *
,33* +
new33, /&
AuthorizationPolicyBuilder330 J
(33J K
)33K L
.44 $
AddAuthenticationSchemes44 -
(44- .
JwtBearerDefaults44. ?
.44? @ 
AuthenticationScheme44@ T
)44T U
.55 $
RequireAuthenticatedUser55 -
(55- .
)55. /
.55/ 0
Build550 5
(555 6
)556 7
)557 8
;558 9
}66 
)66 
;66 
}77 	
}88 
}99 ¬
nC:\Template\templateNetCore\src\Template.Service\Configuracoes\AuthorizationHeaderParameterOperationFilter .cs
	namespace 	
Eventos
 
. 
IO 
. 
Services 
. 
Api !
.! "
Configurations" 0
{ 
public		 

class		 7
+AuthorizationHeaderParameterOperationFilter		 <
:		= >
IOperationFilter		? O
{

 
public 
void 
Apply 
( 
	Operation #
	operation$ -
,- ."
OperationFilterContext/ E
contextF M
)M N
{ 	
var 
filterPipeline 
=  
context! (
.( )
ApiDescription) 7
.7 8
ActionDescriptor8 H
.H I
FilterDescriptorsI Z
;Z [
var 
isAuthorized 
= 
filterPipeline -
.- .
Select. 4
(4 5

filterInfo5 ?
=>@ B

filterInfoC M
.M N
FilterN T
)T U
.U V
AnyV Y
(Y Z
filterZ `
=>a c
filterd j
isk m
AuthorizeFiltern }
)} ~
;~ 
var 
allowAnonymous 
=  
filterPipeline! /
./ 0
Select0 6
(6 7

filterInfo7 A
=>B D

filterInfoE O
.O P
FilterP V
)V W
.W X
AnyX [
([ \
filter\ b
=>c e
filterf l
ism o"
IAllowAnonymousFilter	p Ö
)
Ö Ü
;
Ü á
if 
( 
isAuthorized 
&& 
!  !
allowAnonymous! /
)/ 0
{ 
if 
( 
	operation 
. 

Parameters (
==) +
null, 0
)0 1
	operation 
. 

Parameters (
=) *
new+ .
List/ 3
<3 4

IParameter4 >
>> ?
(? @
)@ A
;A B
	operation 
. 

Parameters $
.$ %
Add% (
(( )
new) ,
NonBodyParameter- =
{ 
Name 
= 
$str *
,* +
In 
= 
$str !
,! "
Description 
=  !
$str" 0
,0 1
Required 
= 
true #
,# $
Type 
= 
$str #
} 
) 
; 
} 
} 	
}   
}!! Ä
bC:\Template\templateNetCore\src\Template.Service\Configuracoes\DependencyInjectionConfiguration.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Configuracoes  -
{ 
public 

static 
class ,
 DependencyInjectionConfiguration 8
{ 
public 
static 
void 
AddDIConfiguration -
(- .
this. 2
IServiceCollection3 E
servicesF N
)N O
{		 	
BootsTrapper

 
.

 
	Registrar

 "
(

" #
services

# +
)

+ ,
;

, -
} 	
} 
} …&
TC:\Template\templateNetCore\src\Template.Service\Configuracoes\RouteConfiguration.cs
	namespace 	
Eventos
 
. 
IO 
. 
Services 
. 
Api !
.! "
Configurations" 0
{		 
internal

 
class

 
RouteConvention

 "
:

# $'
IApplicationModelConvention

% @
{ 
private 
readonly 
AttributeRouteModel ,
_centralPrefix- ;
;; <
public 
RouteConvention 
( "
IRouteTemplateProvider 5!
routeTemplateProvider6 K
)K L
{ 	
_centralPrefix 
= 
new  
AttributeRouteModel! 4
(4 5!
routeTemplateProvider5 J
)J K
;K L
} 	
public 
void 
Apply 
( 
ApplicationModel *
application+ 6
)6 7
{ 	
foreach 
( 
var 

controller #
in$ &
application' 2
.2 3
Controllers3 >
)> ?
{ 
var 
matchedSelectors $
=% &

controller' 1
.1 2
	Selectors2 ;
.; <
Where< A
(A B
xB C
=>D F
xG H
.H I
AttributeRouteModelI \
!=] _
null` d
)d e
.e f
ToListf l
(l m
)m n
;n o
if 
( 
matchedSelectors $
.$ %
Any% (
(( )
)) *
)* +
{ 
foreach 
( 
var  
selectorModel! .
in/ 1
matchedSelectors2 B
)B C
{ 
selectorModel %
.% &
AttributeRouteModel& 9
=: ;
AttributeRouteModel< O
.O P&
CombineAttributeRouteModelP j
(j k
_centralPrefixk y
,y z
selectorModel )
.) *
AttributeRouteModel* =
)= >
;> ?
} 
} 
var!! 
unmatchedSelectors!! &
=!!' (

controller!!) 3
.!!3 4
	Selectors!!4 =
.!!= >
Where!!> C
(!!C D
x!!D E
=>!!F H
x!!I J
.!!J K
AttributeRouteModel!!K ^
==!!_ a
null!!b f
)!!f g
.!!g h
ToList!!h n
(!!n o
)!!o p
;!!p q
if"" 
("" 
unmatchedSelectors"" &
.""& '
Any""' *
(""* +
)""+ ,
)"", -
{## 
foreach$$ 
($$ 
var$$  
selectorModel$$! .
in$$/ 1
unmatchedSelectors$$2 D
)$$D E
{%% 
selectorModel&& %
.&&% &
AttributeRouteModel&&& 9
=&&: ;
_centralPrefix&&< J
;&&J K
}'' 
}(( 
})) 
}** 	
}++ 
public-- 

static-- 
class-- 
MvcRouteExtensions-- *
{.. 
private// 
static// 
void// !
UseCentralRoutePrefix// 1
(//1 2
this//2 6

MvcOptions//7 A
opts//B F
,//F G"
IRouteTemplateProvider//H ^
routeAttribute//_ m
)//m n
{00 	
opts11 
.11 
Conventions11 
.11 
Insert11 #
(11# $
$num11$ %
,11% &
new11' *
RouteConvention11+ :
(11: ;
routeAttribute11; I
)11I J
)11J K
;11K L
}22 	
public44 
static44 
void44 
AddApiVersioning44 +
(44+ ,
this44, 0
IServiceCollection441 C
services44D L
,44L M
string44N T
routeUrl44U ]
)44] ^
{55 	
if66 
(66 
services66 
==66 
null66  
)66  !
throw66" '
new66( +!
ArgumentNullException66, A
(66A B
nameof66B H
(66H I
services66I Q
)66Q R
)66R S
;66S T
services88 
.88 
	Configure88 
<88 

MvcOptions88 )
>88) *
(88* +
opt88+ .
=>88/ 1
{99 
opt:: 
.:: !
UseCentralRoutePrefix:: )
(::) *
new::* -
RouteAttribute::. <
(::< =
routeUrl::= E
)::E F
)::F G
;::G H
};; 
);; 
;;; 
}<< 	
}== 
}>> œ
VC:\Template\templateNetCore\src\Template.Service\Configuracoes\SwaggerConfiguration.cs
	namespace 	
Eventos
 
. 
IO 
. 
Services 
. 
Api !
.! "
Configurations" 0
{ 
public 

static 
class  
SwaggerConfiguration ,
{ 
public		 
static		 
void		 
AddSwaggerConfig		 +
(		+ ,
this		, 0
IServiceCollection		1 C
services		D L
)		L M
{

 	
services 
. 
AddSwaggerGen "
(" #
s# $
=>% '
{ 
s 
. 

SwaggerDoc 
( 
$str !
,! "
new# &
Info' +
{ 
Version 
= 
$str "
," #
Title 
= 
$str *
,* +
Description 
=  !
$str" 8
,8 9
TermsOfService "
=# $
$str% -
,- .
Contact 
= 
new !
Contact" )
{* +
Name, 0
=1 2
$str3 O
,O P
EmailQ V
=W X
$strY s
,s t
Urlu x
=y z
$str	{ é
}
è ê
,
ê ë
License 
= 
new !
License" )
{* +
Name, 0
=1 2
$str3 8
,8 9
Url: =
=> ?
$str@ Z
}[ \
} 
) 
; 
s 
. 
OperationFilter !
<! "7
+AuthorizationHeaderParameterOperationFilter" M
>M N
(N O
)O P
;P Q
} 
) 
; 
services 
. 
ConfigureSwaggerGen (
(( )
opt) ,
=>- /
{ 
opt 
. 
OperationFilter #
<# $7
+AuthorizationHeaderParameterOperationFilter$ O
>O P
(P Q
)Q R
;R S
} 
) 
; 
} 	
} 
}   ˇ3
VC:\Template\templateNetCore\src\Template.Service\Controllers\AutenticacaoController.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Controllers  +
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class "
AutenticacaoController '
:( )
BaseController* 8
{ 
readonly 
TokenDescriptor  
_tokenDescriptor! 1
;1 2
readonly 
IUsuarioService  
_usuarioService! 0
;0 1
readonly 
IMapper 
_mapper  
;  !
public "
AutenticacaoController %
(% &
IHandler) 1
<1 2
DomainNotification2 D
>D E%
domainNotificationHandlerF _
,_ `
TokenDescriptor) 8
tokenDescriptor9 H
,H I
IUsuarioService) 8
usuarioService9 G
,G H
IMapper) 0
mapper1 7
)% &
:   
base   
(   %
domainNotificationHandler   ,
)  , -
{!! 	
_usuarioService"" 
="" 
usuarioService"" ,
;"", -
_tokenDescriptor## 
=## 
tokenDescriptor## .
;##. /
_mapper$$ 
=$$ 
mapper$$ 
;$$ 
}%% 	
['' 	
HttpPost''	 
]'' 
[(( 	
Route((	 
((( 
$str(( 
)(( 
](( 
public)) 
IActionResult)) 
Login)) "
())" #
[))# $
FromBody))$ ,
])), -
LoginViewModel))- ;
loginViewModel))< J
)))J K
{** 	
if++ 
(++ 
!++ 
ValidarModelState++ "
(++" #
)++# $
)++$ %
return,, 
Resposta,, 
(,,  
),,  !
;,,! "
var.. 
usuario.. 
=.. 
_mapper.. !
...! "
Map.." %
<..% &
Usuario..& -
>..- .
(... /
loginViewModel../ =
)..= >
;..> ?
loginViewModel00 
=00 
_mapper00 $
.00$ %
Map00% (
<00( )
LoginViewModel00) 7
>007 8
(008 9
_usuarioService009 H
.00H I

Autenticar00I S
(00S T
usuario00T [
)00[ \
)00\ ]
;00] ^
return22 
Resposta22 
(22 
GerarTokenUsuario22 -
(22- .
loginViewModel22. <
)22< =
)22= >
;22> ?
}33 	
private55 
object55 
GerarTokenUsuario55 (
(55( )
LoginViewModel55) 7
login558 =
)55= >
{66 	
if77 
(77 
login77 
==77 
null77 
)77 
return88 
login88 
;88 
var:: 
handler:: 
=:: 
new:: #
JwtSecurityTokenHandler:: 5
(::5 6
)::6 7
;::7 8
var;; 
signingConf;; 
=;; 
new;; !+
SigningCredentialsConfiguration;;" A
(;;A B
);;B C
;;;C D
ClaimsIdentity== 
identity== #
===$ %
new==& )
ClaimsIdentity==* 8
(==8 9
new>> 
GenericIdentity>> #
(>># $
login>>$ )
.>>) *
Login>>* /
,>>/ 0
$str>>1 8
)>>8 9
,>>9 :
new?? 
[?? 
]?? 
{?? 
new@@ 
Claim@@ !
(@@! "#
JwtRegisteredClaimNames@@" 9
.@@9 :
Jti@@: =
,@@= >
Guid@@? C
.@@C D
NewGuid@@D K
(@@K L
)@@L M
.@@M N
ToString@@N V
(@@V W
$str@@W Z
)@@Z [
)@@[ \
,@@\ ]
newAA 
ClaimAA !
(AA! "#
JwtRegisteredClaimNamesAA" 9
.AA9 :

UniqueNameAA: D
,AAD E
loginAAF K
.AAK L
LoginAAL Q
)AAQ R
}BB 
)CC 
;CC 
varEE 
tokenEE 
=EE 
newEE #
SecurityTokenDescriptorEE 3
{FF 
IssuerGG 
=GG 
_tokenDescriptorGG )
.GG) *
IssuerGG* 0
,GG0 1
AudienceHH 
=HH 
_tokenDescriptorHH +
.HH+ ,
AudienceHH, 4
,HH4 5
SigningCredentialsII "
=II# $
signingConfII% 0
.II0 1
SigningCredentialsII1 C
,IIC D
SubjectJJ 
=JJ 
identityJJ "
,JJ" #
	NotBeforeKK 
=KK 
DateTimeKK $
.KK$ %
NowKK% (
,KK( )
ExpiresLL 
=LL 
DateTimeLL "
.LL" #
NowLL# &
.LL& '

AddMinutesLL' 1
(LL1 2
_tokenDescriptorLL2 B
.LLB C
MinutesValidLLC O
)LLO P
}MM 
;MM 
varOO 
securityTokenOO 
=OO 
handlerOO  '
.OO' (
CreateTokenOO( 3
(OO3 4
tokenOO4 9
)OO9 :
;OO: ;
varQQ 

encodedJwtQQ 
=QQ 
handlerQQ $
.QQ$ %

WriteTokenQQ% /
(QQ/ 0
securityTokenQQ0 =
)QQ= >
;QQ> ?
varSS 
responseSS 
=SS 
newSS 
{TT 
access_tokenUU 
=UU 

encodedJwtUU )
,UU) *

expires_inVV 
=VV 
DateTimeVV %
.VV% &
NowVV& )
.VV) *

AddMinutesVV* 4
(VV4 5
_tokenDescriptorVV5 E
.VVE F
MinutesValidVVF R
)VVR S
,VVS T
userWW 
=WW 
newWW 
{XX 
loginYY 
=YY 
loginYY !
.YY! "
LoginYY" '
,YY' (
nomeZZ 
=ZZ 
loginZZ  
.ZZ  !
NomeZZ! %
}[[ 
}\\ 
;\\ 
return^^ 
response^^ 
;^^ 
}__ 	
}`` 
}aa æ
SC:\Template\templateNetCore\src\Template.Service\Controllers\Base\BaseController.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Controllers  +
.+ ,
Base, 0
{ 
[ 
Produces 
( 
$str  
)  !
]! "
public 

class 
BaseController 
:  !

Controller" ,
{ 
IHandler 
< 
DomainNotification #
># $&
_domainNotificationHandler% ?
;? @
public 
BaseController 
( 
IHandler &
<& '
DomainNotification' 9
>9 :%
domainNotificationHandler; T
)T U
{ 	&
_domainNotificationHandler &
=' (%
domainNotificationHandler) B
;B C
} 	
	protected 
IActionResult 
Resposta  (
(( )
object) /
	resultado0 9
=: ;
null< @
)@ A
{ 	
if 
( 
ValidarOperacao 
(  
)  !
)! "
return 
Ok 
( 
new 
{ 
sucesso  '
=( )
true* .
,. /
dados0 5
=6 7
	resultado8 A
}B C
)C D
;D E
return 

BadRequest 
( 
new !
{" #
sucesso$ +
=, -
false. 3
,3 4
erros5 :
=; <&
_domainNotificationHandler= W
.W X
ObterValoresX d
(d e
)e f
.f g
Selectg m
(m n
xn o
=>o q
xq r
.r s
Valors x
)x y
}y z
)z {
;{ |
} 	
	protected   
bool   
ValidarOperacao   &
(  & '
)  ' (
{!! 	
return"" 
!"" &
_domainNotificationHandler"" .
."". /
ExistemNotificacoes""/ B
(""B C
)""C D
;""D E
}## 	
	protected%% 
bool%% 
ValidarModelState%% (
(%%( )
)%%) *
{&& 	
if'' 
('' 

ModelState'' 
.'' 
IsValid'' "
)''" #
return(( 
true(( 
;(( $
NotificarErrosModelState** $
(**$ %
)**% &
;**& '
return,, 
false,, 
;,, 
}-- 	
	protected// 
void// $
NotificarErrosModelState// /
(/// 0
)//0 1
{00 	
var11 
erros11 
=11 

ModelState11 "
.11" #
Values11# )
.11) *

SelectMany11* 4
(114 5
x115 6
=>117 9
x11: ;
.11; <
Errors11< B
)11B C
;11C D
foreach33 
(33 
var33 
erro33 
in33  
erros33! &
)33& '
DomainEvent44 
.44 
Raise44 !
(44! "
new44" %
DomainNotification44& 8
(448 9
string449 ?
.44? @
Empty44@ E
,44E F
erro44G K
.44K L
ErrorMessage44L X
)44X Y
)44Y Z
;44Z [
}55 	
}66 
}77 ç=
RC:\Template\templateNetCore\src\Template.Service\Controllers\CadastroController.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Controllers  +
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
[ 
	Authorize 
] 
public 

class 
CadastroController #
:$ %
Base& *
.* +
BaseController+ 9
{ 
readonly 
ITemplateService !
_templateService" 2
;2 3
readonly 
ITemplateRepository $
_templateRepository% 8
;8 9
readonly 
IMapper 
_mapper  
;  !
public 
CadastroController !
(! "
ITemplateService" 2
templateService3 B
,B C
ITemplateRepository" 5
templateRepository6 H
,H I
IHandler" *
<* +
DomainNotification+ =
>= >%
domainNotificationHandler? X
,X Y
IMapper" )
mapper* 0
)! "
:   
base   
(   %
domainNotificationHandler   ,
)  , -
{!! 	
_templateService"" 
="" 
templateService"" .
;"". /
_templateRepository## 
=##  !
templateRepository##" 4
;##4 5
_mapper$$ 
=$$ 
mapper$$ 
;$$ 
}%% 	
['' 	
HttpPost''	 
]'' 
[(( 	
Route((	 
((( 
$str(( 
)(( 
](( 
public)) 
IActionResult)) 
Post)) !
())! "
[))" #
FromBody))# +
]))+ ,
	Paginacao)), 5
	paginacao))6 ?
=))@ A
null))B F
)))F G
{** 	
try++ 
{,, 
var-- 
	templates-- 
=-- 
_templateRepository--  3
.--3 4
Listar--4 :
(--: ;
new--; >
PesquisaTemplate--? O
(--O P
)--P Q
,--Q R
	paginacao--S \
)--\ ]
.--] ^
ToList--^ d
(--d e
)--e f
;--f g
var// 
templatesViewModel// &
=//' (
_mapper//) 0
.//0 1
Map//1 4
<//4 5
IEnumerable//5 @
<//@ A
TemplateViewModel//A R
>//R S
>//S T
(//T U
	templates//U ^
)//^ _
;//_ `
return11 
Ok11 
(11 
new11 %
TemplatePaginadoViewModel11 7
{118 9
	Templates11: C
=11D E
templatesViewModel11F X
,11X Y
	Paginacao11Z c
=11d e
	paginacao11f o
}11p q
)11q r
;11r s
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 
return55 

StatusCode55 !
(55! "
$num55" %
,55% &
new55' *
{55+ ,
sucesso55- 4
=555 6
false557 <
,55< =
erros55> C
=55D E
new55F I
string55J P
[55P Q
]55Q R
{55S T
$str55U 
}
55Ä Å
}
55Ç É
)
55É Ñ
;
55Ñ Ö
}66 
}77 	
[99 	
HttpGet99	 
(99 
$str99 
)99 
]99 
public:: 
IActionResult:: 
Get::  
(::  !
int::! $
id::% '
)::' (
{;; 	
try<< 
{== 
var>> 
template>> 
=>> 
_templateRepository>> 2
.>>2 3
Buscar>>3 9
(>>9 :
id>>: <
)>>< =
;>>= >
return@@ 
Ok@@ 
(@@ 
_mapper@@ !
.@@! "
Map@@" %
<@@% &
TemplateViewModel@@& 7
>@@7 8
(@@8 9
template@@9 A
)@@A B
)@@B C
;@@C D
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
returnDD 

StatusCodeDD !
(DD! "
$numDD" %
,DD% &
newDD' *
{DD+ ,
sucessoDD- 4
=DD5 6
falseDD7 <
,DD< =
errosDD> C
=DDD E
newDDF I
stringDDJ P
[DDP Q
]DDQ R
{DDS T
$strDDU 
}
DDÄ Å
}
DDÇ É
)
DDÉ Ñ
;
DDÑ Ö
}EE 
}FF 	
[HH 	
HttpPostHH	 
]HH 
publicII 
IActionResultII 
PostII !
(II! "
[II" #
FromBodyII# +
]II+ ,
TemplateViewModelII- >
	viewModelII? H
)IIH I
{JJ 	
ifKK 
(KK 
!KK 
ValidarModelStateKK "
(KK" #
)KK# $
)KK$ %
returnLL 
RespostaLL 
(LL  
)LL  !
;LL! "
varNN 
templateNN 
=NN 
_mapperNN "
.NN" #
MapNN# &
<NN& '
TemplateEntidadeNN' 7
>NN7 8
(NN8 9
	viewModelNN9 B
)NNB C
;NNC D
	viewModelPP 
=PP 
_mapperPP 
.PP  
MapPP  #
<PP# $
TemplateViewModelPP$ 5
>PP5 6
(PP6 7
_templateServicePP7 G
.PPG H
	CadastrarPPH Q
(PPQ R
templatePPR Z
)PPZ [
)PP[ \
;PP\ ]
returnRR 
RespostaRR 
(RR 
	viewModelRR %
)RR% &
;RR& '
}SS 	
[UU 	
HttpPutUU	 
(UU 
$strUU 
)UU 
]UU 
publicVV 
IActionResultVV 
PutVV  
(VV  !
intVV! $
idVV% '
,VV' (
[VV) *
FromBodyVV* 2
]VV2 3
TemplateViewModelVV4 E
	viewModelVVF O
)VVO P
{WW 	
ifXX 
(XX 
!XX 
ValidarModelStateXX "
(XX" #
)XX# $
)XX$ %
returnYY 
RespostaYY 
(YY  
)YY  !
;YY! "
var[[ 
template[[ 
=[[ 
_mapper[[ "
.[[" #
Map[[# &
<[[& '
TemplateEntidade[[' 7
>[[7 8
([[8 9
	viewModel[[9 B
)[[B C
;[[C D
	viewModel]] 
=]] 
_mapper]] 
.]]  
Map]]  #
<]]# $
TemplateViewModel]]$ 5
>]]5 6
(]]6 7
_templateService]]7 G
.]]G H
Alterar]]H O
(]]O P
template]]P X
)]]X Y
)]]Y Z
;]]Z [
return__ 
Resposta__ 
(__ 
	viewModel__ %
)__% &
;__& '
}`` 	
[cc 	

HttpDeletecc	 
(cc 
$strcc 
)cc 
]cc  
publicdd 
IActionResultdd 
Deletedd #
(dd# $
intdd$ '
iddd( *
)dd* +
{ee 	
_templateServiceff 
.ff 
Removerff $
(ff$ %
idff% '
)ff' (
;ff( )
returnhh 
Respostahh 
(hh 
)hh 
;hh 
}ii 	
}jj 
}kk œ
MC:\Template\templateNetCore\src\Template.Service\Controllers\GitController.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Controllers  +
{		 
[

 
Produces

 
(

 
$str

  
)

  !
]

! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
GitController 
:  

Controller! +
{ 
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
string !
>! "
Get# &
(& '
)' (
{ 	
return 
new 
string 
[ 
] 
{  !
$str" *
,* +
$str, 4
}5 6
;6 7
} 	
[ 	
HttpGet	 
( 
$str 
, 
Name 
= 
$str  %
)% &
]& '
public 
string 
Get 
( 
int 
id  
)  !
{ 	
var   
xtatus   
=   
true   
;   
if!! 
(!! 
xtatus!! 
==!! 
true!! 
)!! 
{"" 
xtatus## 
=## 
true## 
;## 
}$$ 
return&& 
$str&& 
;&& 
}'' 	
[** 	
HttpPost**	 
]** 
public++ 
void++ 
Post++ 
(++ 
[++ 
FromBody++ "
]++" #
string++# )
value++* /
)++/ 0
{,, 	
}-- 	
[00 	
HttpPut00	 
(00 
$str00 
)00 
]00 
public11 
void11 
Put11 
(11 
int11 
id11 
,11 
[11  !
FromBody11! )
]11) *
string11* 0
value111 6
)116 7
{22 	
}33 	
[66 	

HttpDelete66	 
(66 
$str66 
)66 
]66 
public77 
void77 
Delete77 
(77 
int77 
id77 !
)77! "
{88 	
}99 	
}:: 
};; ó	
OC:\Template\templateNetCore\src\Template.Service\Controllers\TesteController.cs
	namespace		 	
Template		
 
.		 
Cadastro		 
.		 
Api		 
.		  
Controllers		  +
{

 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
TesteController  
:! "

Controller# -
{ 
[ 	
HttpPost	 
] 
public 
void 
Post 
( 
[ 
FromBody "
]" #
TesteViewModel$ 2
testeViewModel3 A
,A B!
TesteDoTesteViewModelC X!
testeDoTesteViewModelY n
)n o
{ 	
} 	
[ 	
HttpGet	 
] 
public 
string 
Get 
( 
) 
{ 	
return 
$str (
;( )
} 	
} 
}   °
RC:\Template\templateNetCore\src\Template.Service\Mapper\AutoMapperConfiguration.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Mapper  &
{ 
public		 

class		 #
AutoMapperConfiguration		 (
{

 
public 
static 
MapperConfiguration )
RegisterMappings* :
(: ;
); <
{ 	
return 
new 
MapperConfiguration *
(* +
ps+ -
=>. 0
{ 
ps 
. 

AddProfile 
( 
new !
ModelToViewModel" 2
(2 3
)3 4
)4 5
;5 6
ps 
. 

AddProfile 
( 
new !
ViewModelToModel" 2
(2 3
)3 4
)4 5
;5 6
} 
) 
; 
} 	
} 
} ø
KC:\Template\templateNetCore\src\Template.Service\Mapper\ModelToViewModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Mapper  &
{ 
public 

class 
ModelToViewModel !
:! "
Profile# *
{		 
public

 
ModelToViewModel

 
(

  
)

  !
{ 	
	CreateMap 
< 
TemplateEntidade &
,& '
TemplateViewModel( 9
>9 :
(: ;
); <
;< =
	CreateMap 
< 
Usuario 
, 
LoginViewModel -
>- .
(. /
)/ 0
;0 1
} 	
} 
} ø
KC:\Template\templateNetCore\src\Template.Service\Mapper\ViewModelToModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  
Mapper  &
{ 
public 

class 
ViewModelToModel !
:! "
Profile# *
{		 
public

 
ViewModelToModel

 
(

  
)

  !
{ 	
	CreateMap 
< 
TemplateViewModel '
,' (
TemplateEntidade) 9
>9 :
(: ;
); <
;< =
	CreateMap 
< 
LoginViewModel $
,$ %
Usuario& -
>- .
(. /
)/ 0
;0 1
} 	
} 
} Í
;C:\Template\templateNetCore\src\Template.Service\Program.cs
	namespace 	
Template
 
. 
Service 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
BuildWebHost 
( 
args 
) 
. 
Run "
(" #
)# $
;$ %
} 	
public 
static 
IWebHost 
BuildWebHost +
(+ ,
string, 2
[2 3
]3 4
args5 9
)9 :
=>; =
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
. 
Build 
( 
) 
; 
} 
} œ
;C:\Template\templateNetCore\src\Template.Service\Startup.cs
	namespace 	
Template
 
. 
Service 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddMvc 
( 
) 
; 
services 
. 
AddAutoMapper "
(" #
)# $
;$ %
services 
. 
AddApiSecurity #
(# $
Configuration$ 1
)1 2
;2 3
services 
. 

AddOptions 
(  
)  !
;! "
services## 
.## 
AddSwaggerConfig## %
(##% &
)##& '
;##' (
services%% 
.%% 
AddDIConfiguration%% '
(%%' (
)%%( )
;%%) *
}&& 	
public)) 
void)) 
	Configure)) 
()) 
IApplicationBuilder)) 1
app))2 5
,))5 6
IHostingEnvironment))7 J
env))K N
,))N O 
IHttpContextAccessor))P d
accessor))e m
)))m n
{** 	
if++ 
(++ 
env++ 
.++ 
IsDevelopment++ !
(++! "
)++" #
)++# $
{,, 
app-- 
.-- %
UseDeveloperExceptionPage-- -
(--- .
)--. /
;--/ 0
}.. 
app00 
.00 
UseCors00 
(00 
c00 
=>00 
{11 
c22 
.22 
AllowAnyHeader22  
(22  !
)22! "
;22" #
c33 
.33 
AllowAnyMethod33  
(33  !
)33! "
;33" #
c44 
.44 
AllowAnyOrigin44  
(44  !
)44! "
;44" #
}55 
)55 
;55 
app77 
.77 
UseStaticFiles77 
(77 
)77  
;77  !
app88 
.88 
UseAuthentication88 !
(88! "
)88" #
;88# $
app99 
.99 
UseMvc99 
(99 
)99 
;99 
app;; 
.;; 

UseSwagger;; 
(;; 
);; 
;;; 
app<< 
.<< 
UseSwaggerUI<< 
(<< 
s<< 
=><< !
{== 
s>> 
.>> 
SwaggerEndpoint>> !
(>>! "
$str>>" <
,>>< =
$str>>> Q
)>>Q R
;>>R S
}?? 
)?? 
;?? 
DomainEventAA 
.AA 
ContainerAccessorAA )
=AA* +
(AA, -
)AA- .
=>AA/ 1
accessorAA2 :
.AA: ;
HttpContextAA; F
.AAF G
RequestServicesAAG V
;AAV W
}BB 	
}CC 
}DD ∑
MC:\Template\templateNetCore\src\Template.Service\ViewModels\LoginViewModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  

ViewModels  *
{ 
public 

sealed 
class 
LoginViewModel &
{ 
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
[		 	
Required			 
(		 
ErrorMessage		 
=		  
$str		! ;
)		; <
]		< =
[

 	
	MaxLength

	 
(

 
$num

 
,

 
ErrorMessage

 $
=

% &
$str

' Q
)

Q R
]

R S
public 
string 
Login 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& O
)O P
]P Q
public 
string 
Senha 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ä
XC:\Template\templateNetCore\src\Template.Service\ViewModels\TemplatePaginadoViewModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  

ViewModels  *
{ 
public		 

sealed		 
class		 %
TemplatePaginadoViewModel		 1
{

 
public 
IEnumerable 
< 
TemplateViewModel ,
>, -
	Templates. 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
	Paginacao 
	Paginacao "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ·
PC:\Template\templateNetCore\src\Template.Service\ViewModels\TemplateViewModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  

ViewModels  *
{ 
public		 

class		 
TemplateViewModel		 "
{

 
public 
int 
? 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
? 
DataInclusao %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
DataAlteracao &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
? 
	IdUsuario 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ü
TC:\Template\templateNetCore\src\Template.Service\ViewModels\TesteDoTesteViewModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  

ViewModels  *
{ 
public 

class !
TesteDoTesteViewModel &
{		 
public

 
int

 
Numero

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
bool 
TudoBem 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ”
UC:\Template\templateNetCore\src\Template.Service\ViewModels\TesteEvenlopeViewModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  

ViewModels  *
{ 
public 

class "
TesteEvenlopeViewModel '
{		 
public

 
TesteViewModel

 
testeViewModel

 ,
{

- .
get

/ 2
;

2 3
set

4 7
;

7 8
}

9 :
public !
TesteDoTesteViewModel $!
testeDoTesteViewModel% :
{; <
get< ?
;? @
set@ C
;C D
}D E
} 
} ì
MC:\Template\templateNetCore\src\Template.Service\ViewModels\TesteViewModel.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Api 
.  

ViewModels  *
{ 
public 

class 
TesteViewModel 
{		 
public

 
string

 
Nome

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} 