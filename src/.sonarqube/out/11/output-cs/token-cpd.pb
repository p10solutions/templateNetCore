ò
BC:\Template\templateNetCore\src\Template.Infra.IoC\BootsTrapper.cs
	namespace 	
Template
 
. 
Cadastro 
. 
Infra !
.! "
CrossCutting" .
.. /
IoC/ 2
{ 
public 

sealed 
class 
BootsTrapper $
{ 
public 
static 
void 
	Registrar $
($ %
IServiceCollection% 7
services8 @
)@ A
{ 	
services 
. 
AddSingleton !
<! " 
IHttpContextAccessor" 6
,6 7
HttpContextAccessor8 K
>K L
(L M
)M N
;N O
services 
. 
	AddScoped 
< 
IUnitOfWorkCadastro 2
,2 3
UnitOfWorkCadastro4 F
>F G
(G H
)H I
;I J
services   
.   
	AddScoped   
<   #
IUnitOfWorkAutenticacao   6
,  6 7"
UnitOfWorkAutenticacao  8 N
>  N O
(  O P
)  P Q
;  Q R
services!! 
.!! 
	AddScoped!! 
<!! 
TemplateContext!! .
>!!. /
(!!/ 0
)!!0 1
;!!1 2
services"" 
."" 
	AddScoped"" 
<"" 
AutenticacaoContext"" 2
>""2 3
(""3 4
)""4 5
;""5 6
services## 
.## 
	AddScoped## 
<## 
ITemplateRepository## 2
,##2 3
TemplateRepository##4 F
>##F G
(##G H
)##H I
;##I J
services$$ 
.$$ 
	AddScoped$$ 
<$$ 
IHandler$$ '
<$$' (
DomainNotification$$( :
>$$: ;
,$$; <%
DomainNotificationHandler$$= V
>$$V W
($$W X
)$$X Y
;$$Y Z
services%% 
.%% 
	AddScoped%% 
<%% 
IUsuario%% '
,%%' (

AspNetUser%%) 3
>%%3 4
(%%4 5
)%%5 6
;%%6 7
services&& 
.&& 
	AddScoped&& 
<&& 
IUsuarioService&& .
,&&. /
UsuarioService&&0 >
>&&> ?
(&&? @
)&&@ A
;&&A B
services'' 
.'' 
	AddScoped'' 
<'' 
IUsuarioRepository'' 1
,''1 2
UsuarioRepository''3 D
>''D E
(''E F
)''F G
;''G H
services(( 
.(( 
	AddScoped(( 
<(( 
ITemplateService(( /
,((/ 0
TemplateService((1 @
>((@ A
(((A B
)((B C
;((C D
services)) 
.)) 
	AddScoped)) 
<)) 
IUsuarioService)) .
,)). /
UsuarioService))0 >
>))> ?
())? @
)))@ A
;))A B
services** 
.** 
	AddScoped** 
<** 
IUsuarioRepository** 1
,**1 2
UsuarioRepository**3 D
>**D E
(**E F
)**F G
;**G H
}++ 	
},, 
}-- 