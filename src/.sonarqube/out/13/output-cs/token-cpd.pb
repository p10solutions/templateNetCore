
NC:\Template\templateNetCore\src\Template.MVC\Configuracoes\AppConfiguracoes.cs
	namespace 	
Template
 
. 
MVC 
. 
Configuracoes $
{ 
public 

class 
AppConfiguracoes !
{		 
public

 
string

 
ApiTemplate

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
PathCadastro "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ×
^C:\Template\templateNetCore\src\Template.MVC\Configuracoes\DependencyInjectionConfiguration.cs
	namespace 	
Template
 
. 
MVC 
. 
Configuracoes $
{		 
public

 

static

 
class

 ,
 DependencyInjectionConfiguration

 8
{ 
public 
static 
void 
AddDIConfiguration -
(- .
this. 2
IServiceCollection3 E
servicesF N
)N O
{ 	
BootsTrapper 
. 
	Registrar "
(" #
services# +
)+ ,
;, -
} 	
} 
} Ö$
OC:\Template\templateNetCore\src\Template.MVC\Controllers\Base\BaseController.cs
	namespace 	
Template
 
. 
MVC 
. 
Controllers "
." #
Base# '
{ 
public		 

class		 
BaseController		 
:		  

Controller		! +
{

 
public 
string 
ObterErroModel $
($ % 
ModelStateDictionary% 9

modelState: D
,D E
objectF L
	viewModelM V
)V W
{ 	
foreach 
( 
var 
campo 
in !

modelState" ,
), -
if 
( 

modelState 
[ 
campo $
.$ %
Key% (
]( )
.) *
Errors* 0
.0 1
Count1 6
>7 8
$num9 :
): ;
return 
$" 
{ 

modelState (
[( )
campo) .
.. /
Key/ 2
]2 3
.3 4
Errors4 :
[: ;
$num; <
]< =
.= >
ErrorMessage> J
}J K
 : K N
{N O
ObterDisplayNameO _
(_ `
campo` e
.e f
Keyf i
,i j
	viewModelk t
)t u
}u v
"v w
;w x
return 
$str 
; 
} 	
public 
string 
ObterDisplayName &
(& '
string' -
campo. 3
,3 4
object5 ;
objeto< B
)B C
{ 	
if 
( 
campo 
== 
null 
) 
return 
null 
; 
string 
campoSubObjeto !
=" #
null$ (
;( )
if 
( 
campo 
. 
Contains 
( 
$str "
)" #
)# $
{ 
var 

splitCampo 
=  
campo! &
.& '
Split' ,
(, -
$char- 0
)0 1
;1 2
campo 
= 

splitCampo "
[" #
$num# $
]$ %
;% &
campoSubObjeto 
=  

splitCampo! +
[+ ,
$num, -
]- .
;. /
} 
var!! 
property!! 
=!! 
objeto!! !
.!!! "
GetType!!" )
(!!) *
)!!* +
.!!+ ,
GetProperty!!, 7
(!!7 8
campo!!8 =
)!!= >
;!!> ?
DisplayAttribute## 
DisplayName## (
=##) *
null##+ /
;##/ 0
if%% 
(%% 
property%% 
==%% 
null%%  
)%%  !
return&& 
campo&& 
;&& 
if(( 
((( 
!(( 
property(( 
.(( 
DeclaringType(( '
.((' (
IsClass((( /
||((0 2
property((3 ;
.((; <
PropertyType((< H
==((I K
typeof((L R
(((R S
string((S Y
)((Y Z
||(([ ]
property((^ f
.((f g
PropertyType((g s
.((s t%
GetGenericTypeDefinition	((t Œ
(
((Œ 
)
(( Ž
==
(( ‘
typeof
((’ ˜
(
((˜ ™
Nullable
((™ ¡
<
((¡ ¢
>
((¢ £
)
((£ ¤
)
((¤ ¥
DisplayName)) 
=)) 
property)) &
.))& '
GetCustomAttribute))' 9
())9 :
typeof)): @
())@ A
DisplayAttribute))A Q
)))Q R
)))R S
as))T V
DisplayAttribute))W g
;))g h
else** 
return++ 
ObterDisplayName++ '
(++' (
campoSubObjeto++( 6
,++6 7
objeto++8 >
.++> ?
GetType++? F
(++F G
)++G H
.++H I
GetProperty++I T
(++T U
campo++U Z
)++Z [
.++[ \
GetValue++\ d
(++d e
objeto++e k
)++k l
)++l m
;++m n
return-- 
DisplayName-- 
!=-- !
null--" &
?--' (
DisplayName--) 4
.--4 5
Name--5 9
:--: ;
campo--< A
;--A B
}.. 	
}// 
}00 °H
NC:\Template\templateNetCore\src\Template.MVC\Controllers\CadastroController.cs
	namespace 	
Template
 
. 
MVC 
. 
Controllers "
{ 
public 

class 
CadastroController #
:$ %
Base& *
.* +
BaseController+ 9
{ 
GatewayRestAPI 
< 
TemplateViewModel (
>( )

gatewayAPI* 4
;4 5
AppConfiguracoes 
_appConfiguracoes *
;* +
IMapper 
_mapper 
; 
public 
CadastroController !
(! "
AppConfiguracoes" 2
appConfiguracoes3 C
,C D
IMapperE L
mapperM S
)S T
{ 	
_appConfiguracoes 
= 
appConfiguracoes  0
;0 1

gatewayAPI 
= 
new 
GatewayRestAPI +
<+ ,
TemplateViewModel, =
>= >
(> ?
appConfiguracoes? O
.O P
ApiTemplateP [
,[ \
appConfiguracoes] m
.m n
PathCadastron z
)z {
;{ |
_mapper 
= 
mapper 
; 
} 	
public 
IActionResult 
Teste "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{   	
return!! 
View!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (%
CarregarDataTableTemplate$$) B
($$B C
	Paginacao$$C L
	paginacao$$M V
)$$V W
{%% 	
	paginacao&& 
.&& %
MapeiaRequisicaoDataTable&& /
(&&/ 0
Request&&0 7
)&&7 8
;&&8 9
try(( 
{)) 
var** 
retornoTemplates** $
=**% &
await**' ,

GatewayAPI**- 7
.**7 8
Post**8 <
<**< =%
TemplatePaginadoViewModel**= V
>**V W
(**W X

gatewayAPI**X b
.**b c
Url**c f
,**f g
$"**h j
{**j k

gatewayAPI**k u
.**u v
Path**v z
}**z {

/Templates	**{ …
"
**… †
,
**† ‡
	paginacao
**ˆ ‘
)
**‘ ’
;
**’ “
return,, 
Ok,, 
(,, 
DataTablesResponse,, ,
.,,, -
Reposta,,- 4
(,,4 5
retornoTemplates,,5 E
.,,E F
	Paginacao,,F O
,,,O P
retornoTemplates,,Q a
.,,a b
	Templates,,b k
),,k l
),,l m
;,,m n
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
).. 
{// 
return00 

StatusCode00 !
(00! "
$num00" %
,00% &
RetornoViewModel00' 7
.007 8#
RetornoViewModelFactory008 O
.00O P
Erro00P T
(00T U
$str	00U ‚
)
00‚ ƒ
)
00ƒ „
;
00„ …
}11 
}22 	
[44 	
HttpGet44	 
]44 
public55 
IActionResult55 
Inclusao55 %
(55% &
)55& '
{66 	
return77 
View77 
(77 
)77 
;77 
}88 	
[:: 	
HttpPost::	 
]:: 
public;; 
IActionResult;; 
Inclusao;; %
(;;% &
TemplateViewModel;;& 7
	viewModel;;8 A
);;A B
{<< 	
if== 
(== 
!== 

ModelState== 
.== 
IsValid== #
)==# $
return>> 
Ok>> 
(>> 
RetornoViewModel>> *
.>>* +#
RetornoViewModelFactory>>+ B
.>>B C
Erro>>C G
(>>G H
ObterErroModel>>H V
(>>V W

ModelState>>W a
,>>a b
	viewModel>>c l
)>>l m
)>>m n
)>>n o
;>>o p
try@@ 
{AA 
varBB 
retornoBB 
=BB 

gatewayAPIBB (
.BB( )
PostBB) -
(BB- .
	viewModelBB. 7
)BB7 8
;BB8 9
returnDD 
OkDD 
(DD 
newDD 
RetornoViewModelDD .
{DD/ 0
mensagemDD1 9
=DD: ;
$strDD< [
,DD[ \
sucessoDD] d
=DDe f
trueDDg k
}DDl m
)DDm n
;DDn o
}EE 
catchFF 
(FF 
	ExceptionFF 
exFF 
)FF  
{GG 
returnHH 

StatusCodeHH !
(HH! "
$numHH" %
,HH% &
RetornoViewModelHH' 7
.HH7 8#
RetornoViewModelFactoryHH8 O
.HHO P
ErroHHP T
(HHT U
$str	HHU ƒ
)
HHƒ „
)
HH„ …
;
HH… †
}II 
}JJ 	
[LL 	
HttpGetLL	 
]LL 
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
EdicaoMM) /
(MM/ 0
intMM0 3
idMM4 6
)MM6 7
{NN 	
varOO 
templateViewModelOO !
=OO" #
awaitOO$ )

gatewayAPIOO* 4
.OO4 5
GetOO5 8
(OO8 9
idOO9 ;
.OO; <
ToStringOO< D
(OOD E
)OOE F
)OOF G
;OOG H
returnQQ 
ViewQQ 
(QQ 
templateViewModelQQ )
)QQ) *
;QQ* +
}RR 	
[TT 	
HttpPostTT	 
]TT 
publicUU 
IActionResultUU 
EdicaoUU #
(UU# $
TemplateViewModelUU$ 5
	viewModelUU6 ?
)UU? @
{VV 	
ifWW 
(WW 
!WW 

ModelStateWW 
.WW 
IsValidWW #
)WW# $
returnXX 
OkXX 
(XX 
RetornoViewModelXX *
.XX* +#
RetornoViewModelFactoryXX+ B
.XXB C
ErroXXC G
(XXG H
ObterErroModelXXH V
(XXV W

ModelStateXXW a
,XXa b
	viewModelXXc l
)XXl m
)XXm n
)XXn o
;XXo p
tryZZ 
{[[ 
var\\ 
retorno\\ 
=\\ 

gatewayAPI\\ (
.\\( )
Put\\) ,
(\\, -
	viewModel\\- 6
,\\6 7
	viewModel\\8 A
.\\A B
Id\\B D
.\\D E
ToString\\E M
(\\M N
)\\N O
)\\O P
;\\P Q
return^^ 
Ok^^ 
(^^ 
RetornoViewModel^^ *
.^^* +#
RetornoViewModelFactory^^+ B
.^^B C
Sucesso^^C J
(^^J K
$str^^K j
)^^j k
)^^k l
;^^l m
}__ 
catch`` 
(`` 
	Exception`` 
ex`` 
)``  
{aa 
returnbb 

StatusCodebb !
(bb! "
$numbb" %
,bb% &
RetornoViewModelbb' 7
.bb7 8#
RetornoViewModelFactorybb8 O
.bbO P
ErrobbP T
(bbT U
$str	bbU ƒ
)
bbƒ „
)
bb„ …
;
bb… †
}cc 
}dd 	
[ff 	
HttpPostff	 
]ff 
publicgg 
IActionResultgg 
Remocaogg $
(gg$ %
stringgg% +
idgg, .
)gg. /
{hh 	
ifii 
(ii 
stringii 
.ii 
IsNullOrEmptyii $
(ii$ %
idii% '
)ii' (
)ii( )
returnjj 
Okjj 
(jj 
RetornoViewModeljj *
.jj* +#
RetornoViewModelFactoryjj+ B
.jjB C
ErrojjC G
(jjG H
$strjjH i
)jji j
)jjj k
;jjk l
tryll 
{mm 
varnn 
retornonn 
=nn 

gatewayAPInn (
.nn( )
Deletenn) /
(nn/ 0
idnn0 2
)nn2 3
;nn3 4
returnpp 
Okpp 
(pp 
RetornoViewModelpp *
.pp* +#
RetornoViewModelFactorypp+ B
.ppB C
SucessoppC J
(ppJ K
$strppK j
)ppj k
)ppk l
;ppl m
}qq 
catchrr 
(rr 
	Exceptionrr 
exrr 
)rr  
{ss 
returntt 

StatusCodett !
(tt! "
$numtt" %
,tt% &
RetornoViewModeltt' 7
.tt7 8#
RetornoViewModelFactorytt8 O
.ttO P
ErrottP T
(ttT U
$str	ttU ƒ
)
ttƒ „
)
tt„ …
;
tt… †
}uu 
}vv 	
}ww 
}xx ’
JC:\Template\templateNetCore\src\Template.MVC\Controllers\HomeController.cs
	namespace		 	
Template		
 
.		 
MVC		 
.		 
Controllers		 "
{

 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
About "
(" #
)# $
{ 	
ViewData 
[ 
$str 
] 
=  !
$str" F
;F G
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Contact $
($ %
)% &
{ 	
ViewData 
[ 
$str 
] 
=  !
$str" 6
;6 7
return 
View 
( 
) 
; 
} 	
public   
IActionResult   
Error   "
(  " #
)  # $
{!! 	
return"" 
View"" 
("" 
new"" 
ErrorViewModel"" *
{""+ ,
	RequestId""- 6
=""7 8
Activity""9 A
.""A B
Current""B I
?""I J
.""J K
Id""K M
??""N P
HttpContext""Q \
.""\ ]
TraceIdentifier""] l
}""m n
)""n o
;""o p
}## 	
public%% 
IActionResult%% 
Login%% "
(%%" #
)%%# $
{&& 	
return'' 
View'' 
('' 
)'' 
;'' 
}(( 	
})) 
}** â
7C:\Template\templateNetCore\src\Template.MVC\Program.cs
	namespace 	
Template
 
. 
MVC 
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
} ­
7C:\Template\templateNetCore\src\Template.MVC\Startup.cs
	namespace

 	
Template


 
.

 
MVC

 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddMvc 
( 
) 
; 
services 
. 
AddDIConfiguration '
(' (
)( )
;) *
services 
. 
AddAutoMapper "
(" #
)# $
;$ %
services 
. 
TryAddSingleton $
<$ % 
IHttpContextAccessor% 9
,9 :
HttpContextAccessor; N
>N O
(O P
)P Q
;Q R
services   
.   
AddSingleton   !
(  ! "
Configuration  " /
.  / 0

GetSection  0 :
(  : ;
$str  ; M
)  M N
.  N O
Get  O R
<  R S
AppConfiguracoes  S c
>  c d
(  d e
)  e f
)  f g
;  g h
}!! 	
public$$ 
void$$ 
	Configure$$ 
($$ 
IApplicationBuilder$$ 1
app$$2 5
,$$5 6
IHostingEnvironment$$7 J
env$$K N
)$$N O
{%% 	
if&& 
(&& 
env&& 
.&& 
IsDevelopment&& !
(&&! "
)&&" #
)&&# $
{'' 
app(( 
.(( 
UseBrowserLink(( "
(((" #
)((# $
;(($ %
app)) 
.)) %
UseDeveloperExceptionPage)) -
())- .
))). /
;))/ 0
}** 
else++ 
{,, 
app-- 
.-- 
UseExceptionHandler-- '
(--' (
$str--( 5
)--5 6
;--6 7
}.. 
app00 
.00 
UseStaticFiles00 
(00 
)00  
;00  !
app22 
.22 
UseMvc22 
(22 
routes22 
=>22  
{33 
routes44 
.44 
MapRoute44 
(44  
name55 
:55 
$str55 #
,55# $
template66 
:66 
$str66 F
)66F G
;66G H
}77 
)77 
;77 
}88 	
}99 
}:: ³
IC:\Template\templateNetCore\src\Template.MVC\ViewModels\ErrorViewModel.cs
	namespace 	
Template
 
. 
MVC 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} Ï
KC:\Template\templateNetCore\src\Template.MVC\ViewModels\RetornoViewModel.cs
	namespace 	
Template
 
. 
MVC 
. 

ViewModels !
{ 
public 

class 
RetornoViewModel !
{ 
public 
bool 
sucesso 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
mensagem 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
static 
class #
RetornoViewModelFactory 3
{		 	
public

 
static

 
RetornoViewModel

 *
Sucesso

+ 2
(

2 3
string

3 9
mensagem

: B
)

B C
{ 
return 
new 
RetornoViewModel +
{, -
mensagem. 6
=7 8
mensagem9 A
,A B
sucessoC J
=K L
trueM Q
}R S
;S T
} 
public 
static 
RetornoViewModel *
Erro+ /
(/ 0
string0 6
mensagem7 ?
)? @
{ 
return 
new 
RetornoViewModel +
{, -
mensagem. 6
=7 8
mensagem9 A
,A B
sucessoC J
=K L
falseM R
}S T
;T U
} 
} 	
} 
} á
TC:\Template\templateNetCore\src\Template.MVC\ViewModels\TemplatePaginadoViewModel.cs
	namespace 	
Template
 
. 
MVC 
. 

ViewModels !
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
} ‚
LC:\Template\templateNetCore\src\Template.MVC\ViewModels\TemplateViewModel.cs
	namespace 	
Template
 
. 
MVC 
. 

ViewModels !
{ 
public 

class 
TemplateViewModel "
{ 
public 
int 
? 
Id 
{ 
get 
; 
set !
;! "
}# $
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! ;
)

; <
]

< =
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage $
=% &
$str' Q
)Q R
]R S
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage $
=% &
$str' Q
)Q R
]R S
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
? 
DataInclusao %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? 
	IdUsuario 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
} 
} 