-- [[ RIVALS MODULE ]] --

-- This file was protected using Luraph Obfuscator v14.4.2 [https://lura.ph/]

return({m=unpack,hZ=function(H,H)(H[0X2])[0Xe]=(H[0x2][0xE]+1.0);end,Q=function(H)local r=H[1];local e=H[0];return function(H,o,...)if debug.info(1,"\110")=='Sta\114tSh\111ot\105ng'or debug.info(2,"\110")=='Star\116S\104ooti\110g'or debug.info(3,'n')=="StartShooting"or debug.info(4,'n')=='Sta\114t\83ho\111ti\110g'or debug.info(5,"n")=='S\116\97\114\116\83hooting'or debug.info(6,"n")=="St\97\114tS\104\111\111ti\110\103"or debug.info(7,'n')=="StartShoo\116i\110g"or debug.info(8,'n')=="\83\116\97\114\116Sh\111\111\116ing"then local N,V,x=r(o);local r={};if N and V then r.Position=V.Position;r.Instance=V;r.Material=V.Material or Enum.Material.Plastic;r.Normal=V.CFrame and V.CFrame.LookVector or Vector3.new(0,1,0);r.Distance=(V.Position-x).Magnitude;return r;end;end;return e[1][e[3]](H,o,...);end;end,O=string.sub,uF=function(H,H,r)H=r[0x58fc];return H;end,OZ=function(H,H)H[0X21]=(nil);(H)[34]=nil;H[0X023]=(nil);(H)[36]=(nil);end,fZ=function(H,r)r[0x25]=(function()local e,o={r[0X8],r};o=H:WZ(e);return H.m(o);end);end,kF=function(H,r,e,o)for N=57,116,59 do if N<116.0 then if o[1][39]~=o[1][0x7]then else while o[1][5]do return{},r;end;end;if e~=74.0 then r=H:NF(r,o);else r=(o[0X1][0X1D]()==1.0);end;else if N>57.0 then H:OF();end;end;end;return nil,r;end,SZ=function(H,H,r)r=(#H[0x1][0x20]);return r;end,q=function()return function(H)local r=H.Humanoid;if r and r.Health and r.MaxHealth then return{r:GetPropertyChangedSignal("He\97lth"),r:GetPropertyChangedSignal("Max\72ealth")};end;local r=H.Character;return{r:GetAttributeChangedSignal("\72\101\97l\116h"),r:GetAttributeChangedSignal("MaxHealth"),{Connect=function()return{Disconnect=function()end};end}};end;end,u=bit32.lshift,MZ=function(H,H,r,e,o,N,V)if o>43.0 then o=(43);e=V[1][0X11](H);elseif o<43.0 then r=V[0x1][17](H);return N,5972,o,r,e;else if not(o>14.0 and o<124.0)then else N=V[1][17](H);o=(0xE);end;end;return N,nil,o,r,e;end,T=bit32,yF=function(H,H,r)H=r[0X778E];return H;end,tF=function(H,r,e,o,N,V,x,O,R)local A;O[0x0022][7.0]=H.y;e=(52);while true do if e>3.0 then r=O[0X29](r,O[0X5])(x,H.j,o,R,O[36],O[0X1D],O[0X1E],H.U,V,O[0X29]);if not N[0x1dF0]then e=H:cF(N,e);else e=(N[0X1df0]);end;else if e<52.0 then A=H:_F(r,O);return e,{H.m(A)},r;end;end;end;return e,nil,r;end,J=table.create,wF=function(H,H,r)(r[0X1])[0xe]=(r[1][0xe]+H);end,oF=string.unpack,h=function(H)local r=H[5];local e=H[8];local o=H[15];local N=H[11];local V=H[9];local x=H[7];local O=H[12];local R=H[0];local A=H[3];local f=H[1];local D=H[4];local J=H[16];local q=H[2];local w=H[6];local a=H[14];local Y=H[10];local n=H[13];return function()local H=R[1][R[3]].CoreGuiController.LocalFighter.EquippedItem;if H then if not H.dsfafd then H.IsFullyAiming=function(...)return true;end;H.dsfafd=true;end;end;if N[1][N[3]]then N[1][N[3]].Position=e:GetMouseLocation();end;if D[1][D[3]].Enabled then local H=o[1][o[3]].Value=="Cam\101\114\97"and V.CFrame or A.isAlive and A.character.RootPart.CFrame or CFrame.identity;local e=A['\69\110t\105t\121'..O[1][O[3]].Value]({Range=J[1][J[3]].Value,Wallcheck=true,Part='Hea\100',Origin=(H*Y).Position,Players=w[1][w[3]].Enabled,NPCs=q[1][q[3]].Enabled});if e and R[1][R[3]].CoreGuiController.LocalFighter.EquippedItem then if n[1][n[3]].Enabled then a.Targets[e]=tick()+1;end;r[1][r[3]]=e;local H,e=R[1][R[3]].CoreGuiController.LocalFighter.EquippedItem.ViewModel,R[1][R[3]].CoreGuiController.LocalFighter.EquippedItem.ViewModel.PlayAnimation;if x[1][x[3]].Enabled then H.PlayAnimation=function(o,N,...)if N=="\83ho\111\1161"or N=="Rel\111a\100"then return nil;end;return e(o,N,...);end;end;if mouse1click and(isrbxactive or iswindowactive)()then if not f.ClickGuiStatus then mouse1click();end;end;r[1][r[3]]=nil;r[1][r[3]]=nil;if e then H.PlayAnimation=e;end;end;end;end;end,PZ=function(H,r,e,o,N)for V=0.0,255.0,0X1 do(r[0X7])[V]=N(V);end;if not(not o[0X791b])then e=(o[0X791b]);else e=H:gZ(o,e);end;return e;end,gF=function(H,H,r,e)(e[1][0X20])[r+1.0]=(H);end,oZ=function(H,r,e,o,N)local V,x;for O=0X79,245,62 do if O>183.0 then(V)[x+1.0]=e;elseif O<183.0 then V=o[0X1][0X21][N];else if not(O<245.0 and O>121.0)then else x=H:DZ(x,V);end;end;end;for e=92,0Xb4,88 do if e>92.0 then H:CZ(x,V);else if not(e<180.0)then else H:FZ(r,V,x);end;end;end;end,n=string,BZ=function(H,H,r,e,o,N,V,x)V=(H[1][33][o]);N=(#V);if x==248 then while H[2]do e,e=H[0x1][0x29],245;end;end;(V)[N+1.0]=(r);return e,N,V;end,HZ=function(H,H,r,e,o,N)if r>200.0 then H=(e%0X8);elseif r<200.0 then e=o[1][38]();else if not(r>90.0 and r<310.0)then else N=o[0X1][0x26]();end;end;return e,N,H;end,WZ=function(H,r)local e,o;for N=0X6D,0X7C,15 do if N>109.0 then o,e=H:AZ(e,r,o);else if not(N<124.0)then else e=H:JZ(e);end;end;end;return{e};end,JZ=function(H,H)H=(0.0);return H;end,NF=function(H,H,r)H=r[2]();return H;end,LZ=function(H,r,e,o,N,V,x,O,R,A)local f;if R==0x5 then H:aZ(N,x,r,e,V,o);else if R==0 then(A)[r]=o;elseif R==0X2 then for e=0X14,0x5B,71 do f=H:XZ(A,e,o,x,O,r);if f==nil then else return{H.m(f)};end;end;else if R==1 then(A)[r]=r-o;else if R~=0X7 then else local e;for N=0x12,0X40,46 do e=H:sZ(V,N,e,x,r);end;(x[0x1][0x20])[e+3.0]=(o);end;end;end;end;return nil;end,CF=bit32.rshift,F=function(H,r,e,o)if e>=70.0 then(r)[18]=H.oF;(r)[19]=H.W;if not(not o[0x7984])then e=(o[31108]);else e=H:C(e,o);end;else(r)[0X11]=H.J;if not o[29305]then e=(3995050583+((H.FF(o[14672]-o[15471]))-o[0X3f02]-H.U[0X8]));(o)[29305]=e;else e=o[0x7279];end;end;return e;end,sF=string,rF=bit32.bor,ZZ=function(H,r,e,o,N,V)local x,O;for R=0Xa,68,0X3A do O,x=H:bZ(N,V,r,o,R,O,x);end;(x)[O+2.0]=(e);x[O+3.0]=6.0;end,V=function(H,r,e,o)(e)[21]={};if not r[22717]then o=H:Z(o,r);else o=(r[22717]);end;return o;end,rZ=function(H,H,r,e)e[0X1][0X20][H+2.0]=(r);end,p=string.pack,B=function(H,r,e,o)local N;r=0X36;repeat N,r=H:l(r,o,e);if N~=0X6ED then else break;end;until false;e[13]=H.DF;e[14]=(nil);return r;end,lZ=function(H,H,r,e)e[r]=(H);end,qZ=function(H,r,e,o,N,V)local x;repeat if not(e<=40.0)then x,e=H:K(V,N,e);if x==42272 then break;end;else if e~=40.0 then e=H:I(e,V,N);else e=H:X(V,N,e);end;end;until false;N[0x001A]=nil;r=nil;e=0;repeat if not(e<=0.0)then if e<=50.0 then r=(function(x)local O=({N});H:EZ(O,x);end);break;else(N)[0X1a]=(function(x)local O={N[0XD],N,N[8]};x=O[0X1](x,'z','\33!!!\33');return O[0X1](x,".\46..\46",O[2][9]({},{__index=function(x,R)local A,f,D,J,q=O[3](R,1.0,5.0);local w=(q-33.0)+(J-33.0)*85.0+(D-33.0)*7225.0+(f-33.0)*614125.0+(A-33.0)*5.2200625E7;A=O[0X2][1]('>I4',w);(x)[R]=A;return A;end}));end)(N[0X4]([=[LPH!fo6+7qZHm!z!$MA?+TbD\+TbM_+Tc4s+TZ0u!cN0(!H@o<z!!!#r#QOi)z+TZL)"CcUoEXVpJzn38&sAK_(N+TZj3!cE*'#'Fg&@:O*M`qAg#s8W-!+TYOc!?`NiDKTf*ATApp9D\qoz!!)oTz!!!!B"^bVRDe(!o@UX.b+Tu8"FCcTrH6EH6@:F%a+U;LqF`);;HM[mHz!!!E-z!!kh5!G<PW@<<XnAGZN1z!!"/C@3G\)5PkH]z!!"/C8.5Iuz!'pE\z!!!!B!I,ag=WmfD+U2XuF(KB6+TZ=$$=@.XATqj+A7^!/"CGMPF<L]qF<Lfp?Z9q-+TY1Y!Ce4573N%"-m`CS.9ehB$=+hI'ac'++<VdL+<W6f>?_FA+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+>,o*-nd&$/hSb//hSb!+<VdL+>,9!/1`8(-mL#b5X6q/+<VdL+<VdL+<VdL+<VdL+<VdL+=J]^+<W3g-mL#a-71uC5X6YB-n$`%0/"_%-mKr_,9nE]-nd&"/1`Cr+<VdL/2&Y)-8#WJ+<VdL+<VdL+<VdL+<VdL+<W<e+>+s*5X7S"5X7R\/0H&f-mh2E5UIg)-71')5X7S"5UI^(.P*2)/hSb//hSV"5X7R_/g)8f,;'<G+<VdL+<VdL+<VdL+<VdL.PDns-9sg]5X7S".Nfi^,qL/]+=\cd-9sg]5X6YB-n6c#+<VdL+<VdL+<VdL+>,2p-mL#d.R66G.Nfi`/.*LB+<VdL+<VdL+<VdL+<Vm[+>5uF5X7S".Ng2f-m1&f-8-u&0-_bi-9sg]-7C3+5X7S"5X7S"5X7RZ.P*2)/hSb-0.&qL5X7S"5X6_?/gUiI+<VdL+<VdL+<VdL+<VmO+<s-:5X7Ra00gg+/gDYp0.8A(/2&J(0/"e+/hAY(.R66a5X7S"5X7S"5UAZ\5X7S"5X7RZ/gEVH5X7S"-8$De$6UH6+<VdL+<VdL+<Vd[+<W!r5X7S"5X7R_,sW[t.OHJl-9sg]5U.p/5X7S"0-qns/1!PH5X7S"5UA'K5UIm1+<W3d/1rP-+<W-[5X7RZ+=[^@+<VdL+<VdL+<VdO+<W9`5X7S"5X7S"5X7Rc-n$B,5X7S",;()]+<W3^5X6PZ5UIs'/g`hK5X7R]/1r/45X7Rf-9sgB-pU$_-7CMu-mgJf0.[GQ+<VdL+<VdL-nc\c+=KK%-71#c5X7R]0.\4s5U.[B5X7Rc+<VdL+<VdL,="LI/1*V/+>5uF5X7Rc,pO^$5X7S"-m0WT+<W.!5X7S"-7gGh/g)bR+<VdL+<VdL0-DA^0.\>55X6Y@-nd4u5X7Rf+=09<5UJ`]5U\6-+<VdX-9sgE/h/M(+<Vsq5Umm!+=09<5X7S",p4<Q+<VdL-pU$E-n6i%/gVhs$6UH6+<VdL+<W<j00hcL/0H&`-9sg@/0H&X00h05/1Mu35X7RZ-9sgB,:+`d,sWe,+>5uF5X7S"-8$Dc5X7RZ-9sg]-7's'5X7S"5UJ$8-n7J8,75P9+<VdL+<VsV/g`h.+>,!+5X6P:00hcf5U@aB5X6YL/g)8Z/2&D"0.JLq+>,;o5X7S"5X7S"5X6kM-7CK",sX^?.OIDG5U[j*/hSb//1)Sk5VEHe+<VdL+<Vdl,q^Mk+>,!+5X6YG+<VdL0.&qL5X7S"5X7S"5X7S"5X6Y]5U.p1,sX^\5X7S"5X7R]/0H&`5X7S"5X7S"5X7S"0.]@R5X7RZ/g`%T+<VdL+<VdL-718i,p4fe.NfiV+>5uF5U\6-+=np+5X7S"-8-c#0/"t'-m1/i5X7S"5X7S"5X7S"5X7R_+<W3^5X7S"5X7S"-7g8f5X6YG00gp=$6UH6+<VdL+>+ri,=!Y"00hcf5U[a)5X7S"5X6tF+<VdL.O@>F5X7S"5UJ*75UIU),:jri-9sg]5X7RZ+>+lg,pk8r,="LZ5Umm!+=]WA-8-hq.LI:@+<VdL+<VdZ-8-tr5X7S"5X7Rc+<VdV-9sgB/hA>75UIm1+<VdL/1;f0,pklB5X7S"5X7R_/h/Cp+>5uF5X7S"5X7R]/0H&X+<VdQ5X7S"/hRJR+<VdL+<Vdl.Ng>i5X7S"5X7S"-m0WT+<VdL/g)8Z-pU$_5X7S"5U[`t+<VdL+>,,l,pklB5X7S"5X7S"5X6YE/0H&f0.n_>,p4<Q00hcK+>,;S+<VdL+<VdL+<Wp!+>,!+5X7S"5UJ*++<VdL+<VdL+<VdL/h\P:5X6eO-9sg]5X7S"-7g8j.Olu%+<VdL/hAJ#-7CJm5X6P:,sWq&+=ocC,p4``$6UH6+<VdL+<VdL+=8W^00hcf5X7Ra+<VdL+<VdL+<VdL+<VdL+<VdL/gEVH5X7S"5X6eO,sX^\5X6_K5X7S"5X6Y=/0u\s+<VdL+<W9`5U@O(,75P9+<VdL+<VdL+<VdL0-D`05X7S",9S*O+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL,sWe0/0bKE+<VdL+<VdL+<VdL+=JW\/g`hK5X6eA+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<s,u/hA4S+<VdL+<VdL+<VdL+<VdZ-8$Dl-9sg]/0H&X+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<W't-8$ho$6UH6+<VdL+<VdL+<VdL+<VdO/g)bm5X6eA00hcU+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<Vd[5UJ*7-jh(>+<VdL+<VdL+<VdL+<VdL+<W9i+<Vmo,q^;d5UJ$5,:jr[+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL00hcR/h[PS+<VdL+<VdL+<VdL+<VdL+<VdL+=\c^+<s,t/g)bh-pU$_5X6VK/0H&X+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+>5uF/1rCZ+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL0/"Fj,sWe.+=]WA5X7S"5X6_?-pT(3/g)8Z+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<Vmo5V+$+$6UH6+<VdL+<VdL+<VdL+<VdL+<VdL+<VdO.Ng>j5X6PH+=KK?5X6YK.R66a5X7S"5UA$*.PECs+<VdL+<VdL+<VdL+<VdL+=\ur,q:Mo5X6kC0+&gE+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<Wp!+>+s*5X6VH+=o/g/jMZe5X7S"5X7Rc/gWbJ5X7R\+>,!+5X6eA,=!S./g`h5/1Mbg5X6YK+=[^@+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<W<[+=\^'5X7R\/0H&X.OZW/5X7R]/g)B(5X7S".Nfs$5X6V<-pU$I+=o,f+<W=&5X7Ra+=IR>+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL5U.m(/gEVH5X7S"-7CDt+<VdL+<VdL+<VdL+<VdL+<VdL+<W9f.OZSi5X7S"5UJ*9-jh(>+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdR-nZVb+>,;n5X7S"5X7S"5X7S"5X7S"5X7S"5X7S"5X7S"5X7S"5X6_M+=JWF+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<VdL+<W3[0.JRs+<VdL+<W9h/1`>'/1`>'/hSb/+<VdL+<VdL+<W3g,74c#+<VdL+<Ve4>qIW8$6UH6+<VdL+<^bc$ig8-!!(qq5Tp;<?Y!ko+TY=Hz!;=;q+TZ:#!$MMQ?X[JU+UDF^@rH6p@<<Xn?QfG9+TY.X!E8jthr)$F!!!!B!HfOm?XInnF*)G:DJ(*n0d-R,+TXnQ!DFX>Anc-n+TcJ%+TcG$+U;IpDerunDBT$K+Tcn1+TY(V!G`)Dz!&-\I!!'h7s8UtB+U3"0EbTE(+Tc+p+TWf[!?hJaqd0='z!$MA1+TZa0!Fm8WB5M(!@q["dC`rgs+U2OsEc#6,+Tuam@r!4iEb025!Gr5Fz!'idm"CGMIE=;gIz!!"/CF8H7Dz!!"/C<ZqZS?Z^R4Abui8z!!"/CF<Ld"F*1q8!HAMJz!$FNM$tF3nFCf]=?Z^R4AK_(fqZ6`tz!"8i-zE'PQL@q]:k+TcY*qtL-kz!$MAF+TbSa+U;@]Bl7HmGTd8u?XmM\C`rgT+TZcqz!!)LR$ig8-!!!!C5R[Vm!!!#oO$F*Rz!"_C=$X[7XATV@&@:F%a$ig8-!!)qh5R[Vmz2*`;g?XIks@LN5:zn3J3%@rH6p@<<Xn=ptB2zE'YWJ=!7`a@<?!m+U)4[D09Y<!DO^>F*1q#z!!#5K$ig8-!!!!q5Tp2@F<Lco?Yj:G!"8i-z0LH6Kz!&-YHz!!"i@Q2CX_%KHJ/!0[-Y"pUe&U&bH&RK9,`((SIg"U51B!ho]J2@a]V!]Drr!S%6@*aLZ.%OOXL*[V'qOoh?Y/e6D5%Q5*Q!Y0e_/iJmo"pTY\U&c#@eHVfM"pQfV!=f[k#,D8("sK]A/e6D5%PAmS#,D8("tH>J('XsMD$D%;eHQ4)1Bn%TU&jrrQ5Q879K!q=TE-qT-7/p$+JJlh4q;P^!^8f-!B*[gE7G"b:5o8Y"q%(*"pTSYU&idG?63B9"qDtT"r8Ol"s,)q"u2hQ"pUb%U&cSF/g`1T"sOfe%OMZ/eHVfM"pU.iU&dG!-D1B'"stZ$#,)'l!<E01zh>%'U#-%m%!<rb&#,2-q!o="8&5NK7Op7W]m0(*(?9#=pPlk>PV#cha?8r,nZ3?s'?=o`1,M`UT"^X1.!bMW^?=jos"pW3OU&jZg#%fAlB$CK(V$2h_?8r,ndK6-D?=o/t,NT!g!F@a>!L3[l38Ff#"(!qkArZsZ?=kc6"pVXBU&eS4]`BAV"5O,e3;j*$"^X.m#+>Xg!FBB'"s]]B#%fGnAu,eY`X$/\PQ:sm8YQ6f"/Q*+31U54"^X1U#5&"'33<=[#@9B%^'Foc?=p;C,6hbO$6Nm9!G78k"pTkaU&hq0`<0F+#%k"AS,lr.Ka&b+#20-Q!FBC2"XE+3eHB2<#%iSu+(kHPArHasB)MiWFeo:K30aZL!F@_i#,qWt!R1kO#$s:6!f[=h3!O!?#9R8a4X1.8M#j=OII.8G37S,]!F@b!#.4YA3!Nu\"Z0Oth#nr,##_/r"pSC`?=pSJ,Q7dW##/E9SH^;C"p1M"B!qdG7UB\\#p]BPoa"k`V$-`&?8r,nJc_YIKa<A8?9#n,bl_9328of,3!KR0U&gMaN<roNB!).=BjPCW,OGQ7#[TK]!a]1J"pUb%U&hA$o`ne_o`EA@?8s80!a[hj#&'_3Aj6Kh!FBB/![He1o`e_^B''C('*\[1!ho]"[L-VU?=r:(,IIUG"C=&.[/jSnK`fR(?8r.$mKXhGAS-l%"pR>e!EKC/$3g]@)XRWd#@9@orX<D<!<ra+U&gefXU/;nm0M5J?8r.$mLN/!#2fNV!L=)tAp@Woh$>7m!OW5?3(:dl?8r.$#,;2'#+5Rf!FBAl#:#N;#%fPqAu,PRPlcpI?9%?VAd4:s?=nlp,6e@_!ho\r"'l(A$31&+!;uTm"pQiW!A4Q\7GS2,%\Eb+#!P-R/d?00"u\7A-=U*^%L*FJ"s+Ze"suGR"pRG3"su,1"pgq("pR&]!<r`4<!EO26m`ZR70WrCSH/p!.A?he"t!X\"u2hQr<#M!T)hCc"sUJp<ji04*_&=J3=\N""pQfV!<E0+zK)#Eg"pPD=*^UkO#(clM!Gr#n1G2i8MZF"d>+u&k"bmMQ*[33h-4C)2+<:Xj.\ZqZD'j'G-Ii.t/g_p<!A5u7:Bh"_U&bH&(nq$`"pQ:%"pQ\9"pPs>!>]N!CaLLZ!WW]W-7g3T/o1^r!ho]2D)Q2g/hV*[/hV<"0%C"'/g_o@"pP.'!A5^9%PB@\E%V>!+or$B"[t^g4Y\fSBb:=F!!(jN!<rc!"el#%#3lAd!?T)[#)`Kd#-%p&!Hq3B72?)V-6<AG!@A!TFqf*p#"8_#Jc_YI:'QFR-3aZt'R!4U78=&9-3a\N!MTU<"pQ:%"u]e2eHS3LG1?d<DKZ3g+JJm[:'O-N#(@mg#)3.*"pT5bG"r61"pSP2!<raO'R!4U7:laQ-3aZNU&fF4#";PsIO8q:L&iV*#'L](:'O.)#(@n2#)3.*"pSM1!Cd9B-8l'_!@A!TFqb,b@A3cD#(@m_#)3.*"pT5b"pU_$U&eR)L&iV*#'L\]#'M<t#'cjC/s65>MZF"d8tl>E-3cmC"u`"Q"pQNN!DXsG70WrkSH23s!sXYa"pQQO!BqA*MZF"d0qn\,-3cmC"u`"Q"pQQO!DXsG70WrkSH/p!q?!Al[L&6@p)5sr#1<RI!OW%g%\Ebc/d=`S#"BqV-;J_:D,tI:"ssQZ"p1M"7Q(H>:-JkN%L,r\D'iS4/o>3:-;FaS#"Af6:.>FV%L,r\"pP.'!PJSA%\Ec6Nr]HS!@A"GM?+J(#)`Kd#20*P!Q>-F/i*\Q#+bi:"pQsi#$R`%%L*+E('Xt3%L*t$]`TSkT)f-3#+bi:('[2;"stZ$#%=5,*[Vp;-BJ<6MZF"d,,,)b*X5%C"th79"#^X]!<r`gU&bH&TECnh?7#kF"pSD)!<raY!MTVF#"D@2eHQdiFuFjO#)`Kd#*B"^!DXsG70WrkSH/p!&>B2#-3cmC##:]i"pW]^U&b8u)$Mm#<=]'0!!'S*!<rc!"JPo$#3l>c!MT]$-=-l\U&gth/ljTR-<A@lJ-#$@<`XBE<kS_J"pR,_!EKs?72?)6-;FbW-3dKTScMk=<a8[+*bPZ]+JJm;"stZ$#%F;-D$D=C%L+P.N<0;B1Bo0;=XF=g-3aZ/U&bH&#"/Y"##s+W$5QeL#/UD8!@A!dNWB=g6)"BN"u]cl#3#]Y!Gr$11Bo`\=`"@,1F<;Q#:;(J!It4<"YMEN"pP.'!A6"<#7`?j-74EP/e4KSeH,q51DU0YFTr%aU&cSV#"9:3/gbE>2DYOAH(k<D-5Kr8"r8Ni#*8k[!>Ykd-3a[Y!MTUd*0q3)#)iR'-4ZXKO9$CLEs;iq!MTVn#:9qQ!@]':Es;i"!MTVF!^9Y.%TZUb7UB+M:)7/6"pP.'!ENMRB1?360a;4oUB+,%?;^t3,,,)J7QrPD5#-82:/3MJ#'$@<"pPX5!<r`46nSZZ-3a[9!MTT)"pPDMeHQMB!?MFL72?(S-6<?qI0KlWU&geg-4ZXKklDhPEs;iZ!ho\r#QtGC&Kql,*A%6k!!'"r!<ra[!MTT!#(!!E*X7o3-6<A_!d(:@o`Yha!NlL;!=k%h[K;-f%ZCDm"p1M""s0?;)[</@#,;2'nd(N_$&/LF#"8_#L'!nH)$]4(?3UVF#GM6!p&QM4!<rb>%AEk5"pPDM[0-tu!?S?H%ZCDm#1<OH!I!i4%ZCEhG'5ThPm7eX!EOYu0no_:!Y1.i"pW3NU&da>":g@k##5At!EKpFMua+e?5a"P;PF1U#1`f%L'7e<!=7fgm/[]U!?Tem*Y$[$Jdr!C!<rbf!MTV/!Moi-Mugp!?Nuu#c2g]FRfN]t;5+)'2%GQG<b>quDWLp0MucssDD;>"Vu`Un-C"cFMubP:%ZCG>#6m))5+MlfMua+eaT8+:<e^X0!ATT8V$.?f!EP3]NWCl#!W<03MuctF!L<a@ScLDQMufdV]`nt*!EQ&uV?&CU#-ItF9sk5/!BA%"r<BD*3/%E6XoUKd#.=ON"pX#eU&bH&iWZ%W2?r:E-Jeb-mK"Zs!<raVmK*7k%ZCG"!p0OO!L!Ng#3$#b!W!--Q3(@s#.b8<!P/^5!WE+`!<r`XU&ghd#5/'Eh>mi[!@IL@"pTMT!OW%?Mua+e3MHNY#5Sn*!<r`46j<kd$DIRH!jr.@Mugp"c2tEU;?d?Z#bh>orW+@<!VQQf!WE+O!=&5uWXp0T#*KFi!<r`47-4LSV?/*A!X8iQXTJ1s-D(;C#)WY[!MT\Y!WE+@"pUe2U&jZ_#6"WMjoG[@![\*Up&Pjc#5/'EmK!Ok!@IL@"pTLI!=&N(-3a[#U&jZ_#*o<;NWKChIDQ'Z!JUYs"pTY[U&bH&joHCg!TaIpMuiVQXTT,m!U^!^!TjD\"pXJr)D26f!@A!TR/s#_mK!NP![`X'"pTLI!="Pc-3a["U&jZ_#)31+rW*3-IJ!g#!p0MC2?nm;-3aZGU&bH&q#R2j2?r:E-Jeb-mK"Zs!<raVmK)\Z%ZCGR%H[]Z!HSGLaTJ7<"pP9""pX2j5ir(O"uc,VNWQm!QiWKS/d=2!!X9DeQ3%g+23n:J:*p/L!ho_G"pU@p1Yi-;ScU]b#,VGX#*o>3"Bj"N#*o<;"pU@pSH/p!l3a6dc2e-8![\*UQ3*TX"pPX5!L<ckOoo_/#.ai0!EFjU-D(><!WE+S!^6hf!Qklm"pV@>U&bJT!NH>E"pUFtU&hY,L&r]o!WE-!!JUY>#6"X\%NP`X.\Zr\#3GqBmK&j\%ZCG^!W<-2MueV6rW+@<!<ra"U&bH&Z3-g%c2e-8![\*UQ3*TX"pXo*U&c;>^&fXi!X?XG-3h`s#,;2'M?CQo#mLS<7+MA\#+GYM!<r`9#2TC?$69<T\HAQ,%JBfLT)nWdmK)_VE5_nP!@FE>p&XR^mK%:p!PJX(!HGpVjoOlNP5tjl;PF3S!@A">joG\K!HkdTmK"Z,!NcFs!@FE>mK*"^mK&s]<V?G?T)nWdmK)_VE9.;t!@FE>p&XR^mK%82#)NAT!<rac!ho]BXo]XR#-J#i"!%RM.\Zr-#-J"S-3gm[-DghK^&fVc#0$]_"pRAf!<r`hU&b`&!@FE>rW2]np&T-?#Q=`NT)f-#!ho_h!VQQn!KmHfp&TaG*<l^mU&bJ,!f7%#"pVpSU&hY,rW+@<!<rbF#bh>(L'"@Z*<l`,"JPq)#Q=`NT)f-#l3F$ajTb\b-D(;C#*K=f!PSU>W!.2G#+,Rg!VQQ0"U9kc"pV@=U&bH&g'OJSp&WSL#)`Kd#5SIs!R:]MjoHe5#3GrW!<rbE"JPo$"pRJ4#3GqBmK#H\Mua+e)PR93!VQQf!J(7Up&T.R"pQ9G!U^!e!U]uI!JLUK!@FE>[0Q[3-D(;C#!&CY"pU1jU&idL[K;HjA7c%[![`p/#0$]k^&eKCIC93k!k&,-NWQWjblN=qm00p"[K:W\!k&0D#7e0D#*&a3"pW-OU&h+m#-e>P"pWuhU&iO?#3Gq5"pX2jSH/p!p]dGnNWL7+72CUZ*Xr>9!O;qN"pTqcU&j*O<sG,ph>miC!@A!TjoM"R4pL-M-LLmE#"9<i!?M[S"tH>J/dCG=-Jeb-mK"[.!OW%?Mua+ejoH/##%=5,4pL]]-N4#]#"9=$!?M\6#)31+"pV%-U&bH&U&gth[0Q[3-D(;C#5SIs!R_8YjoJcm#,2Eu!<r`47$[m5#+GVt#+bl7V?2/UMua+e!ho^u!g`olRfTAfXob0r;B?%>![^YHXo]pS[K6Z.!<r`0U&bIM$)Rb1[0QC+-D(;C#(crO!O;q7joJcm#,qa"!R:]MQ3&B;#*o=]!<rbf"JPq)#Q=`NT)f-#Jd%kLYR0FmNWO8+#3lJg!Q>*5!@FE>"pVpKU&i46rW+@<!<rb\$).G)#.=RIh>miC!@A!TjoM"RjoHe570_lT_$(h`#1<OH!L<d?#+GXZ!X>4t-LLm=V?/*9!X8jWQ3%8f![dmI#-J"S"pT+B!<rb:!Yj2d#.=R[V?-t9![b&O#0$]k"pQ9G!S.8U[K7eI!X?@?-DghK`W@Ik#"bNi"pVL;'\39h[K7eY!X?@?-Ct8C`W@Ik#2'$O!N#o&#(;d=#-J"SNWKEn![b&O"pTJ[#'$@<"pTVcU&k5oJcQ(6!<raj"JPqj!Vm!*MZF"dp][Amc2e.3!@A!TjoM"R"pU1nU&hY,L&r]o!WE+S!r`4n!VQNu#(>n?"pTMD!JLUC!HDr\p&QrR"p1M"#3GsN"'N#:p&QM4!<rbD"el%Z#)31+T)f/i!=#+r%K6ATT)f/a!=#+rmK&jZmK%<E#5/'R"pP.'!=%ZeBNYND#"5<i[0-tu!A:5N#)<5V!jr.@Mua]k!X=D\"pP.'!?MHB![_4XXo]pS[K6Z.!=&'!V?.&.p&V-"*<l`#$DIR/#PJ0FT)f-#JI8+PrW1XX#)`Kd#2o]Z!WE+f!X=P`"pXT)U&iO@#2TD.ScT,Y![\*UecHNi#)WMW!PSVh!k&/h!QG2[!k&/h!R:a@[K;BgecJj[!fR/o!nIG'"s_\#r<B\3Mugp"ecOA+,6e>RU&igH[0O,AMuh3*ecOA+,;'2O![bV_#2TD.ScT,Y![\*UecHO<#1`i&"pP.'!QG0Fh?#$q!X@cg-3a\*!Yd6kecI0&#0?n?!=%ZeR0Zs`!<raVmK'EkmK%<E#5/'R"pQNN!JUY.#"8_#L'!nH"pWH[U&jrgN<'NJ!WE+Z!=k%hK`Zu1-D(;C"sTcB[0MEf-D(><!WE+S!g3QgrW/Dj*<l^7U&i46NWLQ"!KI59!epbqrW*3-I0KmAU&bH&#"3;4joI:+!K@*iMua+eJH;JG"pX#qU&fuM2?lSS#)32M!<rbu$).Ht!X=bhEWu`i"JPp_!eq0X!KmK?#IYE9*c(HYV@&V(K)s6u#/1-c"pVdCSH/p!a9eRA&H2]j!g<Wh#-\E.!<E9+&JYTP!!!"Qq#L[(EhWTR"pROQ"uZ[W!K@@C2I.pn/t`5'('[2C#!OBQ#mNjT"pP.'!<tFdScQM02E"hn2D1X'2AQKc"pR,_!A4Q\+q=e]72?@;7;W5M1Sk?]-8QtY/e&!h.\ZqR#!OB)#6mXR"uZ[W!A68_TE,6$@A3cT('[2S"u[g!#mNRL"tg+O!TaS>/mU@N#"9R;4sgI<#bh>(#'cjCScn0leeenu#6J<S5u@e/#QOi)!.akG"pP^7!<r`8U&bH&!ho]*%L,?+"qE!j('[2C*X5%S('[2S-3cmC#(clM!@B,t%0d"HL]Iu$#"9:c#"8_#*ZEQ5"su.>"U6S8/d;fC!=fSD70WrGU&cSV#":-k#"@n^2D1U&[06au1Bn%[U&b`.#*o:T"YMF"!OW(82DZBY-3j_Z;5+*Z)Vu.a#+Ybq"9i?OBb17E!!%TH!<r`@U&bH&$DIP*"p1M"%Yk&hRfN]t()liI*X85;-4U5K*[VY#XTomOT)fuC(/iBY*X85;*Y&r`732Z*!?M^d;PaL;#+ko;%Mhsu"s*u@!?M^d;Ukjj#+ko##4_hi!A5Dt732Xk-7/p\-3aYUU&cSF7OCkW-@UXS<X,/s<`UPrKa:uhT)i7F?@F4j"q:bp#&X;@4pIV["pV@<U&c;^(/c2d#+GW?('[23"tgf0"u[e4-3g%B/fk3c*X4ML"pX>qU&bHV#+bko"$Qp]!<r`\'J:F2732Xk-7/p\-7/pd-3a[S"el#E#!O@\#"BpD2?o`R"pTqcU&cSF4siaK#+GW?##6KL#3#]Y!A68W;WS$>#+koS"th7q!\O\L!OW%g#+koK2AT0p"pS$J%MhsE"!.Z=!?M^d;M>2o#+ko;%MhqH#-n9(!Smn`4u3Bq#+biB/gaIK*X5%S"u[eT4si!2#"BpD2?o`Rr<#4fT)f-K#+biB/gaIK*X5%S"u[e4#5J:o!?M^d;XFN,#+kq`!@A#C!<rai!ho]""tgTB*X5%S"u[e4#2''P!OW"N#+ko;%Mhs5"<Ic>!<raCU&e"9:+R_m-;IT::/=VS7W8P9fE.cJ-3dKt*_$>C"uZ[&r<#4fT)f-#/ej!F/d@pK-8mJ2"pUb'U&c;F(/gt0*X85;*Y&r`"pTqcU&cSF<[K-t?7%!'AgUgg#(6[[U&gth-3cX\-3cpd-3d3l"pRYn!@A"g-7/q?-7/qG-6@%/%0f9+%0e]pD>aQ##+ko##13LH!IZ!nT)fuC(/gD!*X85;"pU1lU&cSF:*q:l<[K-t?7#j\3hcX%#%f1lAd/\K7Ks;+2?n$s"$Qp]!<r`\'F"c7!MTU$"pQt4#%f2/#&Yc""pTJ[#2oTW!<r`\'J:F2732Xk-7/p\-:T=/TE-B7-9VP;kl[X\[KjMMNWU1#!!<3$!!)fh!<ra3U&bH&;PF2L!<s<G"pPC.!<s#<Vu[YT#,hP,"pV(.Pm@R(1Bn$n0a7gl)JoZo1Bn%-U&bar!=#"o"pPR.!=fkLVu[),+JJl@"s.o("su,1((aXB%=ZS2*\Ip,;?d=:U&bH&=eYot!<NH*!!!#ap]2-7"ptP=*ZFDH-3g(C%ON5p*o-u8/fl&D0cgN',-DLV!R;Qe"pP(%!<E0&zl1b8`"qmX2"pPF/!QGf(!fe3a"pP9u!=fnMRfN]t(-Dd*%OqYe(nq$3!Z`-czUA4fo#"kTj"pRDg!S%Ae-<^TXao\:<4pD38D$DUKeHQ4!1Bn'S!ho]Z+9m`)"pTY\U&b`.#"9"+"u[5$#"8_#!ho]2"pQu&"s,QI%L,?+#+>Re!PJaC4u8H1#"CC$"ssQZ"tH>J"uZ[W!B)iQ!&b$>NWIZ7\cFEe"pT+B!B(Dl72?(k-H-/n7Pb5Q8YQ54"ssT"#UUm(-4VAq!A4id72?(c-3a[9!MTT1"th6>"u\9^#mNRL"pRr!!<r`>U&idK4uQ]s#!P51!<r`NU&bH&184ed4uQ]s#!P51!<r`nU&hY-+td%'#$R`%SeU#pXp78C#!OqN4pD38/tE83Cd(&5!WY,B5!?Rc-:Wsq7ReGl!Br\:4U))lU&dF^"sPBXeHQTi5!U+m#+5Ld!<E35"onW'!9a+X"qChJ"s*uG!@A!T70XeS2l78^*1e!-"pP(%!<E0'zkkG/_"ra3:"pP^7!N$9[(tK"f!<r`0U&bH&#+#>p"r9<*('YWW!>kn=!!!#]p]1j/"ptP=%OVGb##kd2!29Ls&Z-K?"HEK`!sf'e!=/Z*!!)`f!<ra;U&bH&>+u$="suF>">11V!?MFt9J.(b74&3s-8#K,Gn)GB0eNY7+pJ5aU&bH>1*$Q',,,)R"pPDUeHQMB!?N9t0a7h:U&bH&&>B35"==VN!@A!T,0gn"$g%m*!<<K-!!!$!p]1R';PF0r#"kTj"pP92:'O`G"pS,!!<rb&!MTUt$l0$m(:=>^Mua[u-75hq"th\9##_/r"pP9u!WE02"sa]?!=k%h"pQcU!B);0RfP]C#+GW_G6XN;"pP.'!D]Nn#+GVt"tH>JSHf?W1Bo01ScLGS#+GVt##V)qL(^?ujr>pI#$*'O"pQsi<Y-8U"rO'8!<aDX+W1mm!!!#Uq#L[(Op.Q\"pTqgU&ghoc3rJLFTr$S6k0\272?XC72?(32BE&,71L@C%0d"H.L(@e!?D@K184emIP+NA"pRM>"pQu7('[3V"pQsi#!nsa"pQiW!S%AY<\rP6#$s*&#%fXq<pBfj"pP9""pTY_U&f]Y#"<tF"uZYi@\NmP('[3V"pQt<IXX##?j;Mi"pTqgU&fuL('[3^!<r`dNWB=g71P=Y"q?"c#"*Q_/lDlXiWGnUG()&AFrgiVIMN,V"pP.'!Ib4W2MM5:#"9#V!<ru;Fp;dn#(CXu#)NAT!G2N?7:l`.2Jr^'71O2>%0g,CD,ssq;?d?*!MTU,"pRM."pQu'"pRL+D?^OS?3Y7I?7o+["tH>JAd/H.%V>nS#$(qF?4I0."pUIrU&e:)#";i&#";i&"uZYi8YQ5t"pRL+Ad/\K<X*DI%L,?+#,qWt!<raKU&e:)#";i&#";i&"uZYi;5+)."qEF)"pRL3"pQu&"s,Q)"p1M""qHdt=`tPb7<Sk>2?n?_!?D@K8tl?3"u]cl#&9k5"pQ[ueHQ491Yi-;4u7$[7Pb6,3E]bp<aGt7\,i<)Fp8.>Fp8./"pWudU&gV^"u]cl#'-F="u[?%"pP9"D$DmS4pD3[4pD3LD$EHc"pR)^!IbL_7>:gY#"=7I"pQuG!>Yl.%ZUPo%0h7cD$C2PU&bH&#"/Y"i;oYRklCtu?3UTNU&b9(b:U9d.!"N9(kCj`L4\8H^YMPQ"U+!Q](GD^f8AcV!42.uo`C@B]FXlD[JeB8^e_5b4LW=ICf=-e.SLpTEI%#F>dnHO%>\iJ<HP$:8&;(nGShE_,M/%\.3T*h>W<fh.sJHHb*-Zc"G.\3W=/b,!!!"L9#(i8z!(t$M#;@EU1\08B$ig8-z^^L2Cz9>Cr9z!'.h'z!!"sn$ig8-!!#8p^`a$dR/A1o8IakG'+=j@z4hr3HG\Y$1/dDn=+TrY@CDn?!!:!)Q$ig8-!!%O@^`a$"U^+/9:JGH-$ig8-!!%OH^`a*UM]89BqT&Kp23J@Jz!"cpSz!!"Xe$ig8-!!!!K^``uKqP(O9$@D@f#Lj"f>D`2t$ig8-!!!!g^^L2C!!!#WA&&KQz!&_P#z!!":[$ig8-!!'fB^^L2Cz1Vb.BWEmY7kHLPj[J;Y^$ig8-!!!!n^^L2C!!!"L9u%nRcHH[sz^f8)Xz!!"pm$ig8-!!%O>^e+V9z!!#7!+UMuDh>S\'+0T?$%JbVYLFD0>n)lg)!j!O[SA=Ou7A2d(R:^5ia$-eJ)X$u$8IPS!z8\b`7z!)10:z!!!;?$ig8-!!!![^^L2C!!!",A&'5pf?IkY)%.pAdR4KDz!(F[H"un'%/E+kt%'A.0ht/+a/ZF.o?OQo7z:;@8<z!)LB=z!!$'8+US$<Pg(hR63Zg$$3hRDg;s%NF5rT1#W?B'mHY`[UC7,&z5/8<N3pdGomt#3t/O>otA./G<!!!"L9Y_&:z!'J%?$EA'0qbn-[Y.!*oz!!#!o$ig8-!!%O9^^L2Cz*5Ds_zJ3gsZz!'lU\$ig8-!!!!S^`a"$aa4-9^SAdQ$ig8-!!'f4^``l1WD,')$ig8-!!!!I^^L2C!!!"L@DE9OzJ4%*\z!.\(b+V<[:Q-fYh1"+4bp'lNZW*g#6zJ4.0]z!!#F&$ig8-!!!!r^``uXFI0mDl(O1Iz!!#R*$ig8-!!!!5^^L2Czn@oA3z!(4O1z!2*`8$ig8-!!!!q^``qNMn@.Q8^\"IzJ3^mn#G-H\=%d\H+VK$9_1*mb+!=5/=Q--IT"Xek$ig8-!!!!C^^L2C!!!!a;8==he/9oBK`6*.^p]KF+*,Vn:+\\'$ig8-!!%OG^^L2Cz!!"/K%:hRE=G6Bf'+=j@z/AND7OpYjT=R`eT$ig8-!!!!A^``sPoNCstP(jAFz!(+I0z!!$$7+Tr1f\Gcm:z!&VJ7$E_k1f#9k@)6nHZ!"8i-!!!",@DF#o=9ts15OS:g6*rEVz!!"@]$ig8-!!!!b^^L2Cz0Ye(sz!*R)Gz!!#*r+UB$r[HU'!Gr6`K1PEgQEXVpJ!!!"L7_g/NQA'$F:(.+&z5emd.zJ53lgz!!#O)$ig8-!!'f2^^L2Cz0u+q:9E!s3RLC>@JRBW*R<G_WfSL":zJ4RHaz!'jQ"$ig8-!!!!9^``qW]R"1rh^8g4z5[M5L&R9j]bQWF`Y!XL!>DN*%&B5+YzJ5a6,$n9%sc>b]Y)_H'.-m8enXW+p&;[`X+!!!",B#+;lrr<#us8W*-z!!$`K$ig8-!!%ON^``t`^4'UJ_)\b/z!5MUM$ig8-!!(qh^`a;,PEprns%:O\&/6!ACp#51$ig8-!!$DF^`a'mQhaM9E?>l12JOBPjEO^E^$0Pr_6^;c")dsk8-gP5S)eVp+UY0V$Fk(o6YX7+q[3B's8W-!ruh`JRLlH@:IB90jU;+h!!!",AAB>sRl2O:gO8;"SV*s0$ig8-!!%OQ^`a0i\$kZ\UM^,/i!r&d.LZ:W!!!!AB##Q%?Zu1EM2.ht7`&gF%1Fe'_[N!%R@0J2\\B9q+k@jO;(D;."%Bm3z!'jN!+UDF?pT'=YL;G)PN8FLJ<NRs<Y]=uHfbL,o_9LQp1mUD#GtK4g4/9at8GnE;+tlHV+UW;8$s\EDdZ\it+Uf*8,:-[;_fl@7[\b2aH6Q%[/&R`K@ue>LZUZtOo)hk&.bKb)$*TFq)Z&D1<NRDQ2[[Wp@VLeu-b3Cn$ig8-!!$DC_#$.ls8W-!s8O5Hi3OfOLh7%qz^f\A\z!'jT#+U&idCl$RLz!.\t&$ig8-!!'f;^`a-8DeHa%Zlo>)f(:-pz!8q>%+V*)OJ:rcXjC?,M2\lB;+VhJc8/U4[%8!<Np7$JXPg_.l;A/1%z!5MpV+VM6`NH/`hgEVeb)!CVqA>V!3$ig8-!!#8r^^L2C!!!#WBYaL`s8W-!s8W*B%'[)V]3mp1ICpJW/g1Umgt`K0\0o1MDK6-czn8Q2?>EAgas8W-!$ig8-!!"-Q^`a7!'`,l)hBe(7]3\H4GJ*Pk!rGn)z!'kA9$ig8-!!(Af^``q\q^IpG\p=/QT`>&ls8W*-1G^gC1GdLp+UI03,SN+aU-9_'@;Kqh+UYuE9GG\5#Y1dR$ig8-!.[l&5R[Vm!!!"LAAB>nS^s[Ac5(.<#b*%lFN/7[TaUo$!!!!`fg$\lT:dXpd)tAlJI.-I9i#N:$ig8-!!!"&^^L2C!!!!1FheCczJ6Tetz!"a.c+Unlg+Z!JXmsbl$[CO']z!.\Ck$ig8-!'kSU5R[Vm!!!"lAAB?(a7F[,(_SZNX=qbL5])S34eY.Ame@q8?:cXK"t4B1II=h0O/EBdz!!#7mz!.]%(+U)uVbP`juz!+9KU$ig8-!!#8f^`a,+$(2mFF[oYb^,DDgc-4DUbfoFgqbsKos8W-!rsSl-!!!"L=hl0bn&Ck_0KL?\[d9E-CEXO[hPmg%)eAPk>rQF<hl8%mM!4;b8fsWJ$mVCr$r55u#n.V*AK_9+5eI`!-4BkS!!!#7>/29b)9=k<80JGkIUJubVE3no`qVc\$ig8-!!%O^_#$\&s8W-!s8O5H"qL"Vhu+],&CGt4a/=O=!c7Cj+Y8)%:cC-Kc_,P%gZ>rb$@DT.)DF<Zhu7I&frt('&OW$EHr<m_0q&ljptlJ[z!%pMFz!$G[b$ig8-!!%OV^^L2C!!!!aDSRD4,5rT]iG^A"!%VX)>5jMR\u,@2_L+Ec$ig8-!!%OO^^L2Cz>JMBjWd'3nF"u4UW7VG`+Uq"#Eq+uh#VK/6f0eL*z!!$9>+V#($G6cU*VNE*=m$q6C$ig8-!!#8d^``l[W#N!d+W!fEoH^jVY%V!<HG.=-!Pt[ra9Q/BJKY9(Iu!o2(sr`lzi*a>D#T[A(,tX?dHjfuT!!!"lB>>YuU.^or:#M\WdC6Fjz!.]"'+V.f9m4!ttMKqO6IAm=$-MnRps8W-!s8O5X\?IR"BhD]JJ0';%otf>R,-2BTEaK4Tz^hpk1$lXup>M`[8)&sc7dL6*U!!!#WG/,7&9B$?[zODquY#3h<_OtuG6z!)RdQ+UsS>B:!i>]q1Faq,#E]*+k7<,<JMU_G]`ng!/rp*18p9?;l>7Ka+40ap\7M!!!#gFhf.*4JID7kul1Q&F3Mad6"I1'CWLn:kf7Q@3Gg#s*HL@+U:gW[mqP6i!]Sc!!!"lCVV)$AWDe8MZ#E:9F'\gz!!$uRqk*ogs8W-!rsSl-!!!!QHGC[8"qKkNcL<nmmsn=H/ObBR$ig8-!!#8o_#(,1s8W-!s8O5M4-mYpB^;'\.4._3%DLe\@W%4H%]rk;jQ$^Lzi+Kh6z!.\n$+Ui?-KcdgI5taMK%>l;F]Hd_>:r?*$WL9j"k?@P,2$"@GAD0^#(E*5tY?i'qiW*5p2ohP6@'7C$X&Bl!$ig8-!!%O]^`a6`kssd1R"DF9EmSk^&-`OCzTP2+Lz!!$cL+Upq8pp$'B]\P$B9G%%/z!!$KDqt,O@s8W-!ruhI>jU;+h!!!#7?bdfo9C9SRM_:/bBMNfRiX>ee!!!#7@_a,jTiJ$8^`a!id;'<^ZG,*%$ig8-!!(qk^``rU7-B@l0d@),z:ijDq)+qk-Q41;t?:\h?ku.u2XJ*c?CVta,3%k[?z^g"St$(scZO\5j.;hZA(CV_&\Yr_E?H"`Sf*[(s,K1HCEk:oZ52opdu%4d"d"`aCQ<&ujBS^eklC*HZY*R^*hBU7-^+UYC%OEXcu`&=V`+U+lBKD'9]1B.=Rs8W-!$ig8-!!$DL^``bl>7:K3zi4f[#zi+0V3z!5NBc+U<T<D6#/%O<G4a6+n2'48[a__`s4iNI=An$ig8-!!"-P^`a'Jc\P^V5B)q;8KeV/b5NDQZp",PI"%@<.'Oj&Z=CN!=>A4-^"!i@%`[A5M4(dMB7NY]n)ji_z!!$NE+UcWnH8$*75???5p^@-&!!!#7AAATRz!,'(j"ao_._D<>GBb?40Z<gjCI_#,K(WE^(#RTKOZVh).kog:^B[giC$4J'`6H_B<jb-\o+VE#BQ[tL-jBCbh3=Ii)I%i)!z!5MjT+Ud^$h5Bi7(k1tG=Wn44PiuZ]aHNdB)/B'Xz!2*i;+UAD85-.p*n*(u#j%>Ti*eQB[z!.]()+Vp(.]"HQOG3k5[(c"pP_eJ.dO+Xb0+U3f+ER@qa$ig8-!!$tW^^L2C!!!!a:r"4a1S<A1A`&tB2BZ(`r-JhPz^h(:iz!'k>8+Un&m_S2r0!HmIf7OfPfjA&Wf\a*u1clieq!Wirk+T+^gURr\8Je3+$.aW]X+U]W7(&._E9ZJN^Bd!aDZ,?`Pi/(eLz!!%#S$ig8-!!#8^_#"GGs8W-!s8Vt.s8W-!s8W,rRK!6ds8W-!+V*IjoOA^)Xg6Fj>PF[[+V/!#B'XtJ+q[4qqKrFuZ699-8g+Ft+>A9!;=G_=+!n.7;+GQ3/<:q<fus8rrr<#us8W*-z!8q;$qj#)!s8W-!s8,(\s8W-!s8NK-z?us*lz!.\Oo+U/,lnC5tc$ig8-!!#8g^`a-NQPt`"l-f1t.q8&m#GW88PflGQ+U<Ki$G`OCcQNaEl4-Uc.+j,bIXoI!+UN58**Tcpgm`^8%k@2mC\NZS$T1P=dnf8/+U7g>Nl3EAqg8>Bs8W-!ruhe[3*_FV[W$1`A>KYBz!76#,$ig8-!!#8h^`a"R9eI%n.rhm[qb[=ms8W-!s81KAs8W-!s8O5Ts3uQu0.TA?qeHN<^STZkE:Y4T/n64:z!$H6r+V$1OSiZbhnbtb:)R=-Y+U$0Q+GM$Um1fU%1k"1XjH,Oh]_OFH5R?`8#ZS5U$]Mmt*_2,Qc^TB$+Ubq9%5)Gl9CB<CQlu\1ZGS/b80J&\h@'Aa!!!!AC;:5XzTQ%[i%X18K`MK!F)KPG=F!`sWz!&/W4+U6n]k&_3#$ig8-!!(qn^`a=XrVS34l%W%h-UkE-FrB_DZ69E=aZ4M7eKGA9>^2(WGElGKrUgjk+Tf0@$ig8-!!#9._#&Z]s8W-!s8NK-z^fS;p#CpF/E[;V9+UTL(PIp*,ZqLMi$ig8-!!"-O^``ibKbq!&z!$H!k+Uf!@k?6GV2[:9cI`r3#zE-8r>#@)egdM-*L+U=bk>arf*i?8GIh?Ii-,M;n/rr<#us8W*B"ku=WTcFOAz5\\"Bz!!$EB+U.a@JC6M&&_MUqfqWCTL>=kq7O7Q_"[aFBI,rZB24m%1IU,<UXW[kojaK?5qm;pos8W-!s82-^s8W-!s8NK-zS)$=Q%jbFd:0kR*AH9lNUX'X%$ig8-!!'f8^`a!\;3fHl^.8MQ%(]i,qe&.<XKKPGHOKlSz?bd'Mz^f/#l$/.YI#(nK%`7Q4<FSX,I+bBk+z!+9][+U/tgiQoF:+Uf$DXSbrKHQW;-.s3!:=?[l8Ng+in?Z;eVOYcn0s8W-!s8W*B$d3mHTF-Puq:sa!$ig8-!!&[/^`a!]?qk^=.%;J*(`CaR[S.e<mi=^#Cms*+--([VmK?4aWXJk-!!!"LA&'5qYC]^Xo_/MlYrL/T![-;B$H$V$\c-(Tj0l!3$G.!?P3-Elr.LR`'`d5ak,X8mK&K&>Ik<Ya4__f@qRRg_$bj@H?IDP%)?W*:kBho?C2P1)%k4>`;-nLR+H7iKcef-2z?spbn$P!sFh=:J,P8CcT$ig8-!!%OK^`a)ol\/u#N7nB;71oEBs8W-!s8W*B#`"a!h:L-E4U_;j!!!#7?,.Tm'=b"':t%9<)?;O?g'dr]!!!!a@DE9OzJ6'H/%F2huRYI1/:&T2l(EO_.K[8in?[r6f,[jDi+V:AoQde[dY_n!kktTrL4q\8(z!+iqSz!5N6_+U[Ra=(eoMOtuL_$ig8-!!$DM^`a%n)05;*";<CQR3<,:5qsGt+b.a/cFJdjYkoUf"tPhl'n5Wq&]pm9HOoeWWltln_fmjC!@/fta6e+7#oPHWPpab-Ag%Y5[7DK'7$?>B+2tk+g*%7l.>K/3mDJf_K/L>j?WKY+(7d>5aSQAGzJ82k.z!2+)B+V!Qdf<VcO4&<n4,6e]&$*Dn9`:Q3]&?-fj[d&^!6\jD@[p'[B^_C(Y.+jnXF.UqeMBN=GEPm,^#9,jUbkpE!s8W-!s8O5Jdr'!6",&`&+U]&)jj)]#-^,4SB++b?z@DF#p&B'#9gS^Ci(4,q9+U1W3]u1#!+VUM@kEesk2GoG$D$^0E\DI=/o*bU!!!!#7;8==cD3C?X[FSC&DC@IW0Qa&uz!+9NV$ig8-!!!"?^^L2C!!!!1FMJ:bzi,6==z!.\Xr+UVha?R\3EQJb^.$ig8-!!!#g59UFo*Q<YAI_+/XZW%JZ$.no'$47)&B>k8Zz!+`kRz!'k,2$ig8-!!"-f^``i4(J'3&":<L;\KMCpS*aD4@kg.f2.b6@$ig8-!!!"$^`aR9Be1T!P2RQ:_kjHM%lhLt68C_khWnb[+UU\24VnkpE2"Z(+Ts%YcV4fJzJ476s)5!QQlGquL17T8A@Rs:@]GQ;?o'kN*,E*cRSC[6C7D0VVSp4fTz!$Gsj+Ur]2Qj]j%GY`\#*gJE&$.,)#kE119PenRK.cV7`qNt"dz!.\@j$ig8-!!#8n^``p$3VN+T?2M;7s8W-!s8NK-zJ8N(F%1Bqbj\4E9.1ZnHG4c7Dzi,c[Bz!2+/DqkjDns8W-!ruh\/a[+a./HlG3+VIRnqRE/aZK,'6Et9;t06*d4+U^)a^]c[KL.=9J719.r!!!!A@_`BPz^gk/'#_,JSd&aI<,U!]4jGJ.s_<)uG?3KNY#>ZKI_5t^Vk,\sk!!!!a!nKX6jT#8[s8W-!+TuA]P*@*t*GmA`<0YO5$-B@ZzJ/Z]u$ig8-!!!"#^``ldJ(@uc$ig8-!!!"*^``qh=!8%_2e<BtzJ8)eB$fa[QbQsIgp<(VA$ig8-!!&['^`a0t)>hk5cp!a/]P(2CG9I_^TPVGS3#MlGAC<lR\t"NFp/&qR3$Af$[:im:b63GJi53_2%uC\p!!!!aT@,tJ$^#.t,20MQF+`(*$ig8-!!"-M^`a#4XbV\8oL@PV+UKe7gkTN`T@5juFoVLAs8W-!+U<A:"@8eD`?>bHRXJ4D>.<d?$Hf6IeIr>kzE-B#?(u5tdq>aI,/(oVp0ZJldhuZWLTLK1OD]oiU_a)"_.2*a.CVsNU\tGCbk#U;_+U<`$ZDcIk6MpDQs8W-!s8O5Ih(%db#Y)6G%AhP(f&1d?j+BlL+]TZn?:-:V#81V(=QmIB$@Ck79r^@tJp;2W'$6mED%51.Y50#-j_?1S$RK@-"`:/mLUA98)M7<Fb@<L`""n!!;s,;3TKr+-G:#"FM<o"$"_EL]JuoF]zn8lARz!5N<a$ig8-!!!!t^^L2C!!!"L@)*op]+7YiqI0a1W49V[@go/P4UTf9ke@N+z5[D/K%MAOm\5<js_$*iB0%cO"z!+9HT+U-X52c>kKz!!$!6+U(i"UY6)!#l05_RMu1Jg*$\ZGT?2<*DHqB!!!!a'%fGm"mLdOT.LHOzi,?CS$lbM*njprL%g*=l@j)2nk,V3R[G_.TIf$g8s8W-!s8O5KXn^]#oer*K\02-DN,N&jAu7p(z!+9BR+U!?'O]2_hzTOP\[#>Bodee`E)+U1:34_s5N+U44V^T5CY+UfopR_Jepm!(`/'/^pJJ8Wn..i&^B6J>W=UP6:km6np40FRp]!!!!ACVV)-,3p7MdqgoH68N>s7euD,L7mj;+V""@as=N#!U'2$=f"1gz!'j]&qa(8^s8W-!ruhr$m`Y&JL`<*?@RPOT(766g"QTn`-k$(U!!!!a=25s^Gm9p$+U$%Qi6rhQGncPcW$)N-[*]24-MG<poaCg#z?,.Ts@OY92+,t,=:LLI2Ma-+;hrcO!z!5N]l+VF1tRR&&T@[6J#'ZdS]cjX5("\QTnSd-DH\%GB9i9q,!jWK<ez!.\au+U(.56I]`n&oNG$-RMuJqL9C5^VAA/:==Oe/cYkNs8W-!+UI=s)P&_Tg=H.rrr<#us8W*B&nla@F>4[D0R'K3f8XTcLt"<kz!)_N:+Tk/lEZkfgei9#sMJ#FXA[NZn,4#\(e3YGk#81V&>3)E:R3;c8IQ.ZO4U_;j!!%O^cTiW_GXgLn3<o[<HIc'kYm^U4z;SW\@z^gY#%$bk\ZGAF4p40M!\+U6>`j'r\A+UXDd3.9XQpp$BE+UH!o2HYOI<;%IE0IW\BnC#>K",e8#Gp*R\K@)E]=;\uW%g`XEzJ4mZdz!'jo,+V;UFrot4qKEnbj7q$8.*1cu,s8W-!s8W*-z5V^nVq\]A5s8W-!rui>+BuaXA%N#Xl`)Z<<Q]o2F9_WT]%i[HSU,<>Zz^hCM,%-["Xn$Sdf]]q>Q9+1e#!!!",EPMt_zJ5X/kz!2+&A$ig8-!!%OF^^L2C!!!!AB>>Yq1;F*)o7oR>z!"a+b+UF.62#5_>n20k:!<EB.#ljr*zzzzhuE`W%0-A.$ig8-:B^^u)ZTj<)#sX::^$h!U'^l#TF(Z!rV-Bt"sTcB"pQ!?!<r`@U&bH&$DIR8&V^t])DVL$!ho]"-3g.E`<;_5-9)26-BS=_#jhgC3!L]6UB0Hc[13BT[KI'EBF`iE%ZCDm"q%(*"pP92"pP.'!<r`TOTCFHSHU?""ssPJ!K@?'"su;6"t#H5eHc$T-9)2V#,;3i"U5_u*mY#pRfN]tNWkFD"pSe9!<E3("UP//zzz!!rW*!"Ao.!+,d-!$)%>!#>P7!+5j.!5\j=!5\j=!5\j=!5\j=!;uTm"pQ!?!<r`@U&bH&$DIP*"pS$2"p1M""ssPJ!UU)F#UVM8"t#H5Pm-7M-9)2V#,;39%L.(\%N$2j"p1M""pP.'!<skTT`N+:[07m:"pQE:!K@<V!@Bc1-3g4G"pPQ'eKk\8'b1EPGm4H_5h..j%M]HX#'gCW(nq&N%,MHe(5)\h!X]D>#ljr*zzz#ljr*$ig8-ZNU=/5QCcaA.&A;zA.&A;A.&A;oCr=j#'-F="pSh:!<ra;U&bH&!ho]""r<$rjT1nU(,uL&(6JWo!Smnp3!L-&UB-Yc%L,?+"qI1)"pPF/!FGa-mKs.&"pS$2"p1M"D%6aS"qDds"pPp=!<E3L"pt>1zzz!3-8(!"/c,!"Ao.!7h5P!13`d!3-8(!$M=B!#>P7!!*'"!3-8(!3-8(!;cHk"pT+B!<raCU&bH&@\Nl-"pS$2"p1M""tg+R!OVr./iX%>/s-1""m#b;3!Lu>UB(i?SHWR?#)*LV"pPoLeeF,FL)aV+"sBW@"pP.'!<t.\T`LtkjT-tn"pQ]B!W<5Y!A6>9/dA'O%L*+K"pPi."r8$r"pS5)!<EBQ%LaTc#R2@Nzzz!!!<*!!!K/!!(1E!!$m:!!"/B!!!c7!!'q>!!%<M!!"_R!!"&?!!!$"!!%<M!!%<M!!%NS!!%TU!!%TU!!%TU!!#Xl!!"VO!!'q>!!$@+!!"eT!!'_8!!$^5!!#"Z!!'b9!!%-A!!#@d!!'e:!!%ZW!!%`Y!!%`Y!!%`Y!!%f[!!%f[!!%f[!!%r_!!&#a!!%r_!!%r_!!%f[!!%f[!!'>#!<rb6!MTT!#-%]u!<rb&!MTT!"p1M""tg+R!Q>1q#VJ(h"pTFn">qek"pQ]B!Moha"thk>/dA'OPlm<S*eOJ/%_Vlf"pP92h?0VYjqE"E"p1M""tg+R!Mojo%PB^F"tl#=r<D'Y/iX%f#,;27#/(&k!<r`FU&bH&!ho]"/dA!MeH=n6/iX%>/s-25"(a)E"tg+T!=f;<#R1dm!Z_ILEhWRM#)*7Om0=CB"r7EV)b1):q>m;k"pP.'!<t.\T`LtpAM,qp"pTFN#;n+n"pQ]B!JL[$!A6>9/dA'O#2T]3dfBXWg&[oK('^oE(`%60Mug=2"s,Q9"pTJ["r8TJ)&<^S!<r`0U&c&.'c)`/(53&1Mua[u`=PND"p1M""pP.'!<t.\T`MP)eH%9^"pQ]B!JLTG.5!Ra/dA'OKc(X96l(b/(5r8O()Dl1"pTSZU&frQjUqbrm0=CJ"r7uF"_AGRKagOh(+'4i#+u$l!<r`PU&ht0('[JSLB[sP!>YkDGm4HiU&jWd(+oe,(@<.T"pT=H!<EE."r.[T$jm4Ozzz!!!!/$ig8-!!!#i!!!!0!!!!.!!!!+"onW9$ig8;$ig8N!!!!9!!!!)"onW9$ig8?$ig8W$ig8W$ig8h!!!!H!!!!7"onW)!!!!/$ig9cq#L[(Z3$a$"pV(/U&bH&U&q%i"pP92"pU4lU&fuQQ5TB5QiRBq!ho]"2?oiU[/p4-2E1mF2N\$""N:L%3!M8FUB)Ek!<tS#*p"^n"pPp=!<r`0U&bHV#,)'o!egn<3!KRFOTGCbh#TDn"uZ[\!TaG"%X/]M-5MO@"pPhjjTH>/"pP8cU&bH&(-i'>(``eb!ho]"2?oiUXTl0:2E1mF2N\#Oo`d<6"uZ[\!TaG"%L*+A*rZ0U*p"^n"pP.'!<r`FU&b`."ptPEGo[(nGbP3>!<NQ8zzz!!!#]#QOi4!!!!,!!!!"!!!#]#QOke#QOj\!!!!@!!!!;!!!"B"98Gc#QOke#QOl(p]1R')PR6:"qmX2"pPF/!<rb6!MTT!"p1M"#"Afj!UU)n!Cf$Q#"F^UPm-7M7Q:TA#,;2'(']s'(38LX&dAP\U&jBb^)H,UIKg!?49c!:.L$(YU&bHf#,)&l[09#Z"pRPZ!S%FO!_,-R7L#Ug"pQEO!=f;d-5HeD-3aZ_U&cSF##s+Z@2<#N"rO'8!<NH."pk80zzz!,)Z=!,)Z=!."VF!"T&0!#kn<!4;q0!!3-#!':/\!$_ID!42k/!/:4L"pWKVU&bH&aoS4;"pVpFU&bH&##kd2@\Nns'[@K^#nR:F!ho]J"pTF6"uS"m"pQ]B!K@6$">2Y</dA'O(:=ekMuhHRh?t)6m0=sJ"pP8I'F"aYU&bH&!ho]""tl#=75Z\W"pQ]B!Moon/iX%f#,;4\'G^nF!>_dCrWA)[(?H&BMua+e0VSRX"pPD=%N$2j"p1M""tg+R!NcQ+/iX%>/s-1b"-j!A3!Lu>UB(Q'+L;(L!<ifCzzz!!!!*!!!!.!!!"`!!!!=!<<*>!<<*@!<<*@!<<*G!!!!9!!!!"!!!!=!<<*>!<<*>!<<*@!<<,4!!!!^!!!!N!!!"\!!!!?!<<+,!!!!T!!!"^!!!"5!!!!a!!!"[!!!"nq#L[(JcVSH"pTCJ!<raKU&bH&!ho]"##:9]m08gZ:,iF^:6>RR!SmoS3!N+^UB(QGL':Ea#+c#G('ZZD"s,*U('ZB<"s*u?!<sV9!?D@K;PF0r"p1M"##5Ar!VHNM!DYTY##:9]V$'Lf3!N+^UB),7"puCU#"=4f*Zi<%"pSb8!<rb>!MTUl*f^r[&2oOW"sti1"th5<"u[e4"p1M""pP.'!<u:'T`L,To`S#L"pRhb!K@2@"AUo\##:9]o`jdd:,iGQ#,;3:"pS!I#"BpT4pDH#"t#-,"pPp=!=&5u-=Rb8+tcG6"pT>W"p1M""pPp=!<r`0U&bHn#,)(""2uEY3)0Y^H`[CH!DYTY##:9]-&ht$3!N+^UB/=\*[VW(,R-._#6"l49*PS%U&bHFOT?I,#3Z)^!<E3)#n6k7zzz!8mhWz!"Ao.!"8i-!*]X-!4!"5!4!"5!4E:9!3ck3!$_ID!$)%>!*KL+!43.7!4WF;!.jqH"pT+B!<raCU&bH&@\Nn3$^MCU#G;)%##_/r"pP.'!<u!tT`N+8PlsQ9"pRPZ!JLgH#"CQV7L#Ug/iKg7o`57<#+bi:"r8Ni"pS$2"r8,:!?MH;!?U&%*fL+("p1M""pP.'!Cd7tHgLq&!_,-R#"F^Um/u_W7Q:SV7Zd_j#)rjW3!MhVUB1#iSd(2V'a=jp)P%,h'J;@'hZX4R!<r`VU&b8r+9i&dzzz!!!"8!!!!,!!!!.!!!"D"98E'!!!#W#QOk_#QOiL!!!!:!!!"D"98EZ!!!!D!!!"<"98Gm#QOkq#QOkq#QOj#!!!!Q!!!"F"98G[#QOkc#QOke#QOkc#QOkc#QOka#QOka#QOka#QOjnq#L[(@\Nl-#$R`%"pRu"!R;eL%$hrD"pP.'!<r`dOTFhR2)[Du"u_SEPm-7M2E1n!#,;2'#!P9V(*Xb'#-n9(!=f;<$3gt_*<l_2!MTT!"p1M""pQuB!Ccqj2E1n!#,)&d[0ANK"pQuJ!S%GR"#`+C2?ooW/d;N)"pP.'!<r`dOTDip2)[Du"u_SEo`Df.2E1n!#,;2'#)3XR(*Eg>!<ras!MTT!##V)q'c%8`"pQ,6(*;iH,6enfUB(Q'!ho]""p1M""pQuJ!NcD\2E1mF2N\%-"N:U(3!M8FUB(Q'rX1(X#(Q`K!<raY!MTT0((LNi56dSX(*;iH,6e?$U&buE%L*^9"W!$t"pPhj"pRAf!<E0("onW'zzz#ljr*%KHJ/YQFk**rl9@'`\46!<<*"/H>bN)ZTj<YQFk*rV-Bt#&9k5"pSP2!<ra3U&gf'"r9!!#,2-m!<r`0U&bHF#,)(:"B?d."pQE:!JLgH"su;6-3g4G"pP-ISJDDF1Bn%]U&bH&!ho]"-3g.Eh#ZU<-9)26-BS>2!Q>6i3!L]6UB(i/#20(f(7bU@"r7gl"pPp=!>YkD+r1apMZF"d.&$aN"h#/K&7,A>*!R5b'`\46!WW3#^'F]=^'F]=#ljr*$31&+@0?Q1`!?>C_?^,A_?^,A^'F]=*rl9@(]XO9?j$H0^'F]=^'F]=^'F]=^'F]=3rf6\,QIfEB`nD99)nql/H>bNBES;8dKfgQdKfgQS,`Nhc3OCMc3OCMc3OCMQ2(Fj"pPD=%e9ZA"pVpFU&bH&!ho]R"pTG9!Aubp"pQuJ!MohQ"ZA=E2?ooWblZ/n%L*u0"9t=r(*;iH,6e>RU&bH&WWJmq"pP.'!<tFdT`Ltkblfpa"pQuJ!NcCA"u\FF2?ooWblSXj"r?S0(5`+s"r8Qj"rO'8"pPi.(:!rFMZF"dBqbV4"sK]A"pP.'!<tFdT`M8"<Alf@"u_SEAb?6c3!M8FUB(Q'(+0:jHCk3B"p1M""uZ[Z!R1YQ"ZA=E"u_SEK`mA;2E1n!#,;4D!Yu7M"pQ.D!>ZaD"X=3e#,;2'#+5Ld!R;LI(6/et"r7t>"r7Od"pT@I!<r`4;um()O9)9\#mpY4!!<3$!!`K(!2Tl"!)*h%!##>4!##>4!2g#$!)O+)!)sC-!)a7+!)<t'!)<t'!)a7+z!;uTm"pP.'!<r`tM#iS=r<5YM"pRPZ!M'CJ#Y$cX7L#Ugh@'kuUB(Q'()i/5*X85;*n;ASMuiSR*Zc%#"p1M""pP.'!<r`tOTEE*Pm'W:"pRPZ!OVs)"@b?T7L#Ug"pQ[uSHlP?edaYtcN=B@!A6:4"="*l#+bi:"r8Ni"pS$2"ot@u`X2&JrY,qF"pP,9((M/h7fWMhzzz<XJg,C^L.BD@-@DD@-@DD@-@Dli7"cHjTiRHjTiR)#sX:*WQ0?/-Q"R56(Z`,QIfE-3XAL:^R1&:^R1&:^R1&;@3C(;@3C(5RIJk64*\m64*\m64*\m6j`no6j`no4ph8i4ph8i4ph8i5RIJk5RIJkCB+>756(Z`,m=8K:'pt$:'pt$:'pt$:'pt$M#[MU9)nql,R"/J8dYOu8dYOu6j`no6j`noT`>&m=TAF%,6\&I8.#=s8.#=s8.#=s8.#=s9F:b":'pt$:'pt$:'pt$:'pt$`rH)>DZBb;.g5nQi;`iXI/j6I)[-3Ar;ZftLB%;S0EhFV&HMk3OT5@]4p:od3!oWc3!oWc2@9Ea2@9Ea2@9Ea0*)%QUAt8o3!B9^8HAekX8i5#3<]B_>6+^([K$:-/Hl+SDZKh<`;fl<)[-3AN<'"Zc2[hE0a.OWT)eolf)PdN/d24TYlOh)g].<S4p:od])_m3irB&Z49Y]bH3sWPH3sWPH3sWPcN+"Gm/R+d4p:odh#RKUpAb0n/-Q"Rg%k^R#-&'*!<rb&$_dY+#+>po!<r`47)]0:-3aZ$(-i'>WXTsQ#4`%o!M1@('':3(2$P*X"pX&lU&bH&!ho]"#$-ieh#W38<]C:a#,)(R!JLPT3!KRfOTEE(o`8)Q#$(r'!Q?B,-5FcK#0$aI"ssPG!<smV"W[dO!ho]"<X,5ueH8fP3!KRfOTGC_AQCbp<X,<""pXW(XT?rU%NYfah#e.G!=m?X%ZCG%"Vq:H(9IfWMua+eaoe@=`<-ScT)lY/('^!(%Ml_],Lm"S*!T=G#0I%B!=f=I"\6N6%MkZ;"pPi.%MnFD,D?40%\Eb+#4_eh!Q>-N(7tUC"pP_N(;0kr`<-ScT)f-#=eYp$"p1M"#$(r%!MonC"BIJd#$-ie*JFPq3!NCfUB(k\!tL7j%a>.e#e^BW"pPPQjVK-G#4MYf!PJXP"pPjV!u?gr%Ml_[,6eAJ!MTT!"p1M""pS+j!KANc<]C9f<fmF]"K`G?3!NCfUB(Q'Sd.Lj(<$>"eHHF("pP:R!MTT!"r9H6(53GIK`_epT)f-#(-i'.!ho]""p1M"#$(r%!M(6b#Z`nh#$-ieSH?2$<]C:a#,;2/(<$>"eHHF(@Lh2r%ZCDublnT9!<rbU!MTT)(9IfdeHHF("qKGk%ZCDublnT9!<rar!ho]""p1M"<X&bT]a:55<]C9f<fmF-$KV[s3!NCfUB/=9%MkZ;KcASE%M]`h-4L.`!ho]"!Y,MH#5SRF"pPp=!<r`0U&bH&<fmER,+Sm<3!NCfT`L].[09Sj"pS+j!Ncld*EG-(<X,<""pW'OFO_QF%Mcta*X7i0"qCj/!<s%6!?D@KZ2p[#-C#GiMua,0/jPg*-8'?D"p1M"#$(r%!Sn8d<]C9f<fmFM%da9t3!NCfUB(Q'ncO4C"p1M""pS+b!Nctl<]F+a#(*Hbm/g<J"pS+j!Sngq(03C!<X,<"L'3M=XUHEY"pS&7!X9,j%L*+]r>Z:WT)fGs!X=P`"pQNN!<r`0U&jX#V%H1$7\qD#EW$eF7Wnu"#,)&]7b&S*"pR8R!W<AU!BrII4pIb_"st)uboRW9'c$uXGm4HSU&bH&!ho]r"pTG1+#R(Y"pS+j!PJot$W]4k<X,<"#0$oQUB(QG(+0:jJch_J"pP.'!<uR/T`Mh4blh',"pS+j!PK\R$W]4k<X,<"-ES.,>6ZE,5f!OL/oq4$_?$A3"pP.'!<ra/OTFh[SHW%R"pS+j!UU0+%TYOn<X,<""pV4?5R%__!Z_IL!ho]"<X,5uPnI(t3!KRfOTF8MN@.ad#$(r'!<rb5"m5mj"p1M"#$(r%!NdQR"]dSe#$-ieodGeA<]C:a#,;2'"suta-C#Gn"pTngU&bH&!ho]"<X,5uSK>0B<]C9f<fmFM&sXM=3!NCfUB(Q'-;GU/XVi>f#13UK!JLUk%\Eb;]`T%/!<t.t5TZU&#)`Kd##_/r"pP.'!<uR/T`MP.V%-Nc"pS+j!K@]a$W]4k<X,<"%L0lQ!!X2CUB(Q'(+0:jH(k<D"p1M"#$(r%!W<s;<]C9f<fmER)>t[Y3!NCfUB(Q'8EBjV"p1M""pS+j!TaZb!EM/a#$-ieSIiaZ<]C:a#,;4<-6AHV'u^[f2DYOa#+biBf`VM;!<ra1U&b8u$4[[a)@[A\zzz!!!oG!!!oG!!!H.!!!K/!!!E3!!")@!!!`6!!!$"!!!]A!!!]A!!!]A!!!cC!!!iE!!!iE!!#"Z!!"GJ!!!H4!!$"!!!"\Q!!!N6!!$L/!!#%[!!!K5!!%3C!!#Lh!!!N6!!!oG!!!oG!!&8a!!$U2!!!W9!!(+9!<raCU&bH&@\Nl-#$R`%iW9<2?3UUs"JPo$"p1M"#%e(5!OVsA$t_I'#%ituKa@&MAiL!,#,;2G"t"I>dKJY4Es;h`U&bH&!ho]"Ad4q0h#[H]AiKu!As!+r!Q>7T3!Nt!UB(Q'#*&]g"r8*]"s,lB"pRF9SHTdf!@IaW*fL+("t62H"pP.'!=!-?T`M8"blhW<"pS[r!NcR&!G4:q#%itum/rUVAiL!,#,;2_r=L+>!@A!tFXAHs!=kY("th^F*sOVZ"st0i"pP.'!=!-?T`L,V<G"2p#%ituN<?9aAiL!,#,;2'"rMgo"p1M""pS\%!PKoK!bOCr#%ituo`mWl3!Nt!UB*j_&`s@X!CfOB"3hlV7MSAs#'i\($3ish`=,4p!<r`0U&bH&!ho]"#%itur<2KhAiKu!As!+r"3h'_3!Nt!UB+-g&bZ6a!Bp]g-3aZD'F"d3!MTT!"pRI"#'-F=:6c&ZMuhH5#$*ON"U89h"pP.'!<r`0U&bI1#,)(R"I1!>3!KS!OTF8@V#b0f"pS\%!Mp)##A,q"Ad5"27L%EP<X&a4<$n.>(5r9Z&1/_=m0>NZ"u\@DB*JPAU&bH&!ho]"Ad4q0bmK.1AiKu!As!,%-B/OJ3!Nt!UB0`e4r1'tm0?*%#)*4U-D(;C#3c/_!KIf<*ekc8!<E6*O9#qJzz!!!!(!!!!-!!!"9"98GW#QOk_#QOk_#QOjp#QOjn#QOjj#QOjj#QOk7#QOk7#QOk9#QOk=#QOk=#QOk;#QOk7#QOk7#QOk7#QOid!!!!F!!!";"98GU#QOkY#QOl&#QOl&#QOl(#QOi+#ljr,#ljrN#QOjj#QOjj#QOjl#QOjl#QOj9!!!![!!!!6"98EM#QOiM#QOiM#QOjQ!!!!e!!!"L"98H"#QOl&#QOi)#ljrB#QOiK#QOiM#QOiM#QOiM#QOiM#QOiO#QOiO#QOjX!!!#)q#L[(Z36m&"pV(1U&bH&!ho]"#)3/@!UU*Y#)3.<L&hJ_HgM%!!JUV7"pTe_OTFhNjT1):3!P*<#,;4D#+c@F!u2"EDAo&Nr=a'.G$bHC!<raCU&fG`"U:FsDK`,b,6hHYScN.%(+.91<aHLF#&Y?M#GhcF3-K3ERfN]t!ho^5G-(ll#$qM*!F>sO-3aYcU&bH&!ho^M!<raTV$65jL&j7<#)3/8!JLZa!JUV7"pTe_OTB$q#)3.<#)3-_UB/(4G-(ll#6"r6ScN.%-76tA<aHLF#&Y?M#Q4[@3-LVm#+GVt#)WGU!F>t2-Hu`q?53YKDAo&Nm3$:+"pT=H!<r`0U&bIQ!=#4uN<5@JL&j7<#)3/8!K@/g!JUV7"pTe_OTF8>jTC5<3!P*<#,;3Bf)l5H!O`D[XTV,u?3Zu%"pTnbU&bH&!ho]"#)3/8!W<//!JUV7"pTe_OTDQdbm/t(3!P*<#,;4U!d:[K,6hHYScN.%/g^c,##l@5#,hP,#$)Y%!F>u&!FF;!?AnpX"(#:K"pSr`SHmC^DE%h)nH#?bc5*homLrY+##V)q!<WH/#R2@Nz!!("?!!)']!!)']!!)']!!)']!!("?!!$s<!!((A!!((A!!((A!!(.C!!(.C!!(.C!!(.C!!)![!!)![!!)![!!(:G!!(@I!!(:G!!(jW!!(jW!!(jW!!(jW!!(pY!!(pY!!(pY!!!'#!!("?!!("?!!%TG!SRPY"pF2l"pP2?rW*`=NWo[l#HeH+",.*faoRe;mKWt("pP4e'YY'S":#G1%i#+WKa[kg!=%Bh"p'_p'b18j!T"0L#m%1>L'ND?!?1qHrXJrE"pP6O"r7CS"pP3j#_ie[%0O'C^(-_?!sSt$!X$FKQ3+K%"5X0G,1Zo"c49gUh$F2?%0d"=(6/N7"%h>W`WlSO"pP27"qC]Z"qChk"pP27"pP&-!XK2>%0-A.zz#64`(#ljr*Ns,L`+:A/L+:A/L+:A/L+:A/L!WW3#*X_rJ*X_rJ*X_rJTE"rl-NF,H(]XO9zqY1'q#%F;-"pS8*!<r`0U&d.V#(,G42)[Du"u_SEm/ig_2E1n!#,;27*k_S!PlnH!%L*CaPo:5M*k_S!"pP92%L*+EPlhd+"qD]>)A*/X&>B3&(rd,Y%:05C!ho]"2?oiU79)6*"pQuJ!VHKl"#`+C2?ooW"pSMl!<E3H!sel,!!3-#!3-/%!3-/%!3-/%!"&]+!3-/%z!3?;'!:'=[%L*+E"pPi."r7gl"pQ!?!U^>e)Qjp>!<r`4<!EO,U&b`.]ba0C"sK]A!<WN/#R1k@!!!'#!!(d_!!(d_z!!(d_!!"DI!!!N0!!!K/!!%!C!!)'g!!)'g!!)'g!!(pc!!(pc!!(pc!!(pc!!)!e!!)!e!!"_R!!"#>!!%$D!!*&o!=f;<$3gtQ*<l^gU&bH&!29Ju"pS%m*VLJM&4Qj.!ho]""tl#=[/oXr/iX%>/s-0o"N:Kr3!Lu>UB0HW#4;jT('XtgD&*lk(((8(!<r``U&h)"('Xu.'G_H!m0=sJ"pP8I'TN>4##tj30VSRP"p1M""tg+R!S%9P/iX%>/s-25"(a)E"tg+T!<r`Nli@+g"cr`k%0-A.zzzz$NL/,%0-A.Gl[mFoE#!m*rl9@)#sX:HN=*Hp]:EqquQiuq>pWsp&Y3op&Y3oq>pWsJb]<N"ra3:"pP^7!<r`8U&bH&!ho]""p1M""pRPR!OVt,"\(HU7L#Oe[/mB97Q:SV7Zd_:"iUU63!MhVUB-)[%L*sY"r8,:!?MH;!<r`0U&bH&!ho]"7L#Oe:!Ef13!KRVOTEu;V#j+G#"Afl!?S?X*m"HU"!/Ku"pQ[uSHm[g/iYbe"9t=r/iKg7,6f1nScKl:(+'4i##sFa[L%s,.00GP"UY50zzz!!rW*!"Ao.!,)E6!$)%>!#P\9!,2K7!7V,O!7V,O!7V,O!7V,O!':/\!$_ID!,)E6!/:4L"pQ!?!<r`@U&bH&$DIP*#"kTj"pP.'!@A!THc6,Y"XZ25"t#H5Pm-7M-9)2V#,;39%L*+AV@%nU*<l]bU&bH&!ho]"-3g.E:#,gs3$nh6HVL%7-9)26-BS=g#2K;,3!L]6UB(Q'%RAPjh@0ta!=f;<Gm4H_5h..j%M]0P!ho]*"pT>W"p1M""ssPJ!L3eq"su;6"t#H5Ab?6S3!L]6UB(Q'#,;4%*PMU#)+O]2":>2='F5'Hzzz!!!<*!!!]5!!'tA!!%rc!!%la!!%la!!%la!!')#!!!'#!!"qX!!"2C!!'k>!!%]J!<rbF!MTT!#.ai0!<rb6!MTT!"p1M"#!N6b!Ta?i"[4mM#!S.MV#fBU4u`a1#,;2'"r9Yp*>TD*`?Zc?T)f-#!ho]""p1M""pR8J!Smd1#X13P#!S.MN<]%V4u`a1#,;3a"stZ3`XVA>#+GW7-3an`"r<!q"pQ9G!U^6]&b["V%L*+E"qCt\"pPp=!<r`0U&bH&5)B<*"T8Kf3!KRNOTB%d#!P!N4pIb_:'Lo%!<<6+z!!!".z!!!!#!!!#A!WW5`p]2!3"otM)^&k_Q!!3?/!!\Ga"p"q"$\f)kNWfX<%fl_6"cra.&MsIfzz!!`K(!!rW*!$DIG!(%(o!(74q!(I@s!(I@s!$)%>!#,D5!<*-%!<*?+!!!E-!!3Q/!!Wi3!!iu5!!iu5!!iu5!([Lu!'Uek!'Uek!)*e$!)*e$!(-_d!%IsK!#l+B!'Uek!'Uek!'Uek!*oR)!&OZU!$)7D!)*e$!)<q&!)O((!)O((!:gKt!;Hp%!;[''!;[''!.+\G!(Hqg!!EK+!&b5c!&b5c!&tAe!'1Mg!'1Mg!)*e$!*0L.!1a)i!*'"!!!EK+!"',7!"KD;!"989!"989!)a4*!)s@,!*0L.!)*e$!)*e$!7UuK!5\I3"pVX@U&bH&Z3-g%"pP.'!<ra_!KdE="l0?:!B:8fL&mD;m/ig_L&j7<L&hLR!M'JG&'bPB]`s`1:,mYZ:,o@'Ka1@4"pT+B!<r`0U&bIQ!=#4u`<PE*L&j7<#)3/@!K@<V!JUV7#)3-_UB/mjN>sPmeL$7c/i_)rV'@TPh':_e/iX%>2B%PU4pIV[51Lc>Mua+eOoqEZblaL?:,iGA#+biZ"r8Ok2Ehi[#,2-m!<r`0U&bH&L&mD;blQW(L&j7<L&hLP!R1Z<!ep_8"pTe_OTEE)o`U!M3!P*<#,;2'4pISZ4pE>\>rFk]"pUA$D$C1UU&idi#$s+9-3e'<boI"+1Yj8[Fu'=L<aea(]`]Pa#,)'l!<ra')P%-3%8Jmr#*fTl3!KSE!ho]**X8PD"pQCm"pQ[u"pSb8!<r`0U&bH&L&m,3PlZjIL&j7<L&hLP!L3\^"bm%;"pTe_OTE-#r<.iU3!P*<#,;2'4pISZL'@i?C^i9d'a=k;)P%,X-;HNI#$(a/#4V_g!Bp]/-3aYY<!EO.U&bIQ!=#4ur<MusL&j7<#)3/@!Mp'm!ep_8#)3-_UB1#i5!B\c##6hB#H\Y73*%sBRfQ8bXTTjQ#3c/_!IZh#33=Q^#>R8'".]Tj3!MPNScK$"R/s#_NYdEONZSc9#/LA8!<E3H":5&.zzz!*0("!"/c,!"/c,!!*'"!+Z34!+Z34!+l?6!+l?6!:fgb"pQ!?!<r`@U&bH&$DIRp#keYg*)m+H!ho]"*X8;=`<<RP*]O?.*g$Jg"m#b+3!LE.UB(i/"ptP=()[;l&fhGd]c0HG"p1M""pP92!<WH/$3q7Fzzz!!"tf!!"tf!!!H.!!!Q1!!&Po!!#+j!!#+j!!#+j!!!'#!!"ML!!"&?!!&)b!!"tf!!#:b!!">G!!&/d!!">T!!"8R!!",N!!"2P!!"2P!!"2P!!"2P!!&)U!<rak!MTT!#)WGU!<ra[!MTT!"r9H.(<QXu"pP.'!B(,dH]84e2E1n!#,)("!OW(h3!KRFOTC.A[/i0F"uZ[\!M'7o$P!@F"s._!*rQct"r7E<!<r`D-O'cYU&b`."ptPE(``eb(-iWP#)`Kd"p1M""uZ[Z!S%9P2E1mF2N\%="(aAM"uZ[\!<ra3$3g\=<!EO.U&bHV#,)'o"bd4?3!KRFOTDipK`j:n"uZ[\!M'6,%X]=q!sY4q(*<Dg,6e?TU&gec((LNar=g$+!<r`D-O'cpU&k68V?3=kDZL"e+9E)W#93^Dzzz!!rW*!"8i-!)EXr!!3-#!.Y1P!.Y1P!0dTd!1!`f!0dTd!0dTd!%@mJ!#kn<!([.k!.Y1P!':/\!%@mJ!'pYd!/(IT!/(IT!/(IT!*]F'!&jlX!(-ef!-%u=!'pSb!(6kg!/^mZ!/^mZ!/q$\!0.0^!0.0^!/:UV!/:UV!/:UV!/:UV!3Gts"pS8*!<ra+U&bH&8tl=j"p1M"2?jA4jT.4s3!KRFOTD9Zh$#\r"uZ[\!L3cd#7^qR%_Vlf"pP92%L*+E"qCt\"pSh:!NlVB##-/*!X>+p('Xtg"pPp=!<r`0U&bHV#,)(j!egn<3!KRFOTEE*75d+02?ooWD&+JY!>YmQ!Cm=u(nq$8"p1M""uZ[Z!MotE"?&4D2?oiUo`W5^2E1mF2N\#OXTg[C"uZ[\!>Ym:#oFG#(36f-"s,Q9"pUb%"pPhjD&*Tc('_Gg7g91G!MTT!"p1M""uZ[Z!@<F#2E1mF2N\$:#MfG>3!M8FUB-?#"su-c,mH!i!>Ykd#8RN_&4Zp/!ho]""p1M""uZ[Z!NcIS!B)nA"u_SEjT<+#2E1n!#,;3Q)&<uk(6'XVMubdO(6&>1#)*7Om0=CJ"r7EV)b5SejUqbrh$&KA##b^1QiWo^rX8uH<Yk?7(5r9R,mGDH"pXSuU&k6#<qZqH!<ET5$NL/,zzz5Qh&e$NL/,$ig8-+T_WD4obQ_5Qh&e5Qh&e5Qh&e,6.]D)#sX:!<<*"2#mUV*WQ0?+9DNCJGB3M#(!!E"pT+B!<raCU&bH&##kd2!ho]"/dA!Mm0;)C/iX%>/s-1""m#b;3!Lu>UB(Q'[0"#B"pPp=!KIfL"hk1I"pQ3E!>lRnEs;hhU&bH&!ho]""tl#=o`CZf/iX%f#,)'W#IO[e3!KR>OTEu;r<"Z3"tg+T!=f;<$5Ul%Q33'Hjou#2BHGD6*fL+@KcqLr!<raIU&bH&BVGM.$$BNJPlXmH!K7&8!Ds(;zzz!!!"*!!!!,!!!!,!!!"s!!!!s!<<+#!<<+!!<<+!!<<*C!!!!7!!!!"!<<*"!!!!S!WW3#z!!!"$!WW4&!WW3^!!!!Dz!!!"8!<<*"!!!#a!<<*"z!!!"Vq#L[()PR6:"qmX2"pPF/!O`+0#NcnG"pP.'!<tFdT`N+8eH%Qf"pQuJ!L3iM!B)nA2?ooW%Yk,jRfVUu('\:jmfiuc!=%X5*Y8M[C8(_5"p1M""uZ[Z!DW4j2E1mF2N\%=#2K;<3!M8FUB(Sl-QWi>"WlJ=klD!J$Q]l*!Zo#m63[VqU&bI`+<D'u"pS$2"p1M"2?jA4Pm$IU2E1mF2N\#Oo`d<6"uZ[\!S7CU$/H@`#/(Zk&GHAM[1GY/PpII_VZn3u'1)m-GbP3C"sBW@!<SblT`G<*zzzz!!!!,!!!!,!!!!"!!!!A#ljrJ#ljrJ#ljr.!!!!C#ljrL#ljrO!!!!:!!!"_"98H!p]1R')PR6:"qmX2"pPF/!<r`0U&bH&!ho]"-3g.E`<:l#-9)26-BS=o"m#b33!L]6UB(Q'#+#@-('`Rq"r8C'"pPF/!M0_N&4R]F('^N7('Xse"pP.'!<r`TOTG+V2't9e"t#H5V$'L>3!L]6UB),?#"8_#*]sW2SdR"K"*Fc%%OhAXzzz!!iQ)!"/c,!"Ao.!:^3m!9=Lf!9adj!9OXh!8Iq^!8Iq^!9OXh!8Iq^!8\(`!8n4b!8n4b!&4HR!$2+?!2B\t!(mV!!)<n%!)<n%!4WC:!4iO<!5&[>!5&[>!)3Fn!%\*M!8dq[!5JsB!5o6F!5o6F!+>j-!&afW!9"(]!4WC:!4WC:!8Iq^!8Iq^!-\DC!(-_d!5Ja<!/(^[!.kRY!.G:U!.G:U!4WC:!4WC:!)s=+!1*Zc!)ERp!5A[;!3u>#"pV@6U&bH&WWAgp"pUe&U&i7Med.QB;$I4+U&f-9#(-:Qm07Gf#&XX=!W<4f"E$1'#&]P(Pm,,0DE%i<#,;3IXT;H^bl`Y*<]FEH#6pXu<k\YfGQpVAScM:b/g^c,##kd2<Z7M6bo]tG]a!R.<]C9f+JJl@"p1M""pSt%!S%;N"`?:(#&]P(r<$VK3!O7)UB/XN%L/[/"s*uD!A687Vu[),_?-G4"pS*HSHo*6<]IbsSHW%R"pP.'!<r`0U&bH&DNOtE!Ta?"3!KS)OTD9^V''Y8#&XX?!I^LA`W\?H".]Qq3*sW,#+GVt"p1M""pP.'!H&)GHTga#DE%h)DNOsZ"W_J?#&XX?!EP3g/L(Hh#+bib"s,*s%Rq0;#+,Fc!<r`0U&bH&DNOtE#NYu(3!O7)T`NCCjT9<Z"pSt-!K@0R"`?:(D?cj:SHlP5^'U5/?H3'NRfQPrXTTjQ7L#Fb7Ks>L>n0=="pTkbU&dHE"9t=rN<)KYT)hE`*_)(ho`IZQ'a=kC)?pDF!MTT!#.O].!<E3&"U4r,!!<3$!!`K(!)!@n!13lh!13lh!13lhz!"&]+!:KU_"pP.'!<skTT`L,USH:,t"pQE:!M'CJ#UVM8-3g4G[0"#B#*o8o"qEnp+q>(t%L*,_"pP92Sd+$[h@#eR"pP(%!<E0*"onW'!rr<$#64`(!<<*"FoVLBFoVLBFoVLBFoVLB(]XO9me?ee"p1M"2?jA4SHeH_2E1mF2N\$2"bd4?3!M8FUB),7"ptS6"J,uu%L+7,('ZB<"s+gMmM,'jL)6]f"pP(%!<E3Y#7UY5zzz!<*B,!<*B,!%n6O!"T&0!$;1@!.P1Q!'pSb!%%[G!!*'"!;Hs&!;[*(!;Hs&!;Hs&!*9.#!&OZU!.P1Q!1*E]"pXW!U&bH&l2dU["pX&fU&bH&HD1Ee"pQ:>$f2@OCBatEU&bH&2N\$B!MofT3!M8FT`N[K`@*W("pQuJ!K@5A"u\FF2?ooW[L<B>")f4b/g_nL"qN%-`<m1]"qmX2*X3r<"pP^7!<skX*<l]bU&cS`#)`Kd"p1M""uZ[Z!PJP72E1mF2N\#/eH7]h"uZ[\!<raKc2e+R!ho]"2?oiUm0'ft2E1mF2N\$J#DE:=3!M8FUB(i/"q$@k('[JS`rcO8!>ZFlec>sZ!ho]2"stZ$-E$qc"pQcU!<r`0U&bHV#,)&<<Alf@"u_SE`<V(t2E1n!#,;2'-3g4G"pQ3F!<E=3<KI5)$Y'/:zzz!!rW*!#5J6!-A2@!'UA_!9aC_!9O7]!9O7]!&X`V!%@mJ!.=hI!;6Bm!;6Bm!;6Bm!;HNo!;HNo!9sOa!#bk<!!E<&!!E<&!!E<&!!E<&!:0[c!:0[c!:0[c!:0[c!:Tsg!:Tsg!:Tsg!:Tsg!.+\G!(6ee!-nPE!/ggW!(d.j!."VF!0mNa!)`ds!.k1N!2fes!*K:%!.t7O!;$6k!;6Bm!;6Bm!;6Bm!5/@4!+c-1!/COS!6kKD!,;K6!/LUT!#u">!#bk<!9sOa!9sOa!8dbV!.=hI!.FnJ!;ult!/^aV!/(=P!#GY9!07*[!.4bH!"8l.!"8l.!"8l.!"8l.!%@pK!13`d!.OtK!&FWU!1a)i!.Y%L!!30$!!30$!!30$!:g*i!:g*i!:g*i!:g*i!)!=m!4`(0!/LUT!-J;B!5AL6!/U[U!#,G6!#,G6!#,G6!9sOa!9sOa!:0[c!:0[c!:0[c!0I9^!71]G!/:IR!"K#0!"K#0!"K#0!"K#0!;HNo!;HNo!;HNo!;HNo!!30$!!30$!!E<&!!E<&!4r73!94%Z!.t7O!!iT*!!iT*!!iT*!7(ZG!:'Ub!/1CQ!8.AQ!;HNo!-\DC!:Tsg!:Tsg!:Tsg!;QWq!!E<&!/^aV!#>S8!#>S8!#>S8!#P_:!#P_:!#5P8!"]/2!/(=P!"&`,!"&`,!;-*g"pV@6U&bH&WWAgp"pUe&U&c#Z#)`Kd#(!!EKc_'G's.oL-8PiA#+bi""rO'8"pP.'!EKC/Hi4.+<]C9f<fmFE!NcB'3!NCfUB.Luc3X\g(6p'ZMua+e(7bK.*#9$V!<r`VU&bH&$DIQ]$18;3(/kDAg'XPT]aG;ST)f-#8>6+h"p1M""pS+j!VHYn!EM/a<X,5uo`k'l<]C9f<fmFU!lY=D3!NCfUB0K\#3H;^!JL\0#+koKN<q4r!A;Uu/rTf`eH.@^!@A!TI3'`c![@mRWW]$s/sQYoMub70#(7O>Pm8O?"st`&#3#f\!<s;T-O'bZ<.tK.#+koKN<q4r!A=$i/rTf8#-%]u!A9oh/rTfX"pTJs-ClG-"pUM(U&cmk-n^GZ-3a[&*[],[,6e@H#,2,&"p1M"#$(r%!R1kg-rr;3#$-ie]a+36<]C:a#,;2G"pP\]-Ckep`X`8#."qgW*hNHcSI[?3!@A!TI0Kn-!MTT!"p1M""pS+j!So#d"]dSe#$-ieN@CtK<]C:a#,;2OSH5#bMub70#(7O>SH0u'$jJ%,K`s(5T)gR(#qh/;0(gGAMubQ%$8.8<-3a[&"pUM%U&c;^SIZs""9p2$K`s(MT)f-#a9&(:"pP.'!<uR/T`KiP`@+bH"pS+j!S%J#$<B+j<X,<"-3a[3!?NT<(*h*0"staP"YL"O!A9WD/rTf`'eYFG"pWKXU&clB#+GW?/tECq"r7E7!<rbt!ho]""p1M""pS+j!L3qU"]dSe<X,5uPmGV;<]C9f<fmEB'AXd33!NCfUB-AX"staP"YL"O!A9?<SdfiqblTMV!@A!TI3'`[![@mRZ2p[#"pP.'!<ra/OTFhMPm(2J#$(r%!UTp4"BIJd#$-ieoa\)-<]C:a#,;2Oh%e3?h>o7"-n^GZ0'*p&Mub70#(6[[q?N_qK`s(5T)gR(#qh/;0(gGAMubQ%!A9<3"pV(1U&h\4"stb3$SDXU!A9oK/rTf8#,23o!T!n_-7FQO/fpVc0(fr3Mub70#(7O>obA_F"9p2$K`s(MT)gS;$8.8<-3a[&*[^Oe,F/W?-7CLs"V-Il"pVpHU&iOI"staP"YLjg!A9oV/rTf8#2fTX!<r`0U&bH&<fmEb+.WU:3!KRfOTD!^h&fZW#$(r'!<r`0U&i4Sm3/&33X/%\*Q8Km7PdL@#)`N4-jE-s7YMXJEJ5T+7Wnu"#,)&]7dU^2"pR8R!PKfH#X13P4pIb_-3a[&*[VUHV?I/N."qgW#+koKPp7o?!A;n@/hA=R#(7O>eJ]\#"9p2$K`s(5T)f-#aoe@=(=iWnBa+b_)NG(--7FQO/fpVc"pU_&U&bH&!ho]"#$-Q]PpDUu<]C9f<fmF-#aHi>3!NCfUB.5&SHCL'!@A!TI3'`+"!`O1"staP"YL"O!A;n</rTf8#3Z5b!A<I:/rTfX"pTJs-KP@T"pW-LU&cSF#(7O>eHI23%L+7."pTS[U&bH&!ho]"#$-iejUn<i<]C9f<fmEB&bQN43!NCfUB)D_SI-Uu%gL#T."qgW#+ko##0@(D!A;&,/rTf`h$bop!@A!TI3'`k$mPr\i<>qV"pP.'!<ra/OTFPNV#aUV#$(r%!Ta[]"BIJd#$-ier?0&u<]C:a#,;3j"9ujS"bd+4*hNHc[2glY!@A!TI3'`C*@'tW"staP"YLjg!<rbD"/5f#"p1M""pS+b!OWc0"]dSe#$-ier=?:b<]C:a#,;45$agR!Mub70#(7O>[1OX;"XXGG!@H><-B%sH-Ij.^"pQCm"pWEYU&bH&!ho]"<X,5uV&#=!<]C9f<fmF](sNFh3!NCfUB)D_jVS!;#6lM'K`s(5T)f-#klRR[!<E?.)?9a;zzzzdJs7Ie,TIK%fcS0'EA+5?iU0,_>jQ9^]4?70)ttP)ZTj<@fQK/dJs7IdJs7Ie,TIKe,TIK5l^lb.KBGKAcMf2c2[hEbQ%VCdJs7IdJs7IdJs7Ia8c2?`W,u=bQ%VCbQ%VCbQ%VCbQ%VCQh^Xd"tH>J"pQ9G!<r`HU&bH&&u#C2"qD=O"pS$2"p1M""pQ]B!VHJa"YMbe"pTGI!M'BH3%bC>Hdr@l"YMb="tl#=N<K1a/iX%f#,;3Y!KIBhT)fFu"qHRmr?(/(Q3.j+"s+\R#DEX/3!KQs'TE,'#+ko+h$4FK!W=)M%M]0P*Z>4eU&gthr>uLZ'a=j`)P%+m#Tbr0"sBW@"pP.'!<r`\M#kR#SHUW*"pQ]B!Q>;7"YMb=/dA!MV'+k$/iX%>/s-1B#OMXH3!Lu>UB(Q'*ZCRS[0Rfl"pPPON<'LnT)kekV$<4mMua+eT`LkgSHk])*]O?.%MXm'%L/O+%]'@>Muil!%Ls3X#-e3'!U^r))'4))!sf)6"q(D2zzzz!"/c,!"/c,!!*'"!."qO!."qO!."qO!(6ee!."qO!$_ID!$D7A!58R9!.t"I"pQ!?!<r`@U&bH&$DIP*"p1M""pP.'!<t.\T`N+8Ka9:j"pQ]B!L3iM!A6>9/dA'O%L*+ED&*<c"r7gl"pQQO!R:eM"P+2W"pP92m0=sR"pP8I'F"abU&bH&!ho]J"pTGA"#V\j"pQ]:!G+,@3!KR>OTEE*N<_'q"tg+T!Tb$H!=k_&XpM39(5r80jUW,c!>`'V(5r:E,8M%0"pTSYU&b8p"UP//zzz!!rW*!"Ju/!9+.^!5&:3!$M=B!#GV8!9+.^!!3-#!5o6F!5o6F!;uTm"pV@6U&bH&WWAgp"pUe&U&c#6"sO6U!ho]""t#H5m05Ep3!KR6OTC^NjT-\f"ssPL!L5&;p'rk_"rO'8m3;fN1Bn$jU&h\7L)'+_+r2""MZF"d!ho]"-3g.E9iWN""pQE:!S%FO![]l2-3g4G"pQ2Q%L*+E%MkT=&I'"R*<l^UU&b8s![86WziqNNY"qL\5s8W-!rs&Q,!Y,hCziqNNY"qL\5s8W-!rs&Q+"cr`l&-)\1zzzz$NL/,%fcS0m/m=gg]mfZh?O#\h?O#\h?O#\h?O#\i!05^j9GYbiWfG`h?O#\h?O#\iWfG`r:g9s"ra3:"pP^7!<r`8U&bH&!ho]""p1M""pRhb!W<5i!_t^M"pTG)#GhGr3)0Y^H`[<+:,iF^:6>RB"cW^]3!N+^UB(RZ!sYM$"pV49)N=cp!=#.s-ES"0MuiSR-70H3"u[Bj#Q6&/3'P([#+GWO5-4r4"ssPG!@A!l-3aYY<43+q(QKT6!<E0)('"=7zzz#ljr*(B=F8k5bP_0`V1R*WQ0?joGG^56(Z`.0'>Jk5bP_<<*"!1B7CTjoGG^B`J,53rf6\k5bP_bQ@hFbQ@hFc3"%HciX7JciX7JK)blO8H8_jk5bP_PlLda;?-[sjoGG^VZ6\s=o\O&k5bP_('"=7\GuU0AcMf2joGG^!WW3#d/X.HEW?(>jT,>]bQ@hFbQ@hFf(f=N#-%m%!<rb&#,2,&#+>aj!<r`0U&bH&/r9Ug"uS"m"pQ]B!K@:@/iX%f#,)'W#)+HX3!KR>OTD9Z[/hm>"tg+T!TjmsScNmJ((R/A"r<@)*<l]LU&bHN#,)&l<A$68"tl#=eH_oP/iX%f#,;2'#$Td_"pP.'!<t.\T`N[GXUd$D"pQ]B!W<+3/iX%f#,;27%M&.4"r?n7S,jDM-PhXA2&6se!<r`FU&bH&!ho]"/dA!Mm0$EA3!KR>OTC^Mo`Qm,"tg+T!<rb>!JLOY"p1M""tg+R!Smh5"thk>"tk`5h#]Gd3!KR>OTCFDo`m*/"tg+T!QG/M!=!lT#"#$b"pP.'!<t.\T`KiKK`Nec"pQ]B!@?h0/iX%f#,;4t"U5aq!<r`@U&k2r"r9!!#.O].!=fkTTE,N,(+'e$"sO6U!ho]"/dA!Mr>q4D/iX%>/s-1b'pSeP3!Lu>UB(Q7h?DL3(<n3BMua+e8tl=j"p1M"/d;N,h'=j13!KR>OTCFjXW&lP"tg+T!=#,"ed.cH(<n3BMua+ea9&(:"pP.'!<t.\T`N[Nh$,Jk"pQ]B!M';"""lP;/dA'O(?#8uJH5rZ\H8K+SeSUNSc_[k"p1M""tg+R!K@W7">2Y<"tl#=N?Z%H/iX%f#,;27bpO8-2&6se!=fk\$jIKg!Z_ILEhWRE"pPD=(6/lp!>`p-(5r7u"p1M""pP.'!<r`\M#i;I2(gim"tl#=V%0U</iX%f#,;3j!Yu8A('Y6q"r?n8S,ifuaT8+:"pX#fU&b8r#RgnFzz!!!!S"98EW"98E0!!!!.!!!!"!!!!>!!!!3!!!!:!WW3Y"98EN!!!!<!!!!;!WW3Y"98E["98EW"98FPq#L[()PR6:"qmX2dK(+)Es;hpU&bH&!ho]"/dA!MXT>g4/iX%>/s-1:!UTq@3!KR>OTC^N`<7eQ"tg+T!=f;<$5Ul%%ZCFc"U:P$irL4G(*8D8*ebaYMua+e&>B10##_/r"pP.'!<t.\T`OffXU-U>"pQ]B!Q>73/iX%f#,;2'(']'h"r8Qr#1Wo!"pS5)!<r`4</(YW#3H%J!<i`?$j7=N&c_n3zz[L*!7[L*!7$NL/,$NL/,!<<*")#sX:('"=7=Tnd*0)ttP)ZTj<=p4m+3<0$Z,QIfE>Qk*-\dAE;\dAE;]F"W=\dAE;[L*!7[L*!7<r`4#1]RLUHNaBL2uipYoEkQuoEkQuRJ?jf"ra3:"pP^7!<s$s"!%RM\cJN+"pP.'!<tFdT`ONbjT.8!"pQuJ!L3iM!B)nA2?ooW%L*.7!L3a&"pXH"*Y&AY"p1M""pP.'!B(,dHee_i!]E"B"u_SEXT?BF2E1n!#,;2?c46*X&JcG$!@*j3()@,A#9F?Z*ZgRb&JcG$!@%dQ&>B10"p1M""uZ[Z!VHYN#W=XH"u_SEm/t<22E1n!#,;3a#8SX3(;1\'Mua,((+5@P(+'4i"p1M"*hNZARfO9G]c87$"p1M""pP92"pP.'!<r`dM#i;22)[Du"u_SEV'(a$2E1n!#,;3a#8SWj"s+gNrW4.S*$YXl=eYqg(T%M9##b^I(-i'>E?,5fEM<I7!sT)6$5EO@zzzz!"/c,!"/c,!!*'"!#Yb:!"o83!3HG*!%.aH!#kn<!3ZS,!*fs5!*fs5!*fs5!'^G`!%7gI!3ZS,!"Ju/!*fs5!*fs5!*K:%!&=NS!3cY-!+HB;!+HB;!+669!*fs5!*fs5!-%u=!'gMa!4E(3!2B8i"pQ!?!<r`@U&bH&$DIP*"p1M""pP.'!<u:'T`ONbXT;0V"pRhb!L3iM!DYTY:'RHo"qCj_!?Rd4%ZCE0ockN:!<r`0U&idJ-3aZ$h#f!_!O;bJ-?B@q8tl=j"p1M"##5Ar!Cb69:,iF^:6>SM!W<*q3!N+^UB*9,,q`1%2VJ0P"pQ!?!Tb4@%L+74#,hP,\cEiY"pP.'!<ra'OTD9^Ka:F5"pRhb!PJQ:##7,^:'RHo2OsjYMubi-#F5[T!HL(FEs;geU&jBoh?<NR%L*+A6j<j)U&bH&!ho]"##:9]h#`99:,iF^:6>S%!VH[m3!N+^UB(Q'jpW.lKdA@1!B*-4#9u,2"sP)mO9'A+#'$@<"pP.'!<u:'T`M7t[09;b"pRhb!TaBr#>R5_:'RHo"r88K!=f;\-3aZ,49c!2.KKSP"pbD5zzz!!((?!!!B,!!!H.!!!$"!!"#>!!!c7!!&ns!!)fh!<r`HU&bH&&u#C2"q%(*ee@HfrY&cG"p1M"#!N6b!W<5a"[4mM#!RkEXT=sr4u``N5*5l2"iUU.3!MPNUB(i/"q&$W('^B34pE&T-4U6<!VI$O-5?^h!ho]*"u[eL-3an`"r<!q"pP92"pQ3E!<E0.(]XO9zzz495E^495E^495E^%fcS0%KHJ/SH&Wi*rl9@'`\46!<<*"/H>bN)ZTj<RfEEg3WT3\495E^495E^56(Z`-3+#GSH&Wi4okW`=o\O&;ZHdt0`V1RT`>&m6id8fB)ho33rf6\SH&Wi7KEJh7KEJhI/j6I8H8_jSH&Wi495E^495E^495E^Y5&)&#&9k5"pSP2!<ra3U&dHK#<%MA[32aW5$A-pRKT>c5,&&^MZF"d!ho]"<X,5uN<WB`3!KRfOTD!W[/j;f#$(r'!<rc)![\*U!ho]"<X,5uV#mIo<]C9f<fmEb!Q>7D3!NCfUB)\G"pusec3YpP"pQsi"p1M"/flX<!<tFdUB(Q'\cJN+4pEnl"ubHB*<l]bU&bH&!ho]"<X,5uK`q&R<]C9f<fmEr!j)Z-3!NCfUB(ig(,lF%0VSRP#,2-m!WF+b"Qfl!"pP.'!<uR/T`M7sjU>0L"pS+j!UU$/#?Eeg<X,<"h@2XQHp3f>5)]LH#!SRY"pP.'!<r`0U&e:!#()%*N<E9A"pS+j!JLR9!`h8b<X,<"-3cX\"su#E"pX;mU&d.V4siGt"sO6U!ho]r"pTF>!M'Bp3!NCfT`LDZh#UP9"pS+j!NcIc"]dSe<X,<"]bSNf5.(D,##6KL4pISZ"pW]\U&d^fV@<Yt"pQtT/ti=M"pV:5U&b8u<DdlBK`MZ:zzzz!!!"R!rr=W!rr=Y!rr=Y!rr<7!!!!3!!!"Z!<<*I!!!!<!!!#=!<<+]!rr=]!rr=]!rr<c!!!!F!!!"V!<<*:!rr<@!rr<@!rr<h!rr<f!rr<b!rr<b!rr=S!rr=S!rr=S!rr=0!!!!W!!!#F!<<+o!rr=o!rr=e!rr=e!rr=e!rr=e!rr=g!rr=i!rr=k!rr=k!rr=R!!!!i!!!#9!<<+c!rr=e!rr=f!!!!r!!!"Z!<<*D!rr<b!rr<b!rr<b!rr<b!rr<d!rr<d!rr=o!rr>5q#L[(l2dU["pX&fU&bH&g&[oK"pWKVU&geibo9\C]a"E=<]GMu"]dSe##_/r"pP.'!<raGM#j^ZPm)%b"pSt-!Smp=#&ZC)D?cj:[K:S(MubO8"u\@D^'=cF#/UJ:!<r`0U&bH&DNOsZ#NYu(3!O7)T`L,XjT9<Z"pSt-!VHKd!cBt%D?cj:XXAf-h@K,W?H30QRfQPr/L(H(Ooh?Y"pP.'!H&)GH\DTn"`?:(#&]P(]`P;?DE%i<#,;2'rWEG#!?NQlVu[,%"th>/#!em`?CqE+RfQPrXTTjQ7L#Fb7Ks>L>n0=="pS*H"pQ3E!<r`0U&bI9#,)&\jT9<Z"pSt-!K@7'DE%i<#,;4D".]Qq%:4en#+GWo?7dB+7L#Fb7Kt1d"pX>nU&bH&<Z7M6r?>9%]a"E=<]GMu"BIJd#)NAT!<r`0U&bH&DNOt%(7bYI3!KS)OTEuIPlYb^#&XX?!<u!tScM:b*[Y/&NWg.%#'lpD"pP.'!<raGM#luMKa;QU"pSt-!OW'd,]5RGD?cj:L("7j2EpR5#+GXQ!Ce-&!Cimi7Z7B@"%G`p"pS*HSHl8;<]C9f^]L52"pP92h>s2[^)h7p!!!0&zzzz!!!'#!!)3W!<r`HU&bH&&u#C2"q%(*"pP.'!<r`4<1X`Z&r%Ds!<WN5!Y#\@zzz!!!<*!!!E-!!&5f!!!r<!!!i9!!&Gl!!"DV!!"DV!!"qX!!"SN!!&;h!!$:)!!#1_!!&8g!!"DV!!"DV!!%WO!!#Lh!!!$"!!&,]!!#[m!!&2e!!"nW!!&Pi!!#su!!&5f!!'&"!!$7(!!&8g!!'b/!<rc)"/5f##4_kj!<rbn"/5f#"p1M"#%e(5!Ta?9#\H%##%ituV#fBUAiL!,#,;4\)C>qD/iEp4!=!![#mLSt49c!:.L$(YU&bH&As!*gKa;9M"pS\%!NcCA#%fh!Ad5"2"r8ON%L+O4('aI@-3aZ^U&cSFU&f9=#+>Xg!<r`0U&bH&As!+r#2KGp3+`@!H^+`)"_K^u#%ituN<f+\AiL!,#,;3q)O:js'u^UdXp-Zd4pISZ(-XnaV&Bh5'qGR6<\jqL#+bi""p1M":?<BPMucCC5#MRhW<&^o"pP.'!=!-?T`I=$"D0Ut#%itu4bX/R3!KS!OTEE+*G.88Ad5"2533]c"Gd'_5/71>"pP.'!=!-?T`M7t<G"2p#%itujT<+#AiL!,#,;2'#-n8b!<r`46j<j7U&bH&!ho]"Ad4q0r>r'AAiKu!As!,E'pSf33!Nt!UB(Q7#!OC,,7]Y5eHIQ0"tn^6/rTgM-8'?D"rO'8mL?$6c4Y7("p1M"#%e(5!OW,3AiKu!As!+j#b;$/3!Nt!UB(Q'YlUg)"pP.'!=!-?T`L,lblhW<"pS\%!W<7o*G.88Ad5"25+Mog]`GnL4t^m\#1*CF!<E0&"onW'zzzzHiO-HHiO-HkkG/_"ra3:"pP^7!<r`8U&bH&!ho_7*!Qm/%L*+]NX+\eXqdT1!<<9.zzz!!!!7z!!!!.!!!!/!!!!"!!!"4#QOkpp]1R',,,)B"ra3:"pP^7!M0i$#)3sY"pP.'!<r`0U&cSF#(-:Q2't9e-3g.Er<>\;3!KR6OTC.A[/hU6"ssPL!<r`4QN79p(-Dfp%L.[h!<NFd!>-"Gzz!!!6(!!!B,!!%6J!!)?o!!)?o!!)Ks!!")@!!!c7!!$d=!!)?o!!)?o!!)?o!!(FU!!(LW!!#"Z!!"AH!!$d=!!#jr!!"\Q!!%3I!!$L/!!#"Z!!%6J!!(X[!!(d_!!(^]!!(^]!!(^Q!!&\f!<rbF!MTT!#.ai0!<r`0U&fuL"pTGA#)*>;!B:8fL&mD;m/ig_L&j7<L&hLR!VHs-Fu'=l2IS5p#e^?c"s*u?!?MFT-3aYY<!EO.U&fuL"pTG1!UTrC!B:8fL&mD;XT?BFL&j7<L&hLR!="hm#+bi:"r8Np(*41p"tgeu#'-F="qCj4!<r`D)N=b=#+ko#"p1M""pP.'!<ra_!KdDZ"dK7G!B:8fL&mD;eH;'>L&j7<L&hLR!?U&%*fL-m"!/Ku"pY&;)?pD/!MTT!"p1M"#)3-_T`NsNK`Qo/3!KSA!KdEU#DEG<!B:8fL&mD;o`VAuL&j7<L&hLR!M'J/">2Z'#+bs>XX469>f@un7Pi"###6tN$jK`gSKJ,C1USV8Ai#,g#&Z4$"q[L0SHmsk/iYbm!=#"o/iKg7,6e?kU&h,&rW\Ap$3g^U!MTSq!WiN0!WW3#!rr<$$ig8-I0KZO-ia5In+Znf"p1M""pQ]:!Ta?Y!A6>9"tl#=SHX]Q/iX%f#,;2/"pRMm'FkTf#%eo3mK*k&72?pK%0d"H.\6bA)5\/V"pP(%!<E9*"ptSLzzz!!!!*!!!!-!!!#""onX*%0-B3%0-B1%0-B-%0-B-%0-B-%0-B-%0-CH!!!!L!!!!?!!!#/"onW'!!!!b!!!!I!!!#0"onXF%0-BM%0-BM%0-A0!!!!u%0-Bhq#L[(dK6-D"pW3OU&bH&_?-G4"pP.'!B(,dHfY8c2E1mF2N\$:!Smo;3!M8FUB0HZ^'"oM(@<@_Mua+e(+82H((LNirrNCo!>ZaD,U3Kt3hcWZ"r9H>&dF6p"pPp=!PSu^"h"MV"pPi."r7Od"pRDg!<r`0U&bH&2MhIb"8rB]3!KRFOTGC_AMuLP2?ooW2?j@b"pSP2!<r`0U&bH&2MhJ%"T8K^3!KRFOTDipK`j:n"uZ[\!TaG"%L*+A*^CJ^m3Eq%$l0&B!<r`D-O'dK!MTT)"pPD=%\NhC"pTSYU&b9$#T*aS*"X5,,RR!@zzz!!%NT!!%NT!!%NT!!!N0!!!N0!!#=g!!%TV!!%TV!!%TV!!%TV!!%r`!!%r`!!"SN!!"&?!!#Fj!!%r`!!%r`!!#h$!!#h$!!#h$!!$I6!!$I6!!$I6!!#dp!!"YP!!!c;!!"\Y!!"b[!!"\Y!!"\Y!!$^5!!#4`!!!f<!!%QM!!#Oi!!"MP!!#t(!!#t(!!#n&!!#n&!!#n&!!#t(!!#t(!!"JS!!&bo!!$1&!!#"^!!'J.!!$L/!!#%_!!(+@!!$g8!!"bW!!$U:!!$U:!!(mV!!%3C!!"hY!!$U:!!$U:!!%6L!!%6L!!%6L!!#=k!!)rt!!%iU!!",E!!!`7!!&)\!!"/F!!#Cm!!#=k!!#=k!!"GK!!&Gf!!!$"!!"JS!!"JS!!("=!!#1g!!#1g!!#1g!!#@e!!&tu!!"t]!!%BP!!%BP!!%BP!!$4(!!'\4!!#.b!!%f\!!%f\!!%f\!!%WP!!("=!!!`:!!&to!<rak$).G)#)W_]!<ra[$).G)2ASO^(;^G""pR\o!<r`0U&bHn#,)(*!NcZ'3!KR^OTCFE`<8pq##5At!<s;D5mB4_-O'eG$DIP9()@)Y2BG+!*pj+U"pQcU!<u"/-O'e/$DIP*"p1M"##5Ar!S%:;"AUo\##:9]V#lV]:,iGQ#,;4\";VaW#"BY!(*<DTk5bc&#,;2'#&0e4m0=CZ"pPhM*<l_Z!ho__#8TK-"r>Vg*<l`5"/5f#"p1M"##5Ar!Mp$T#Ym>`##:9]eHF+t:,iGQ#,;4d#8RL]"r@%>*<l]lU&idG()@)qrrWIp!>ZaD"X=3UdKZEH"pP.'!<ra'M#k9p2,6+8:'RBm]a)db:,iF^:6>Q'N<2j7##5At!S%5e(']Krm0+7a"qDCr"pTVZU&bH&!ho]"##:!Ur?pt6:,iGQ#,)(r-iF*A3!KR^OTDinr>n]n##5At!QGV1":!3R(*;iH,6e@>!ho]1()@)im0+8a!<tFt-P[C4"pP9_!MTT!#(d)S!<r`0U&e!n#(,G;2,6+8##:9]m0VSO:,iGQ#,;4L!o="p"pPPY5SbF."X=3U!ho]""p1M""pRhZ!PK$B"\q#]##:9]N>mQo:,iGQ#,;4M$PirA!<s#L-O'd\!MTT!"p1M"##5Ar!PJen#Ym>`##:9]Ka6-;:,iGQ#,;4\";Vb;(B"7LMua,P(+82H()@)Y"p1M""pP.'!<u:'T`Kifr;o_R"pRhZ!JMQ]!_t]Z##:9]N>(+j:,iGQ#,;45#e'm?irKo:r;e,I#13LH!<skd5R%u@*<l_""/5f##(QcL!<r`0U&bHn#,)(b!JLeS3)0Y^HgLhk:,iF^:6>SM%]on03!N+^UB/U@ecus?(@;8@Mua,0(+0:j!ho]""p1M"##5Ar!Ncug#Ym>`##:9]Po]f=:,iGQ#,;4D!YuOb*p3V0RfO9Gm0+^=#.Xc/!<r`0U&bHn#,)(2&`j$g3!KR^OTD!hm28YY##5At!=f;<q>gd1.NJ]tYQCO"Xrje_VB)3.m0=CJ"pPin!Z_ILR0')`"pP.'!<ra'OTFh_2,6+8##:9]N>0>G:,iGQ#,;2'%`SZ;"r@"9*<l^u"el#%('^N7"st*5"pPp=!<r`0U&iLVSL-N]#!NA7SKS2$1Hl-MMZKpu#!Oh,SJXP1h'bHNFp9i/T`I&8m11EG"u_SE]cs:%2E1n!#,;4D!YuOU"stBV(*;iH,6e@G!D3Pc(-i'>$69<TVu`Un"pP.'!<ra'M#j^dr<5qU"pRhb!PKWK-r)`+:'RHoQ3@Hs;umI1$4I[U)BL(L.P<J73Y,$ezzz!!!?/!!!?/!!)Kj!!!N0!!!N0!!!0(!!"/B!!!i9!!!6*!!"eT!!"AH!!)cp!!#jr!!"VO!!!$"!!)9d!!)9d!!)9d!!$R1!!#"Z!!!0(!!%-A!!#7a!!!'%!!(@G!!!c;!!!c;!!!c;!!!c;!!%uY!!#Xl!!!-'!!!?/!!!?/!!!?/!!&Vk!!$%"!!!*&!!!9-!!!9-!!!?/!!!?/!!!?/!!!?/!!'V2!!$R1!!)cp!!(7D!!$j9!!!9+!!(gT!!%'?!!)]n!!)6`!!%<F!!)ls!!)cr!!)it!!)it!!)rt!!%`R!!*!!!!*!#!!*!#!!*!#!!!`7!!&,]!!)fq!!)Wn!!)Wn!!)]p!!)]p!!*!#!!)Ql!!)Ql!!!-)!!!-)!!!-)!!!uA!!!uA!!",E!!",E!!#:c!!'#!!!!H0!!",E!!",E!!",E!!",E!!!o?!!!o?!!!uA!!!uA!!$X4!!'J.!!!T4!!%!>!!(dS!!!E/!!!uA!!!uA!!!uA!!!uA!!!o?!!!o?!!!o?!!!o?!!(1C!!)Bd!!!K1!!",E!!",E!!",E!!(ID!<rb6!ho]"#-%a!!<rb&!ho]B&dF6p"pUe*U&bH&##kd2!ho]"#'Q+0XT@ejFuT[1G)67%!Mog?3!KS1OTCFEN<XPc#'L3G!O`%6Xpudq-;FaL-@u=?"pP.'!=!]OT`P)o<H^>+#'Q+0V$'M93!OO1UB(Q'q?.<5"p1M""pT75!PJOlFuT[1G*)eoeH9tS#'L3G!<s>5$:"e2-liKr!ho]"Fp=W@eHAlq3!KS1OTEE)V$2$%#'L3G!<rb.",R$_"p1M"#'L3E!Q><*!HpF,#'Q+0o`V)rFuT\L#,;2/"pSN@"r9H.(;Kqk"pX>pU&bH&!ho]"#'Ph(jT=fNFuT[1G*)g]!kg"*3!OO1UB0K^"stZ$"rO'8"pP.'!=!]OT`MP)<H^>+#'Q+0K`[eoFuT\L#,;2'#')bj!QG_+'-nq($3kApPp[o;!@T!9P5tjlq?Wer*[Vpi*eae>Muglu-:XU.-A;XNMub7H*cN1V$6G-,-6=4k!<skf*<l^GU&bH&!ho^="pTGQ#;pZa"pT75!Nd<K#'Ms1Fp=]B`<!sg7\9\sh&$od!UU+54pD2qR/s#_"pVmFU&cU,#6o&mPp[o;!<r`^U&frZ(*9(K(+9BF!<r`0U&bIA#,)'_-<54K"pT75!S&'A#Bi'2Fp=]B"pUe'PQ<Bp-;k$PYl^X#V%k=XT)f-C/jM<!h?sHE"pQuV"ZA8^"pRAf!<rbD!MTT1%L,Ap#Sn0j('Xtk(']Hs7g9/PU&bH&!ho]"Fp=W@N=D-UFuT[1G*)g]-C"j[3!OO1UB)D_bo/aA.+JMC37S_N!Zj<*"p1M""pP.'!<raOOTFhMm/hGj#'L3E!UTpL!d6O-#'Q+0oa\)-FuT\L#,;3a+Op\1"-io+!@C:.!@EL)-B%s0#%F;-"pP.'!=!]OT`M8.eH'hQ"pT75!L4]((3VYAFp=]BPn"Q^K)l/\*ZFDN-8l&L-H-]Em0=t%"pP9o!ho]:-LDKl('Xtk"st*5"st*N"r8U-"pW-NU&dGA7QiXn2Co%rL'F.K"pXW$U&bH&!ho]"Fp=W@`>"RWFuT[1G*)gU+.Wja3!OO1UB(QOrWZ7Q`=jk_!B-2E(5r8H"pTJ[#-n?*!M'Au:,<)<#+biR2Ej8."sTcB2?jA62D-V$2?rj\RK3TsdK6-DQ44$^=@VBW2N.Z3Pl`k&!<r`l'F"aiU&bH&!ho^="pTG1&]Flr3!KS1OTE]@m14A"#'L3G!<r`0U&jWtScueC!bRE#Ao[bpAnH2j?3[)(?=pkh,6e?YOTEEAodF-+#$qM/!<tFdScL`%/oW-A#(6[[f`H7""p1M""pT75!VI:`#^/03#'Q+0N?=](FuT\L#,;2WjX&IbMuc-(#9Jg)7\q(GMua+eklILZ-=-mF"to$BS,k8(,qb,W2WY/ZMuc,=*#=J6"tg+O!<tHB%@dG'#*Aq\!B,'YMub704shld7OA<D,,,)B2T>ul!B.n12N.Z#Pl`"c!<rb5"/5f#2?o`R5%Y!f7]$7lO9%fT"ubQI7Re-K-O*U-#"Afg!Cl`/7Z7?P#*B(`!C$0"5)]O0#=`S87RdkN"pVU@U&b8q&d\jEzzz!!%*@!!!B,!!!N0!!";J!!#Io!!#Cm!!!'#!!#Cm!!)]e!<ra[!MTT!#(!!E"pT+B!T!n'&WRln!<r`0U&bHf#,)(b#.4V(3!KRVOTC^NjT.h1#"Afl!<r`TPlV@!/g_><2C8V45!0#R-7U>H##kd2&Y]:1('Y;/&g.rn"pQ6F!<Eo`#[A!N%R:48!^nRT)GrI$+:K4m#9j-Jzzz!$DIG!"/c,!"Ju/!,M`;!!3-#!#c%A!#c%A!#c%A!%.aH!$)%>!"K)2!'L;^!$qUF!"]54!)3Fn!%\*Mz!6tcK!*oR)!&=NS!,)H7!7D&O!7D&O!7D&O!/LUT!7h>S!7h>S!7h>S!#u1C!#u1C!#u1C!.+\G!(?kf!"f;5!$haKz!$haK!$haK!8IbY!8IbY!8IbY!$DIG!1a)i!*'"!!"K)2!4Vb)"pSh:!<ra;U&bH&>+u$%"pS$2"p1M""uZ[Z!UU)F#W=XH"u_SEPm-7M2E1n!#,;3a#8S@f"r87F(*<,_,6eA+"/5f+"pPD="r9H.(1J9g#.al1!<r`0U&bHV#,)'W#DEFA3&UsFH]87f2E1mF2N\%5!VHLP3!M8FUB0`e^((WU()H9Y&I&Gs"/5f#"p1M""uZ[Z!NcQ;2E1mF2N\$j"-j!I3!M8FUB(Q/OoZ=&#.ai0!<r`0U&d.V#(+Sq2)[Du"u_SEV$3\<2E1n!#,;3["hk?2(d\E2(7bKg#8RMW"pP.'!>^qE(5r:]#9KH;"r7CIH#4=o!<s<b#)`Kd#.ai0!WEYm*0(AG"r7t>"r<'s*<l]jU&b`.(+'5$RK4E5#)WGU!<r`0U&d.V#(+T"2)[Du"u_SE]a+362E1n!#,;3a#Gq\H"r?kG(5r7u()A9_#8S?bpB;W*$UPUMob8VT#,)*m!<s;DUB(Q7(+0:j(nq$8"rO'8"pU.iU&bH&!ho]""u_;=r<G2<3!KRFOTDR'[0ANK"uZ[\!L<rp]`DmQ#3Z)^!<E<C+=o>Q%KHJ/zz3X5Wb3X5Wb3X5Wb%0-A.%KHJ/!<<*"1^=!\1^=!\2?s3^2?s3^3!TE`3!TE`3!TE`zq"Ojo"sTcB"pQ!?!L3a&*X3Ai]`B>^"pS$2"p1M"-3a[$r<Aer-9*=V#(*HQ2't9e"t#H5Ka>'e-9)2V#,;2/"pPF""-s/r"r=WQ]`B@C!u;@N((S"Y,F&?H('YNa]`B>^"q[L0"pQKM!WEAm#PK2h!<EB2$31&+zzz$31&+$NL/,$NL/,!<<*"1'dj[1'dj[*<6'>(]XO9*!?6A1^F']1'dj[r:g9s"ra3:"pP^7!<r`8U&g8pV@rSCBa+bCU&bHf#,)(:"Jl5j3!KRVOTC^NjT.h1#"Afl!<s;D%i/WN'D;G2#%F;-"pP.'!<r`tOTGC_V#a%F"pRPZ!K@<V!Cf$Q7L#Ug"pQD>%L+O4('ZZD"pR7R"pV42.OG?(<2C+=(0UnH)57-4!<NQ7zzz!!!#=#QOi4!!!!1!!!"1"98EH!!!!8!!!!"!!!#;#QOkC#QOkq!!!#;#QOl'p]1R'HD1EE#'-F="pSh:!@A!T<!EO.U&bH&7Zd`=#)raT3!KRVOTC^NjT.h1#"Afl!<rag!^$Yk-7T3(-9r%F/g_><2C8V4+JJl@"p1M"#"Afj!DTZs7Q:SV7Zd`%#GhJk3!MhVUB(Q7#(lpl(o7lY"pPF/!Nlrn(o@FTV%6rL=p>0JU&b8q)@6`Nzzz!!!<*!!!K/!!"VS!!$+,!!'Y3!!$%*!!$%*!!!'#!!$%*!!)`f!<rac!MTT!#(clM!<raSU&bH&!ho]"7L#OejT2am7Q:SV7Zd_J!SmoK3!MhVUB(Q'-D^_Q"th5<"u[e4#!P-R"stfH"pS%m)o`X?Ian`A(0UnH+eeuA('Y9b1$'Gh"pQNN!<E<)(^(ib,QIfEzzzTE"rl$NL/,%KHJ/WW`A&*rl9@(B=F8XT\\)>RLN3>RLN3D@6FED@6FE3<0$Z+ohTCYQY",@LE/9@LE/9A.&A;@LE/9D@6FED@6FE<XSm-<XSm-<XSm-<XSm->6"X'3WK-[Y6=n+?jcr7?jcr7<XSm-=:5*/=pk<1=pk<1K)blO8,rVi[fla3E!lXGE!lXG=pk<1=pk<1=pk<1=pk<1T)\ik=TAF%Xp"e*]D2I3"sTcB"pQ!?!<r`@U&ht3Q5R[SRfN]t##kd2!ho]Z"pTFn"J#][3!KRNOTC.Am05a6#!N6d!W=#3$O34("qDar"pWKVU&bH&!ho]"#!S.Mh#X>Q4u``N5*5lJ!Q>7,3!MPNUB(i/L'8n.('^?2"qDCr`WZP^9*PU#"/5f#"r7mW"sBW@"pP.'!<t^lT`N[HjU==4"pR8R!UU!."[4mM4pIb_('XtgPoCJK#*fB.()8/<#+GVt"r7ou#SmVc"pVpFU&bc'$O1neFUj?2jVnC>1Bn&8!MTT!"p1M""pR8R!Bi;(3!MPNT`H1A"[4mM#!S.MV$A;13!MPNUB(Q/(6nq!-5O;u(&\:?-8V1r"th_1"U6k@/d<)K!R2Yq()7#XfE%]I%L*,ch$r0M%QK.E('^B3"pRu"!<r`0U&bH^#,)(r-\VRb3!KRNOTEuIPlX'.#!N6d!>aK;(5r:m"U6$P!@FuR#+GVt#06h>!>`?N(5r80[2Tm?!Q?5u()7#XE2!@;"p1M""pR8J!OW"e4u``N5*5lR"#W8%"pR8R!Nd<s"?ndL4pIb_(;2(2Mui&K[3^hBMua\(N>P.i#2fQW!<E0'#ljr*zzzz$NL/,$NL/,!<<*"M?!VVM?!VVM?!VVM?!VVnb<+h"ra3:"pP^7!<r`8U&bH&!ho]""p1M""s*uB!UU*Q!?O3)"s/m-Pm-7M*]O?F#,;2/"pUV!%L*[q"pPj6!<r`0U&bH&##r;FQ4;sWD#j\@"pP\?zzz!!&)\!!!'&!!!H.!!!H.!!%TO!!!3*!!!3*!!!3*!!!3*!!";F!!!l:!!%KL!!!!$!!!!$!!!!$!!)ou!!#.^!!"AH!!%QN!!!'#!!)ou!!%rQ!<rb6!ho]"#-%a!!<rb&!ho^]'A`i:'m^&g!ho]""p1M""tg+R!Q>2L"YMb="tl#=Ka@&M/iX%f#,;2'"r>Jb((T./7g9_5UB(Q'!ho]""r8Qj#%F;-"pP.'!<t.\T`Offr;nT2"pQ]B!Moon/iX%f#,;4T$l0<W"pPhj(9[iFh#R]a!ho]2%c%O`"pP.'!<r`4<!EO.U&bHN#,)'o"_B;G"pQ]B!PJQ:"thk>/dA'O"pPi."r9e1!<r`NU&b`."ptPE=WI\NL]O4N!<<6,zzz!!!!kz!!!!.!!!!-!!!!"!!!#ep]1R',,,)B"ra3:"pP^7!M0h)*S))A"pP.'!<r`0U&bH&*f0p*!W<0C3!KR.OTC.Am04Uk"s*uD!<r`4QN>qL"pS$-!!`f1zzz!!'M/!!!B,!!!H.!!!$"!!)9h!!)9h!!)9h!!"5D!!!c7!!)]p!!)fh!<r`HU&bH&&u#C2"q%(*NY^1R[MO)k"p1M""pQuJ!NcCi!]E"B2?oiUN<]%W2E1mF2N\$*"iUU&3!M8FUB(Q'#+#>p"r<7#"pVL<4;J,*6QVd%(5r:=&fr)/KbFYC1Bn$bU&bH&*Y\e_##kd2+JJl;!sf)>#;#oUzzz!#P\9!!3-#!9=@b!9=@b!"f22!"T&0!!*3&!!EQ-!!EQ-!!EQ-!%.aH!$2+?!!!-%!!3E+!!3E+!<*3'!<*3'!<*3'!!!9)!!!9)!)3Fn!%e0N!!<?(!!ii1!!ii1!!ii1!9=@b!9aXf!9aXf!,2E5!'C5]!:p9m!9aXf!9sdh!9sdh!9=@b!;Zp#!/1CQ!(d.j!;ciu!;Hd!!;Hd!!1<fe!)ijt!;Q]s!;$Kr!;$Kr!;6Wt!;6Wt!;6Wt!;6Wt!;Hd!!;Zp#!;Zp#!5A70"pQ!?!<r`@U&bH&$DIR`'qQ"l*!d#Y"ptPEdK(?m#3#]Y!<r`0U&bHV#,)'W#2K;<3!KRFOTD!W[/i0F"uZ[\!Ndac((V/b#'laA((LPn*7YN73!KSU!MTT!"p1M""pQuJ!G/).2E1n!#,)'W#L*B03!KRFOTG+Uo`@$2"uZ[\!>`om((6Z8*Y&D)%L0o]1Bn%!'V,=A%L*+A32-GE!u;@N"pQ,6(*9k',FnoP%L*+AO9)'V"pP.'!<tFdT`LtpjT7>""pQuJ!Mosr+>u1`2?ooWSHBW;#1Y*O%Mn.,"r7E<!<r`D-O'd$U&bH&EhWRM*jlt4"pVpFU&bH&!ho]"2?oiUXTSM'2E1mF2N\"djT@D#"uZ[\!M'<.%L*]V*#=J6"pPhjSHBW;"s15V"u$5cEM<I<"pS$2#)NAT!<r`0U&bHV#,)(r-\VRZ3!KRFOTG+Yr>mjV"uZ[\!JM0k-G0?`"r7p8"r7DC"pT+B!<r`0U&bH&2N\%=#;nD!"pQuJ!M(M'#rXaI2?ooWSHBW;#0e-A',EQu!u;@NeL-%a`XXu!!u;@N(<mI-MufIO*Y&AY#/L>7!<r`DSH3RC('YP2!="G_"pX;mU&b8p"UY50zzz!!rW*!"T&0!6>0@!$M=B!#>P7!!*'"!0@9_!0@9_!0@9_!0@0\!0@9_!<)Zn"pT+B!<raCU&bH&@\Nl-#"#$b"pP.'!<r`TOTFhR2't9e"t#H5Pm-7M-9)2V#,;3i('`=s1Bn$rU&gf'"r9!!#%F;-('Xse"pP.'!@A!THi4%(-9)26-BS?-#2K;,3!L]6UB(i/"pthUSHTT0V?mkU"pPp=!JVJp(![:Z(23u2!<r`NU&b8p#mUG1zzzz!.k1N!"Ao.!"Ju/!!*'"!$;1@!##>4!'pSb!;6*f"pQ9G!<r`HU&bH&&u#C2"q%(*"stZ]"pP.'!<r`tOTDQbV#a%F#"Afj!W<5!"\(HU#"F^UKa>'e7Q:TA#,;2?"pPG&"pW'Q.h2b9nGsC02C9IL4sgI<+JJnf$dKdT&=W\$![n0U%0-A.zzzmKNXkmKNXkmKNXkq>^Kq&HDe2&-)\1Foq^E!WW3#limFilimFilimFi.f]PL*<6'>G67gFs7cU!#(!!E"pT+B!<raCU&f*H%L*+QM?+_%#'-F=c2onY"="*T!ho]"/dA!Mr<BY6/iX%>/r9W-#5n]X3!KR>OTD!WXT:%6"tg+T!PSU>"uHeo"ptP=(-i'>3#r2-(nq$@(@<.T"pP.'!<r`0U&bH&/r9U?2(gim"tl#=:$i$83!Lu>UB-Y`#/(%Q"pR&]!<E]V-jBe]!Y,bM&hFeU0basEzzz!!!"6!!!#Y!rr>\!rr<&!!!#S!rr>V!rr>V!rr<;!!!!4!!!#k!<<,b!rr>b!rr>b!rr<R"98ES"98ES"98Gc!rr>b!rr>b!rr>b!rr<R"98Ed!!!!G!!!#h!<<*q!!!!Q!!!!@!WW3c"98Ec"98Ec"98Ec"98EU"98EU"98EU"98EU"98EW"98EU"98EU"98Ec"98Ec"98Ec"98FO!!!!d!!!#j!<<+V!!!!l!!!#f!<<,\!rr=j!!!"#!!!#j!<<,1q#L[(.\ZqJ"sTcB"pQ!?!S/71&,m+X"pPij"pTqgU&b`."ptP=(-i'>WW=+E#0I%B!<r`0U&bHn#,)'o!o4nm3!N+^T`Ofeh#U81"pRhb!UU)f"AUo\:'RHoPm0-)5=XN4#+GW72?jTp"t&++D'f_s"stH5"pQ9G!<sSl5j]R=-5FKF2C>$s"pRnu!<rb6!MTT!"p1M"##5Ar!JLYf:,iF^:6>Rj!j)Z%3!N+^UB(Q/Ooo>$#-%a!!<r`0U&bH&:5K#E#Fu&o3!N+^T`Ofkr;o_R"pRhb!S%=l#>R5_:'RHor?4'7T)k2]2Du<$"nr$%+s&WH%0d"`L]I\a+JJl@*[X/>*@<*Joc#e)T)k2]2Du:>mfE]_!?O-'%0d"`L]I]$-:$r=-70H3#/L>7!?N!\7J.rJ*Yk4L"th\9*X82:"pW-LU&bH&!ho]":'RBm[00K)3!KR^OTGC`XVOYk##5At!=f=I!Cm=un,\[Q"r7E<!Grkf"pQ+i?Np]9U&c=V!="G_"pP.'!<u:'T`O6\<DGLX##:9]m0VSO:,iGQ#,;2'#0?o/!<r`4;ult!"TSN&zzzz?iU0,kP,&^"sTcB"pQ!?!<r`@U&bH&$DIRX$LS8("f;;)"pS$-!t#MN$lAsEzzz!!rW*!"T&0!7(fK!$M=B!#Yb:!6t`J!&X`V!$_ID!7(fK!2']"!)!:l!&4HR!7(fK!+c-1!'(#Z!71lL!(Hqgz!-nPE!($Yc!!*'"!/q9c!/q9c!/q9c!0$sY!)3Fn!656C!0@Qg!0R]i!0dik!0dik!1!um!/q9c!1F8q!1F8q!4Vb)"pWKXU&bH&aoe@="pVpHU&bH&!ho]"?3[)(`<<RL?8u6q#(+;lSH`C["pSCr!Moha#$s7n?3[/**i95J8d6mPD([FfTE,6$aoS4;"pP.'!<ra7OTGC_2-r6H#%!Dmr<D'Y?8r-q#,;3Q"!.Z=!?T2]*fL+H`<*1LMub9E!@Ea+0#e"uDD$&aMua,@XpCNu2MDPtMug<q#!Oh##"CBQ2?o`Rm0>fj"pRPg$(M##"q%(*"pTqeU&d`;$q?0V[1*=81GoA;1Bn%#U&bH&!ho]"?3[)(h#d6X?8r,n?AS^=!gNpq3!KRnOTFhPN<NWJ#$qM/!?Nl4!@-.tmL9@(/p/e*!W<0+2Db:8#!OjA"U7FP/d<X-*\P\S,6e@W!MTUd#PJ4j#a58n"p1M""pP.'!<ra7OTGC`m/gTR"pSCr!MonK'j`j(?3[/*%L*+Eh%ph2T)f-#mKFL5"p1M""pP.'!F>s7H^uFY!F@_i#%!DmPl\8q?8r-q#,;4d#PJN8"s,,1'dJtd[/qC/bo4P&*]TuEeHR'S"pP.'!S%ml!Zj<:"pTJ[(()&d#'cjC"pP92!<NEJ%3#9Izz!-/AG!-eeM!"/c,!"T&0!4r@6!."qO!-eeM!-/AG!-/AG!%@mJ!#tt=!3lY,!+ZB9!+ZB9!'^G`!%.aH!4i:5!)W^r!%\*M!4r@6!+H67!-/AG!-/AG!-/AG!+#s3!+6*5!+H67!+H67!,)Z=!+lN;!+H67!+H67z!1Wcb"pXo*U&bH&ncGNd*X3*$"pP92"pP.'!=!-?T`MP%K`PdF"pS\%!K@;;#\H%##%ituPm,,0AiL!,#,;44.0`h`!<sl/)_O%^"=#h>!X>+p/iKg7,6f1nScK$"&>B10"p1M"#%e(5!VHN="D0Ut#%itu`<JbC3!Nt!UB)Fl#9FEK"!/Ku"pQ[uSHl8(/iX%>Z2p[#"pP.'!<ra?OTG+XKa;9M#%e(5!VHTO->#4A#%itu]`P#6AiL!,#,;3i#L+SJ3$njt%As6G#mNRLXV_731Yj2Y:,<(Y+JJlX"r8Np(*41p"tgeu#*Aq\!<s#<UB(Q'()i/5*X85;"pUFqU&d/B#+GWG2Q[*,"s*u?!<ra:U&bH&8YQ7B"f;F2*iK)?",Hs]Mua5&zzz!!!"2z!!!!.!!!!/!!!#="98ED!!!!6!!!#B"98ER!!!!;!!!#C"98Fd#ljsi#ljsc#ljsc#ljsc#ljsc#ljrm!!!!I!!!#A"98F#!!!!R!!!#>"98Fd#ljsi#ljsi#ljsi#ljsB!!!!]!!!#>"98F`#ljsc#ljsc#ljsV!!!!f!!!#="98G"q#L[(,,,)B"ra3:"pP^7!S/48"m,u:"pP.'!<r`0U&bH&7Yq/b"J#]c3!KRVOTC.Am06$>#"Afl!JV#[$O0uC%[$o7"pT+B!<r`0U&bH&7Zd`-!UTqX3!KRVOTDQb`<Jdk#"Afl!M'J?-Jf7m('Z)dbp*EF1YioQ2DYOQ-=IrB]`]Pa%L/L*"pQ9G!K@*i%\Eb3h$4FK!VHO)%M]0PWWAgp"pP.'!<u!tT`Ofh<CSqP#"F^U`<E(A7Q:TA#,;2'((M\r#.aiE!<r`0U&bHf#,)(j#LrrH3!KRVOTG+[SHVJB"pRPZ!UU#L"\(HU7L#Ug"pUq,[/gI9%R:I5%M]0P*Z>4eE2!@;"p1M"#"Afj!Monk!_,-R#"F^U4cKM43!MhVUB(Q'*c@MRN@5i-"qCj/!<rb=!MTT!"p1M"#"Afj!L3\n#"CQV#"F^U[0>Xq7Q:TA#,;2'"pWc^!<<9/zzz!!!"n!rr=q!rr<1!!!!-!!!!"!!!!<!!!!5!!!#H!<<*T!!!#np]1R',,,)B"ra3:"pP^7!UV*9(,H.!@\Nl-"p1M""ssPJ!Q>3'!@Bc1"t#H5Ka@&M-9)2V#,;2/"pW6O%MkT=&I'!h*<l^'U&gN-"r9!!"qmX2(((8(!<r`OU&c#6"sR*6#lYSO"pPp=!<EcB()e5<-7UW'2ECmD5!h_2z!93bS"pPS;s8W-!s8N<)!<NH.zz!!!!(!!!!0!!!#1"TSN&!!!#ip]1R'&u#C2"q%(*"pP92"pP.'!<t.\T`N+8PoMD9"pQ]B!MohQ"YMb=/dA'O"pPQ&obS)J'a>`)%dj?=XUZD2!<r`<'F"aQU&bH&(nq'1(]G)N"Gd'Z"9L+g3=$T)!!%TX!!%TX!!%TX!!"JK!!%TX!!!H.!!!Q1!!#Il!!"5D!!!o;!!#at!!&St!!&Mr!!&Mr!!#.^!!"AH!!#=h!!%`\!!#pt!!"tY!!#Cj!!%l`!!%l`!!%rb!!%rb!!&#d!!&#d!!&#d!!%QM!!#Lh!!#On!!&/h!!&)f!!&Mr!!&Mr!!%l`!!%l`!!%l`!!'8!!W<uJ#+ko#%MBcd#1<OH!S/'A&Y95C"pP92"pP.'!<t^lT`N+8[08`R"pR8R!JLgH#!P!N4pIb_"qDCsr?`9q(&\:?-8V1r"th\9#1<RI!<r`0U&bH&5*5m5"#W8%#!N6b!Cb694u``N5*5lr#Q4`g3!MPNUB).d,o5G?r<3BH1F<V:RfN]tQ3@s,"sBW@"pP.'!<t^lT`ON`eH%in"pR8R!S%:;"?ndL4pIb_%d!p!H4G'-Mui#Z"r9!)"pTM3%G_L(3/%GM"sOhr!u?gr"pP.'!<r`0U&bH^#,)&\V$0%B"pR8R!Bm7[4u``N5*5lj!JLP<3!MPNUB).<)]"A5`?H'5'b1Gf!Bp]'#+bi"%MgF`"pPi9"pTqcU&k2r"u\7i"r<'sboR?1'c$uXGm4HSU&bH&!ho]"#!S.Mr>mg[3!KRNOTDinjTRh-#!N6d!L4T>%L/1&(?PZ5-KbR;RfN]t()3VH('\FV#(Q`K!>`?r(5r80[3ZTI!>Z0)(e4c7.&$_C$rn,U'ESIE$q*??$4T#rzzz!!"DN!!"DN!!!H.!!!]5!!%`T!!"ML!!"/B!!&,_!!!E2!!!E2!!!?0!!!?0!!!E2!!!E2!!#jr!!"VO!!!$"!!$@+!!#+]!!%]S!!%?G!!#:b!!%`T!!%]Q!!#Uk!!%cU!!!E2!!!E2!!!K4!!!K4!!!K4!!!K4!!!E2!!!K4!!!K4!!&tu!!$:)!!&5b!!!?0!!!?0!!!?0!!'n:!!$a6!!%cU!!"DN!!"DN!!!Q6!!",F!!",F!!",F!!)$Z!!%NL!!%fV!!!W8!!!W8!!!]:!!!c<!!!i>!!!o@!!!o@!!!uB!!!uB!!!uB!!",F!!!E2!!!E2!!"#?!!&Mh!!&)^!!!?0!!!?0!!!?0!!!?0!!#%[!!#Fg!!&qt!!%`T!!%oQ!<rb6!ho]"#-%a!!<rb&!ho]B2BDr)#-%m%!<r`0U&ej1#(+;lm/glZ"pS\%!JLgH#%fh!Ad5"2jU&@'#+koC"pRNp"U6S8Ka.f?1EH`I#6kA6U&f*X%L*+aOoZR-#&9k5"pP.'!G2N?H]88q"_K^u#%ituh#[0MAiL!,#,;3q'rDFHT)ghS`W?9$"pQuV"ZA8^"pP.'!@B]W;?d>g"/5gM#6lM2"pP^7!OVt5*]"iA"sPD"!="G_"pW3OU&bH&!ho]"#%ituh#`99AiKu!As!,e"Jl?83!Nt!UB),7"q'Gu*X85;-3aZCr<3BX1PH&<^'uk>"ssRl-4U4a-HZB1"pP.'!=!-?T`Ltl<G"2p#%itu4cKMT3!Nt!UB(Q'M?9IP*[Vr)!<sSP*<l^OU&c;B#)`Kd#1<XK!<r`0U&bI1#,)("(1h);"pS\%!VHWp*bIA9Ad5"2"stZ^"t$n_U]CZ(&u#E/#6l5*"pSe9!<skt5R&Pf5R&hR*<l_"!MTT!#(d#Q!=f;l-3beD2[0HfU&bH&Ar-PJ)l3RI3!KS!OTDioeI#nJ#%e(7!@A"'-Ir;(2C8VdEZG>g(nq%b#6lM2-L([;MZF"dncPTe"pP.'!=!-?T`N[QN<3]O"pS\%!S%XE"_K^u#%itu]as35AiL!,#,;2?-H6OZ!<rbM!MTT)#!O@</g`M("pTKm/li/\0&ZgO"pWKVU&bH&!ho]"#%i\m`=f!JAiKu!Ar-Pj"dK7'3!Nt!T`M8!Plt\YAd/HdXTb7!AiKu!As!+J(o80`3!Nt!UB0`e-8l&TbloG^!KI[;/nY@m/fO*^2Eh<t2T6CUPp"T]/iYI)bo.fZSce?o6#AML"thg1-mNRe:'N=/eJ'54#4V_g!<r`@U&i47"s,Q)#)EDV!<sn("!%RM!ho_/$<Dj*L&hKZ$6AdZ#$*N\$3lChN>De"1KKJH<cRLS<`XAJ:'RBm:0*W",6e?IOTGCrr;o_R##5At!<rb$!?<.--j9eZQi`u_m0=sR"pP8TU&iOJjqP698HoA#U&bI1#,)(2*JFc23!KS!OTAJL'4s3.Ad5"2m0=sZeH#jYhuf\S!<EB.%0-A.zzzmJm4eEXMjI%0-A.$ig8-\-2j4EXMjIEXMjIEXMjIEXMjIF:/'KEXMjIEXMjIp%SOl"sTcB"pQ!?!<r`@U&htGSfYT\QiRBq##kd2!ho]B"pTF^!M'B@3!KR6OTC.Am04ms"ssPL!Tacu%L,kG"i^cOBF`iE%ZCDm"p1M"SHT351EMkd#+GVt"qD=O"sBW@"pQKM!<E3*"qL\6z!71cI!71cI!71cI!7CoK!7CoK!7V&M!7V&M!7h2O!7h2O!8%>Q!8%>Q!8%>Q!2]_r!$;1@!#,D5!,)B5!;?0g"pTAV"pSN>$4[7@"pP>9`Wap(r=B.h!W<28(^5p1r=H[J"h"X6"mmT>NWK(iV?mG"%fHRM*sLd0r=Jr;"ni&s"e?>2h?'PX&-\(4ecUX4!<r`4!X8i5"0N'_"U4sUmKD>J!<*=r%\<_%ed]n8Q4!Zs&EX&p!sb1oFb'PsO9$Y),dm[Qzz!9OIc!9aUe!9aUe!9aUe!9aUe!"f22!"Ju/!3?8&!*TU-!*fa/!+6$3!+6$3!+#m1!)Nn#!)Nn#!)Nn#!&"<P!$2+?!8dkY!5Jg>!5\s@!58[<!58[<!58[<!)Nn#!)a%%!)s1'!*0=)!*0=)!6bZJ!6tfL!6bZJ!6bZJ!6tfL!*oR)!&OZU!"&f.!9==a!9==a!9==a!6,6D!6,6D!6>BF!6>BF!1X8o!1X8o!4W76!4W76!.b+M!(Hqg!4)b-!-AGG!-AGG!-SSI!."kM!-e_K!-AGG!-AGG!9++]!;HZs!;HZs!;Zfu!;Zfu!2fes!*K:%!71fJ!29\u!2Ki"!2]u$!3-8(!2p,&!3uh0!42t2!42t2!"9)4!"&r2!;6Ts!;6Ts!#,Y<!#>e>!#Pq@!#c(B!#u4D!#u4D!8.>P!-8,?!6tZH!1jDq!1jDq!+lH9!+lH9!,)T;!:p0j!.=hI!4;n/!;ult!/(=P!/1IS!#,V;!#,V;!#,V;!6,6D!6,6D!6bZJ!6bZJ!#Ye;!1Nrg!-JAD!9==a!9==a!;6Ts!;6Ts!;6Ts!;Zfu!;ls"!;ls"!;ls"!#c%A!#Pn?!#,V;!#,V;!)imu!3ZA&!.FtL!<**$!<**$!<**$!<**$!9aUe!9aUe!:0mi!:0mi!-&#>!5JR7!0[Kb!%8'P!%J3R!$DLH!$DLH!%nKV!%nKV!07-\!6tQE!/UdX!$DLH!$DLH!$VXJ!$hdL!$hdL!3#u!!87DQ!.4kK!;Zm"!;m$$!<*0&!!3B*!!!6(!!!6(!;6Ts!"oM:!"oM:!"oM:!4W76!4iC8!4W76!4W76!4W76!'gbh!($nj!(7%l!'gbh!'gbh!([=p!([=p!(mIr!)*Ut!([=p!([=p!)Nn#!)Nn#!,;`=!,Ml?!,`#A!+lH9!+lH9!#,V;!#,V;!#>b=!#>b=!!*-$!!iT*!.P%M!!!0&!!!0&!!!0&!!3<(!#kt>!##A5!.k7P!!WT,!!WT,!%nKV!&+WX!&Oo\!&=cZ!%nKV!%nKV!'gbh!'gbh!58F5!.aqI"pX&iU&bH&g'",NSHms`h>oSO#3Gpem2cK"!AfE6#5/'R"pX&oU&bH&!ho]"ScT+i!W<5a!hKHQ"pUY#OTD!W[/lj#3!PrU#,;4$-\Vf^!B@an[0#1c3/%sp#2TBI!TjDq#+GVt"p1M"h>ua>/L(JF!=#+rc2e,5-3a\N"el#%"p1M"#+bl#T`MP+jT;"T3!KSY!g*LXm/rp]3!PrU#,;4D"qJoZ'a=m!!?.L6XVK[n36_QU#2TAP#0m5RScR+;#*&^2"pUe&U&bH&h>nOc#L+4E!B@asr<;$Y3.7>$h>oS?"ur=X"pWob)P%,p,2N>[#0m5RScR+;#(@m'"pS$2"p1M""pUY#OT?IkScUkU#+bmY!Q>:t!M0?P#+bl#UB/X@"qDsh%fQeM"pWob)?pBWU&iLC%aG(i"pWob)P%,`(u>9Q"pX&iU&bJD!=#+rc2e,E-Hu`)c2eXa#-&$)!<r`0U&bH&ScY#Tr?mR0ScUkU#+bmY!OW*m"eGcT#+bl#UB/X@#"Bra"qJoZ'a=k3)P%+m*SpfVjoI+>RfV@HjoMRe,6e@t!>G_Bnc>Hc%W2KL!<raO)?pCp)?pD#!?).HncYZf"pP.'!=#+s#,)(J$KV>\!]UAgScY#TSH?2$ScUkUScT+k!PJ^9"l98QI@UPu!B@2/jT43=36_Qe'A`aLjoHh6RfV@HjoMRe,D?`[#2TA?]`GMBh>oS?#-e6(!TjE<#6pXuh>ua>/L(JF!=#+r"pWcdU&geiN>::N35#Op"l98>I>%p_!BA=+Ka6H83%_fVh>oS?#206T!<r`0U&bIi!X>>!h'V4bScUkU#+bmY!L41L(nLdg#+bl#UB+X1c2eXa#2TA!SHjiXh>o#/#+5Oe!=]Oa!>PeCh>nOc#ON5^!B:i!joGM%!XA&n1\D@bp&QrR(?PX+"pW3TU&bH&!ho^e!X8jUXT_.b!]UAgScY#Toa]LlScUkUScT+k!QG/<"U:FsN<.T:*hNJY!Mp"G!K7$`#,2?s!=$gM#+bk@!=!]obm"['!>PeC^]L52"pP.'!=#+s#,)'g(PN]t!]UAgScY#Tblk^'ScUkUScT+k!<r`0U&j@(jX?,j>E/cm&rm%6!OW>r!fd>*#)30`T`KlLNWPIc,6e@,!g*NF+MAAA!]UC=!X>D#h>ua>XTTjQc2e+dc2e+b-=%,,!>PeCh>nN!#+>Xg!<rag!?)19"dT0<Q2u,o!K7$`"sTcBjoOoQ#+GYM!TjEb"=",r!=#+r"pX8mU&bH&!ho]"ScT+i!PJb=ScUkU#+bmY!Sn.F'qPId#+bl#UB-Y]"pQug%L/L*9:c0T$_@BX!M0=O(7kPc!<rbf"Khb0(?PX+h>ua>]`]SB!S7GYRfN]ti<#_S"pP.'!<rb"!g*Ms+H6Vt!]UCU!X>>!]ccD<ScUkU#+bmY!R2>7&Y9%`#+bl#UB,ds#MoJ@bl`Y)L(2Z6/\MeR!B:;/!=#+rc2e,%-Hu`)c2eXa#5SIs!<r`0U&bIi!X>>!PpsZqScUkU#+bmY!Nca3,+\iq#+bl#UB(SE!=$.:c2e+r-=%,,!>PeCh>nOc#PAYb!B@asr<;$Y3!KTG!MTT!"p1M"#+bl#T`ONqjT;"T3!KSY!g*MK*rRCV!]UCU!X>D#SHm+Kh>p*Z#+YqS!B>Lu"Ps/=blcK/h>oUu!T+(cRfV@HjoMRe,6e@.#,2.D!<sSl>n5-\'a=m!!?).HW!8ss"pWob)P%-#+5R#X#0m5RScR+;#)3.*"pV:4U&bH&h>nOc#LsCB!B@an[0#1c3!RY/#+bk@!<ujWbm"['!>PeCh>nOc#Gid(!B@an[0#1c3!RY/#+bk@!=!Eg>n5-\'a=l0!ho_P!TjEr"=(S\[0#1c3/%sp#2TA?#0m5RScK$"p]I5ko`NJ?c2eXa#2TA!SHkDqh>oS?#2'0S!<r`0U&bH&ScY#T]b'i;ScUmC!X8jU]aaW8ScUkU#+bmY!M'hI'qPId#+bl#UB-Y]Se(3.,6kjeXp6DI!Hjt7MufLN"pR!I,Lm!i!B::d%]08\!N#nj,,PC"!NlG-"u!+[Ffkb(!NlG-"u`mj#,V_1[K-R:2?pkr#,;2'#3Z;d!<rbb!?.L6PnW!T39C89!sY4qh>ua>XTTjQc2e-@!R:]M2C?ZQ%aG(i"pUb'U&ghk^)O3X?Np_u"JPntz!!)$R!<r`<s8W-!s8W*(!<O)B#8I4=zzz!!rW*!"8i-!)E^t!2'St!2'St!29`!!2'St!1X;p!-A2@!3?G+!3?G+!3?G+!%e0N!$2+?!)<Xs!'^G`!%@mJ!*9:'!3c_/!3c_/!3c_/!!3-#!1X;p!1X;p!0R'X"pWc_U&bH&dK6-D"pW3OU&bH&!ho]""u_SE`<8%V3!KRFOTD9Zh$#\r"uZ[\!S%5e%L*^9"W!$t"pW'Q-e/86%L*+A!ho]:QNm_a!>ZaD"X=3Unc>HcSeA1-mMo:4"r9H.(>8d0"pR\o!<r`0U&bHV#,)'/h$,bs"pQuJ!MojW#<"OG2?ooW"pPi.(0LhC"pPp=!<r`0U&bHV#,)(J"GI+>3!M8FT`Ofh[08HJ"pQuJ!PJQ2"ZA=E2?ooWeH-Kr(^:0cL]J84m0+^=('^N7"pPhj"pQ!?!=f;<$3h!%!?D@KVu`Un"pP92!<jc$<B13h1&q:Szzz\,ZL/$NL/,%KHJ/:]LIq*rl9@'`\46<WE+"/H>bN,QIfE;?-[sXoJG%XoJG%XoJG%XoJG%YQ+Y'YQ+Y'YQ+Y'=TAF%3WK-[;?-[sU&Y/nU&Y/nU&Y/nU&Y/nU]:ApYQ+Y'YQ+Y'zZ2ak)Z2ak)MZ<_W8H8_j>Q=a(YQ+Y'YQ+Y'YQ+Y'X8i5#X8i5#U]:ApU]:ApUAt8o<r`4#<WE+"\,ZL/\,ZL/\,ZL/\,ZL/U]:ApU]:ApU]:Ap^An66B)ho3=9&=$d/X.HEW?(>:]LIqScA`jScA`jScA`jTE"rlTE"rlnGiOhJcGcN:B1@pV>pSrjnSo]#-nK.!<rb.#GM5'#,2?s!>YkD+r1B_"*+SM!ho]"#"FFMXT::K3!MhVT`M7rjTS+5"pRPZ!JLfe!Cf$Q7L#Ug"pP9"p';]DcN/_1()@W3jTc9S!<r`0U&cm3!Y1.i-5Ip;#.amP#mLS8U&bH&7Zd`="-j$Z3!KRVOTD9[N<_p4#"Afl!B+eL"cNHd2BX"E"p1M"#"Afj!NcQ+7Q:SV7Zd`%"-j!Y3!MhVUB(Q'ncb-VXWSrC't#+f4u3Bq#+bi""p1M"2XM&&Mua,@OocX.#4_eh!<r`0U&bH&7Yq0%!egnL3!KRVOTE]-o`mrG#"Afl!TjLO&13>:"u[SE"pP.'!<u!tT`KiK<CSqP#"F^U-054u3!MhVUB(Q'+tp&@-8$%@*sOnb"tg+O!<rar!MTT!#3#ZX!<t/c*<l`5!MTUt't+Y@#91&P"u\7q"pQ7e"pRMm)&<u&('Xtk"r7t]"pPp=!B.Ul-B%s02@:H/#&0e4('^E5EWu^\U&bHN+<:XjVu`Un"pP.'!<u!tT`L])AO\W`#"F^Um0VSO7Q:TA#,;2'"pRJL&/HUb!<s;T?Nq8_oDo.#\H/E*2SB,<Mua,@+<:XjJH;JG"pP.'!<r`tOTC^oPm'W:"pRPZ!S&'A#=^ZW7L#Ug2Jq"RMua,@d/b6l#,qZu!<r`0U&bHf#,)'W'?pYL3!KRVOTFPPXVXGd#"Afl!JM%"()81X#7e*A/sQJJMub7@-4L/%((%Ab()@W#"pTJk%M!H[*#9<^!<raZ!MTT!"p1M"#"Afj!Q>]-!Cf$Q#"F^USKc$$7Q:TA#,;2/"pRNh#S%>k%L*,c((LO;"pTVZU&hY'"u\7q"pQ7P!=/rHzzz!!!#=$ig:;$ig8:!!!!-!!!!"!!!#/$ig:;$ig9l!!!!B!!!!7!!!"."onYC$ig:I$ig:I$ig8b!!!!M!!!"-"onYA$ig:G$ig:G$ig99!!!!f!!!"-"onY9$ig:A$ig:?$ig:?$ig:.q#L[(,,,)B"ra3:"pP^7!<r`0U&bH&##kd2!ho]"4pI\][/ji&3!KRNOTC.Am05a6#!N6d!=f;<$3gt_N<'4f\c\Z-ed1C>rX4&W"p1M"4pD4<:$i!G3!KRNOTGCbh#T]!#!N6d!?MFLH#8iS"pQ.6!X=P`"pTY]U&bH&!ho]Z"pTGI#*f?U3!KRNOTG+V]`LAW#!N6d!<sSLScR@d*Zc%#<e_&?"pP.'!<r`0U&bH^#,)'W"/Q/b3!KRNOTDQgm0#U4#!N6d!>YktYQ5Ll"q:b@*f'i_%itpTSHT3E1Bn&.U&bH>#+bjl*?H7:eI`!<1Bn')!MTT!"p1M"#!N6b!PJ`o!BrII#!RkEV$$)d4u``N5*5jlN<2:'#!N6d!T"=##6kk'"s+hS!MpV;/i*\Q#+bjl*?H7:jV.nO1Bnm)ScPZ.*Zc'X,R,kW"pV=5U&b`.('4(M"s,Q)%MiIW#-e3'!<r`FU&b8r"cr`k%0-A.!rr<$"TSN&z_u]o=%fcS0&HDe2?3($+^&e97^]FK9^]FK9^]FK9^]FK9_?'];z_u]o=^]FK9^]FK9rV-Bt"tH>J"pQ9G!<r`HU&bH&&u#E0%upq@(fpnG##kd2!ho]"7L#OeV$-Gm7Q:SV7Zd_J">rY."pRPZ!Q>91!_,-R#"F^UN<K1a7Q:TA#,;2'%L/[/"pTeb5E,[b#+ko;h$9e]MuiSR*Zc%#"tggb#DEpG3&[*(#+GWG2Q[*,"s*u?!?MF\-3aZ&U&b8u'`nRN$4.OL!!!*$!!!B,!!&,^!!!l:!!!u=!!&2`!!"DL!!"DL!!"JN!!"JN!!"DL!!#Ff!!"JK!!&;c!!$(#!!"nW!!&Ae!!"JN!!"JN!!"PP!!"\T!!%3C!!#Xl!!&;c!!"DL!!"DL!!"DL!!&Vk!!$%"!!&Ae!!"JN!!"JN!!"JN!!'D,!!$g8!!&>d!!$s<!!(gT!!%KK!!&;c!!)!R!<r`0U&bHf#,)(R"m#nW3!KRVOTD!VKa:.-#"Afl!>YkL!Q>-V%\EbC('\RZ((OaWm3iGU^'"oMPQCFk%Ls5m!?N#K!<r`0U&bH&!ho]"7L#Oe:"9863!KRVOTGCbh#Tu)#"Afl!?Qq!*fL-=!@AT&!@HV>-B%um#;.&%-71?./d;MK%L+Nj"qDOl"pX>oU&c#6&on0\Z2p[#"pP92"pP.'!<r`tM#m8PPm'W:"pRPZ!VHZI"@b?T7L#Ug^&uUl-B%s0/m02!#'-F=od;@=T)g8C2C:$\#(6[[!ho]""p1M"#"Afj!?G`@3!KRVOTDQc,t9iu7L#Ug"th)^"pVpFU&bH&#"/Y"_#^82"pUe(U&ckN"sO6U!ho]"#"F^Ubm1'G7Q:SV7Yq/j#F,H^3!KRVOTCFCo`[fE#"Afl!C!V#^&s;p"toBG*<l]LU&bHf#,)(*"B@oN"pRPZ!TaKE.7Q9$7L#Ug"pT+V!>_LT%ZCDm(4ZH,"pRDg!<r`0U&bH&7Yq0E#GhGj3!KRVOTDR'[0B)[#"Afl!T""b/g^c,klILZ]`])tT)fu[#,hP,n,X:2"pP.'!<u!tT`KiiblgKq"pRPZ!M(7])+HRi7L#Ug/u9^$QN>V\/hRl&`<.HG!<r`0U&bHN#+bi"0(8l^"pP.'!<u!tT`LDh<CSqP#"F^UoaR`-7Q:TA#,;2'#1*F)!N$OM%A")u!<r`0U&bHf#,)'g,0^6[3!KRVOTD!sV#a%F"pRPR!M(F""\(HU#"F^UoaHNp7Q:TA#,;4%#K6eZ"%<DHn,XO6"p1M"#"Afj!Q>sW7Q:SV7Zd_2%E/rL3!MhVUB(Q'ci^!C!<NT@z!93bS"pPS;s8W-!s8N<)!h98p#7LS4zzzz!"/c,!"/c,!13lh!%\EV!%\EV!&+]Z!$;1@!#P\9!1!`f!%nQX!&+]Z!&+]Z!<)Zn"pSh:!<ra;U&bH&>+u$%##_/r"pP.'!<tFdT`ONbPls!)"pQuJ!L3iM!B)nA2?ooW*[[ul3<frtScK$"%OVGb##kd2!ho]R"pTEKSHUo2"pQuJ!NcCA"u\FF2?ooWN<'M!T)fGX#7c[no`L3^%M]0P*ZCRSjU3+h-KbL9RfN]t+JJnn!fe>Q!gE]d!<NE2zzzz!!!!7!!!!.!!!!-!!!#>!rr=_#64ac#64ac#64bop]1R',,,)B"ra3:"pP^7!<r`8U&js(^&uXb4pD2mU&cSF#()=6SHU?""pQE:!JLgH"su;6-3g4G[0"#B##b^1%R?j7jpDS5%L*,_"pP92!<=nDzzz!!!!Q!!!!Q!!!!-%0-A:%0-BG!!!"<!!!"<!!!"<!!!"<!!!">!!!">!!!">!!!!B!!!!7!!!!V!!!"8!!!"8!!!"8!!!":!!!":!!!":!!!":!!!">!!!!`!!!!D!!!"S"onX<!!!"6!!!!%!!!#S!!!!O!!!!t!!!!P!!!!R!!!"-!!!!V!!!!V!!!"(!!!"*!!!"=!!!!]!!!!Q!!!"6!!!"I!!!!d!!!!N!!!"U!!!!m!!!!"!!!!'!!!!O!!!!O!!!!O!!!">!!!">!!!!5%0-AD%0-AB%0-B!%0-B!%0-C5!!!"*!!!"q"onWo%0-B!%0-CG!!!"2!!!"P"onXd!!!"`!!!"`!!!"b!!!"b!!!"d!!!"d!!!#T!!!"@!!!"V!<<*4!rr>&!rr>(!rr>&!rr>X"98G["98G]"98G]"98Gs$ig81%0-A4%0-A4%0-A4%0-Bc#ljsa#ljs_#ljs_#ljr7!<<+b!!!"'!<<,2!WW55!WW53!WW5i!WW5k!WW5i!WW35!rr<6!rr>Z"98GQ#64bV#64bT#64`<#QOi=#QOk!#ljt$#ljt"#ljrn$NL/r$NL/p$NL1r$NL1r$NL00!<<,*!!!"=!!!#[!!!#]!!!#[!!!#[!!!!W!<<*l!<<*n!<<*l!<<,.!WW5/!WW3O#ljrT#ljs1#ljs3#ljs1#ljs1#ljsm!!!"f!!!"f!!!"f!!!"[!<<,E!!!"+!!!#S!!!#U!!!#U!!!!7#QOi=#QOiC#ljrF#ljrF#ljrH#ljrH#ljso!!!"f!!!"j!!!#5!!!#7!!!#7!!!#4!<<,\!!!"4"onYO$ig:S$ig:S$ig:u$NL1r$NL1.$ig:1$ig:/$ig:/$ig8M#ljrH#ljrT#ljrT#ljte!<<,p!!!![!!!"H!!!"F!!!"N!!!"L!!!"V!!!"\!!!"\!!!"^!!!"^!!!"^!!!">!!!">!!!"B!!!"B!!!!'%0-A4%0-A4%0-B3!!!"&!!!"&!!!!g!!!!g!!!!g!!!!g!!!!D!WW3>!<<*G!!!!m!!!!m!!!!m!!!!a!!!!a!!!!a!!!!a!!!!c!!!!c!!!!c!!!!g!!!!g!!!!r!WW3P!<<*F!!!!k!!!!k!!!"-!WW3e!<<*C!!!!e!!!!e!!!"W!WW3p!<<*<!!!!W!!!!W!!!!W!!!"o!WW4)!<<*@!!!!_!!!!_!!!!_!!!#6!WW48!<<*=!!!!Y!!!!Y!!!!Y!!!#T!WW4D!<<*I!!!!q!!!!q!!!!_!!!!_!!!!_!!!!_!!!!a!!!!a!!!!a!!!!m!!!!m!!!!m!!!!m!!!!o!!!!o!!!!o!!!!o!!!!2!rr=[!<<*J!!!"&!!!"&!!!!@!rr=b!<<*?!!!!]!!!!]!!!!N!rr=i!<<*D!!!!g!!!!g!!!!\!rr=u!<<*>!!!![!!!![!!!"VquI!+Op%K["pTqfU&bH&JcqeK*rcEKRfN]tq@fS(ecOh6#)`Kd#.ai0!R:_s!R2E*XoSaP!@ZM"Ka#HsMuhK1eJ?^:Muh3)"pTJ[ecFV5GLceh%gIpm"pT+B!<r`0U&bH&NWY+=V#j)G"#pJhNWYCEr<D'YNWV6FNWTK\!R;2+!M(S_#0m5RUB0cc#0m7I!<r`0U&bJ$!R:^Bc2e+R2?q_5#,;2'"ur=X"pU4mU&bH&h?"T"#3Gt*h?)g@jVfB#!X@3W-3a\N!ho_H!M9GuRfN]tGbP5Y%,MuT'FhJmjo_J$9Ek\<U&bH&!ho]"NWTKZ!NcFJ"HERD"pU(iOTFhP`<VD*3!PBF#,;4=!JMSt!K7$`7a;$2c2e+R2?j?eU&k6&ec>t8ecC""MZF"d3hcYX!L4BXMug?f#-JE#!PSU.$O.:+#/1,P!>VFZ#0m6*#/1*BScK$"T`Lkg"pWHUU&i7:V?$mc!KA.t!N#l4ob%J;!AaqW!=#+r"pP.'!<raJU&bH&!ho]"NWTKZ!OW'L"c`[E"pU(iOTGC`XVQp!3!PBF#,;2'"pUCp"qId:0+Pr;%ZCE([g!&+!?S*B#$2kG%gIpm"pVR=U&bJL!U^%U"pTYeU&j*O#2TD.joX-=#+GYM!X8jSh>mi;![\*U!ho]""p1M""pU(iM#l-4blNh,3!KSI"-EVl"19J9"#pLF!sYM$NXL%8RfV@I"pT>W"pS&`!X@3W-3aZ&U&iO@#2TD.N?AGf!]/[7"pTJ["u2hQmK!LrIJ*^')%MT+p&W\_p&U*QrW2*u%ZCGf!JLm[!K7&6!p(:0Mua+eWWf*t"pP.'!<rag",R&l,c([)"#pJhNWYCEoaHNhNWV6FNWTK\!PSW%!sY4q[KQj>H/8Q+[K7ei!iH8-RfTr!"pT>W[K6Z.!T!h]^&fY$!l"mCRfN]tM?9LQc2smF#+GVtecH&N!T!mT#R2'(+9ps01Bn&`#bh@V!=$gN-Ir7u"9t=rc2n1SGm4KD!MTT!"p1M""pU(iOTC.aXTFLb3!KSI"-EWO!Sms?"#pLF!sYM$"pP.'!R2;N)ZBeBrW9bX^&rA?%K6G.!d4bPp&^?Wp&b3pbp=S=#5/+\!R1b<(\Rni#5/*&UB(Q'NX20Vh>mhh![bV_k62'Z!O`%6#'o&+#.=R[^&kbE#+GY%!X8jSh>mhh![\*UJHMVI^&eKCH/8Q+^&fY$!oF%`RfU5)"pTA0!=$7>-3a\>!ho_P!=$gN-Ir7%"pUOtc2n1SH/8Q+c2o?D!fmBeRfUe9"pTA0!=$gN-3a\6"/5f#"p1M"#*&ciT`Ki[r;qu]3!KSI"-EVd+3b+P"#pLF!sYM$#,VG+UB03P#-J"S[K<W6#13IS!X8jS"pP.'!NlKb!sY4qh>mhh![bV_rrE=n!O`%6#'mWYjX9HsMua+e\HAQ,ecPjT#+GY=!X8jSh>mi+![cJ"pB1\i!R:`N#'gCWM$0ORL'!ncL'!;7#*&cQ%O$i6`>=O9Mua+eM?0FP"pP.'!="Pd#,)'_.?t1!"#pJhNWYCEXUD6TNWV6FNWTK\!L<ck"rdaNQ3%s/#+bl7"pV%.U&i78Nr]HS!PSU>#'gEe!X>D#`WF[/V?2\W`WGfY`WD)"c2uN7V?2\W"pV@6U&g8UjVa'[Mueq?mK'-j,E;iW"U:Fsh>mhH![aK?[fQc'!<rb=!MTT!"p1M""pU(iM#ikbN<>1C3!KSI"-EWW'=A1-"#pLF!sYM$h>mi+![acR^B4\0!R:`N#'gCWf`n/OecOG(#+GY=!X8jSh>mi+![cJ"<sG,pc2n1SGm4J(!MTVG!f$g]RfUe9ecPLi,MiG*c2o<s#,q^!!<r`0U&bH&NWY+=r<SAfNWV6F#*&eJ!W<M)+-$F_#*&ciUB/pHh>s/U,MiI)!sY4qecFV.[3?j8$-r_YRfV(@h>tS',MiHn"9t=r#3GrX"X3"/]bKT0Mui>IXX3*1Muik`#5/'R"pV:9U&iO?#2TA-ec>sZIGP!s!X>+p"pV%-U&j*P"pTJ[h?#)G"pU.nU&h+lm1uQ"MufdVVum6^!<rbf$).HLecZ0jjT^0_'nmV3NWCp?#-%]u!<r`0U&bH&NWYCE[2%3sNWV6F#*&eJ!W<F\.?4Ki#*&ciUB-AUV?dA>jT^_GrW3i-*X82:1EMPW"q:ck!=!B^#*&^2Q3!!K"qq1FM?]dUjT]=/(&]?]Fu(1O"q:cC#&PCcAgVEH#mM%I##_/r*e";&#'L2f*X7'?L&o!r"r$)&L&m#0(#9c4Q2rc_L&hJf#(?bn*X7?"-3a\M!MTT!"p1M"NWTIiH^u7d!KI7A"pU(iOTC^hr=Y+m3!PBF#,;2'"p1M"[0us8SI#As!jrgC!cd$?rW<'#Fp@XA#,)(k!r`7\,U3Ktp&^?WPo#E'p&[2Xp&YGn!TaN'DU8EL&I*\?*l\Wn%0gDKD&rn!-3a[3"el#%"p1M"#*&ciT`P*"]cE+83!KSI",R'W$`*la"#pJhNWYCEbn07hNWV6FNWTK\!T",8#!s@82C:WE$3h.J#'-F="pP.'!="Pd#,)'W)YF,k"#pJhNWYCEm0qMYNWV6FNWTK\!ESms#4hlW#$+b>oc46K1EKR$%0fQ3D&rm^-=6ZW"qq1FdK-'C"pP.'!<rag"-EVT,E2hd"#pLF!sYG"SKlqkNWV6F#*&eJ!TamC*KC4]#*&ciUB0H\51U!=V'lOC1EJ^a%0e]pD&rmF-:[\7"qq1Fq?!Al"pP.'!<rag"-EW');P=R"#pJhNWYCEXUpI0NWV6FNWTK\!NdRNjo[C\ScK$)#*o8oD&rnQ!@A!THD1H%#$tUN[0[%T1EKj,%0fi;D&rmf->&PF"qq1FM$B[TjT_"OQ2q`^*<rAA1EMh_"q:cs!=!B^#*o9:ScR[P"r$)&ScPD`'a=li!MTUl!WE*('BKFq!N#l4XW[nW!Abdo!<ru;ScK%4^($q?#*],m#,qm&!D^'5"r$)&:/2P#(^=;&*_lnK#"Af6*X5@d"pV%0U&fH:"U5Y%#'P/)V%<ic!Abd?"q:cS#&PCcFs[CtJI/%O"pP.'!="Pd#,)("&`!JJ"#pJhNWYCEr>4Q;NWV6FNWTK\!TaMT7ME``#$*N$7Ks;+4pGjF#"BpD#13IG!<rbl"/5es![IsT'`\46zzz&.&=:&.&=:%0-A.%KHJ/LBISW&.&=:&.&=:$jcn6!XSi,$jcn6$jcn6$jcn6/H>bN+ohTCJcl&R"pk80#RLJ2"pk809`P.n0)ttPJHPrQIK0?J!WW3#!XSi,Pkb=a#5SCq!<rc!!ho]"#3l8a!<r`D-O'cYU&bH&!ho]"2?oiU[/mZ=2E1mF2N\#o#jhgS3!M8FUB0HZ((LNQ"s067(*<DT,6enfUB(Q'(nq$8"pS$2"ra3:"pPi."r8@&"pQKM!<r`0U&bHV#,)(*#DEFA3!KRFOTEE)2)[Du2?oiU`<FKh2E1mF2N\$:!keXn3!M8FUB0HZ((SFe(B"9j%Z:>l"r8TJ";VIO*leHhRfO9Gr;e,I#(Q`K!<r`D5SfF^#)`Kd"p1M""uZ[Z!NcE'2E1mF2N\%-"N:U(3!M8FUB(Q'L]Kf%$+:&H(,$.%"ptPEO9$@+#&0e4!<jJV(^pNR2?3^Wzzz8-8hl8-8hl8-8hl%fcS0%fcS0])_m3+TMKB'EA+5U]CGq.f]PL*<6'>XT8D%4TGH^+ohTCV#^PrEWZ:AEWZ:A9)nql0)ttP\cDd2:'1Ir:'1Ir:]g[t:]g[t;?Hn!;?Hn!;?Hn!:'1Ir;?Hn!;?Hn!;?Hn!;?Hn!Aci#5Aci#5I/j6I7K<Dg\H)[1jo>A]6j!DhP5kR_;#gRrWrW2#V#UJq<WE+"V?$YsY5eP&@K6B.V#^Pr!WW3#6j!Dh6j!DhD?Bk=D?Bk=C]aY;C]aY;C]aY;D?Bk=D?Bk=D?Bk=@KQT1@KQT1@KQT1?ipB/?ipB/?ipB/kl:\`GlRgE\H)[16j!DhpAb0nMuWhXU]CGqHij?Kn+ctg#)WVZ!<ra[#,2,&#5SLt!PSRM"sk%b#6p(e"pSP2!<r`0U&bH&7Zd_Z!B!>+"pRPZ!K@6$"@b?T7L#UgecuDV$t]\J(7bI1#3lGf!="Pj()I/jZ3;6Q"rO'8^',8VK)l/\Z3I$("pP.'!<u!tT`ON_eJUh9"pRPZ!SmeL!_,-R7L#Ug#"B@J"r8!Q!<s=*",$[Z#0I(C!>Z.L72?(32?jrn"<@[Nq?!Al:)4%d!<rc)"JPo$"p1M""pRPZ!Mp#Y7Q:TA#,)'o#OMU_3!KRVOTC.=blL9n#"Afl!=&N0h?@6j(@hVL"pQcU!=#t6(*!Mo\cEhs$3h8X"pPj6!>Yl_";V1G2?j?mU&bH&TE1bfm0=[R"r86qTE,64(+0:j.A?jN!X@cp8-T:H!ho]""p1M"7Ks'Dr<+uI3!KRVOTDQdbm-]t#"Afl!B0?S"sk&U!X=P`"pU.jU&js/?JZ21"pTqeU&bH&!ho]"7L#Oem0Qc^3!KRVOTDR"V$KOM#"Afl!=&N2(.nc8(7bI1#+tuI"r7t>*X9%U"<IaO2BEWs!<iZ3\H8K+"pP.'!<u!tT`N[]jTS+5"pRPR!S&&F7Q:SV7Zd`5#h92M3!MhVUB-qs"pQ1c"pQsi(4$u*#4MYf!=f;<$3h!'!?D@KGbP3SGQs',"pQQO!T!qp#&"d;+r6+<"pPj6!GrT!"pP8lU&bH&Yl^X#Sd#B7Ad/GTSH/p!W<8jq#1a8"*!R1h"!%RM0qn[a"pQsi(:jMe"pU_%U&bIQ"VqmY(8:gM"pX#gU&bH&##kd2!ho]"7L#Oem38Y=7Q:SV7Zd_:$cO#R3!MhVUB(Q'!ho_g(,hEp!]JR:2K?\`2E#^_"tk`5/iJt8,6e?)OTFhZm34/B"tg,5!PS^A"uZZ$T`Q5=#-e9)!OVt5Q3Tqb#,qWt!<E9@(*3GU!!!#Yp]1R'%fcS/s8W-!#6>'P&60EAO9#M$1B7CTzz#64`($NL/,)[-3AJdMJX)ZTj<&HDe2<WrI'.LQ4V/.2FX/dhXZ0FIj\-49eR-49eR-49eR1B7CT+92BARKWZk2@BKb3"#]d3XYof4:;,h4pq>j1^a9`1^a9`;#gRr/cYkON!01]?N:'+1B7CTN<K:^*X_rJ*X_rJX9nq-((1*B((1*B((1*B1^a9`4pq>jGlRgE70!;fP6Cpd-jp"T-jp"T*")`H((1*B((1*B((1*BX9ek,YR(:0j9Yedj9YedT`>&m<WE+"<s8R(Z3gR3YR1@1X9nq-X9nq-U^7#$W!NG(WX/Y*WX/Y*z_>+*9#0I+D!<rbF"el#%"p1M"[K-R:HaNmV!O`"g#.=O:T`MP%eH*)Z3!KSq!KdEM!p'Hk!B::l!=#;"DLVk[!Ht(=#+GXQ!PSjui;nD0*e'%Ko`KYl'a=l&!?).HncPTe]a"E=NWD+fN?sSc36_QE&rluP]`GMBNWD*DIKlAEIKgQ7"pP.'!<r`0U&bJ,!=#4u]`R!j[K/>l#.=Pp!CbN@[K/>l[K-T-!F7=,[K-R:NWC&h#F,@N!B@asr<82^3.6c4NWD,a"2tn5!B@an[/u?h3!Og9ScK$"Oo_9X"pP.'!<rb:!KdE%#Ls'f!B:8f[K2Kko`V)r[K/>l[K-T-!M'J?-ADsh('^'*!Tb($ScLX4)@!&>1BnV\!F^uhQ3"Z%,F/A&!=#"o"pU4kU&f]I/g_#[IME%kNWC%&#*Aq\!Ib4o-3aYY<!EO.U&bH&[K2Kkr<05'[K/@r!<raTr</Ah[K/>l#.=Pp!MonC#IXXm#.=O:UB+Zg!ko0["pU(g)P%,p#EAgE"pTkaU&g8TQ3")j,6iT$ScO9E-7/p$JH;JG2Eh>D!DZr*Vu^MF"pUOt"pPX5!<r`0U&h\'"pTF^"/Q./!B:8f[K2Kkh'Dq([K/>l[K-T-!M'J?%#t?JQ3$^]#+GXR!NlO,"=","#+bi"#,qZu!=g.TVu[),-5m'm/fFouR/s#_"pQNN!S.G:#0mJd!<E?1&HDe2zzz#ljr*%0-A."TSN&$ig8-%KHJ/$31&+,6.]D(]XO9$31&+1B7CT*rl9@!<<*""onW'"onW'"onW'#QOi)#QOi)zS,`Nh:B1@p/cYkO"98E%OSJn]#.ai0!<rb6!MTT!#-%]u!<r`0U&bHf#,)(b#2K;L3!KRVOTD9Zh$$8-#"Afl!@A!T7E$Ju-N!lK"u[A("p1M"2BIPt,LmU$"u\FF"st#g"p1M"#"Afj!W<,n#"CQV#"F^UeH_oP7Q:TA#,;27"stZD"pV=5"pP.'!<r`tOTEE)m/fa:"pRPZ!CbN@7Q:TA#,;2'"pUCpc3+=e/HuE^$9SM.*Xr;pJ,pYp"qmX2"pSe9!N$Y#(nLu!!<r`0U&bHf#,)'o#GhYp3!KRVOTEu8blL9n#"Afl!O`%6-HQ8m-@c+;"pPp=!<EE,(^:<W&f(jP!!!#[#ljtd#ljtd#ljrF$31&G$31&G$31&I$31&I$31&I$31&@!!!!3!!!!-"TSN:$31&?$31&?$31&?$31&Z!!!!A!!!!,"TSPf#ljtj#ljtj#ljtj#ljru!!!!O!!!#k"98F/!!!!T!!!#j"98Ge#ljs@!!!!\!!!!%"TSN0$31&5$31&5$31)$#lju%#lju%#lju%#ljs\!!!!k!!!$!"98E%$31&+$31&+$31&1$31&1$31&1$31&1$31(&!!!"&!!!#u"98H$#lju)#ljr<$31&=$31&=$31&9$31&9$31&=$31&=$31(J!!!":!!!!%"TSP[!!!"F!!!!'"TSN4$31&9$31(s#ljtr#ljtr#ljtt#ljtt#ljtt#ljtt#ljr3!<<+fz"TSN,$31&1$31&1$31&f!<<,!!!!!&"TSPp#lju!#lju!#lju##lju##ljs4!<<,+!!!!+"TSO:!<<,6!!!#i"98E7$31&=$31(m#ljtl#ljs\!<<,A!!!!*"TSNN$31&S$31(#!!!#a#ljrX$31(1q>pO7%L/O+"qK>q*<l_"$_dYKPo1X%!<s;l5f*mU/oq4D-9rV!Po1eN#-&'*!<r`0U&bH&<fmF]#,M?$3!KRfOTFPEXT;H^#$(r'!<slg5TV8S)']=i(nq&M-6=KKbom9L1Bo01ScK$B_?q:f"p1M"#$(r%!PJPg'im9u#$-ie:$i$`3!NCfUB)^D)'4_;"r8gV(a^kp!<ra!U&i48%N_5C%_W#UMuaF2"U9kc"pTCJ!<r`0U&bI!#,)'o+OpKn3!KRfOTC.=N<<3@#$(r'!JLUc"uQmE'Fp'&"r7[r"pT(A!JLUc#+ko+]`Sb'!=l4?%ZCDm%Lsij#'lpD"pVpNU&bH&!ho]"<X,5uV#uDW<]C9f<fmD'K`Y:7#$(r'!=fn,(F.H6%Q4S&h#e.G!<rc!"el#-(;0lA`;pGa"qE!!!Cm=uHD1EE"p1M"<X&bTN@?_c3!KRfOTE]3r?kW*#$(r'!<skd5RuocKbPbc!tGO-!<skd5R%Fu"/5f+blnT9!<skd5RnRK![@mROo_9X"pP.'!<uR/T`L])Plt,I"pS+j!Tb<_#Z`nh<X,<"`<-SkT)f-C(-i?Fm1Hi/K`_ehT)f-#d/fsBKc:L3'c%9+%0lY4%LLto('^!(%Ml_],K0`p*hNH;#!&CY"pP.'!<ra/M#ikPSHW%R"pS+j!JLd/%9>Fm<X,<"eHHF@"qKGk%ZCF[$I&_aMugTq(+'4i#+u'm!<r`0U&bH&<f$k5+Ir[:3!KRfOTCFTh'Q/^#$(r'!S%>`2?o`[h#e.G!=m?X%ZCG%"VrEh(;0ecMuaD(]`TLu!tHBE!<rbm!MTV6!tHBE!>a5g"qqI^]`fVb((NU+(Cgoi%L*,c"pV@7U&bH&!ho]"<X,5uPoNe)3!NCfT`MhMK`P46"pS+j!Mq't#$*\f<X,<""pP.'!VIR)V'g!^7LC0D-O*$r7LB?X!Q><K7_&Ohm0uO)jWR)_Fp8.7M#fe0r;n2J#!S.MblkEg4u`a1#,;2/(<$>"eHHF@#)3NA!tL7j"pX8o2$O6dU&bI!#,)'g%F##V3!KRfM#j.VSHW%R"pS+j!M't=$s#=l<X,<"[LCCa%W]5d(+'5$XToW#!=fmI#9sEWf`RrL"ssg-`<-SkT)fEK]`gn9/d=`K#4M_h!Q?B,-5FK1"u\7A-3g%B-EmLTMZF"dO9)'V"pP.'!<ra/M#kjHSHW%R"pS+j!JM/_.98D4<X,<"K`_ehT)lA.]`Sb'!=k)6%ZCDuJcYfRU]CZ(n,f<b%L.ajEWu^\U&hY'"qEF!"pQ7U"p1M"#$(r%!W<o7"BIJd#$-iebmho'<]C:a#,;2'"pX#eeHQ3f1CaTn,-DI%#MpMe!<raBU&hY'"qEF!"pQ7P!!EE)!!!'#!!!92!!!92z!!)0V!<r`4QN79p(-Dd:"rRUL!29M^)6OU<)3+^u!<NH0zzzz!!!#9!!!!.!!!!8!!!!r"TSPup]1R'@\Nl-#$R`%"pRu"!<ra#U&fugjoN1#0*VU^U&bH&/s-1R"J#]K3!KR>OTC.Am051&"tg+T!<rbZ"V_.F##kd2!ho]"/dA!M`<N^R/iX%>/s-0o#5&!L3!Lu>UB(Q'%]0:"(Cgoi"s2%sS,j\5%N^Q0"pQKM!<E9+O9)9\#n[.;zzzz!"/c,!"T&0!/h$]!#Q.F!#c:H!#c:H!#c:H!#c:H!#uFJ!$D^N!$2RL!#c:H!#c:H!#c:H!$2RL!<)Zn"pQ!?!<r`@U&bH&$DIP*"p1M""pP.'!<u!tT`N[KeH&-!"pRPR!NcD$"\(I@"pTFV!M'B`3!KRVOTC^NN<Vj3#"Afl!U^<7"9tV%"pPh]N<(()"Wl2:*fL-m"!/Ku"pQ[uSHku4/iYcP!=#"o/iKg7,6f1nScK$"!ho]:"r8Ni"pS%]!mVU:&-)_3-j0eUzzz!!!-,!!!-,!!(.A!!!N0!!!H.!!!$"!!"#>!!!c7!!%QP!!)fh!<r`XU&bH&,,,)B"ra3:%L0Tc7g90$U&htAQ3P>4!sSr2U&bH>#,)'W#.4UU3!KR.OTCFE`<75A"s*uD!=f;<$3g\MA-NeV*<l]bU&bH&!ho]""s/U%:&P5:3!KR.OTEu;V#h\t"s*uD!T"%c##kU)$4[.Bzzz!!!#G!!!!,!!!!/!!!!j"TSNE!!!!7!!!!k"TSPtp]1R')PR6:"qmX2"pPF/!KJ+Z+79J;"pP.'!<s;DT`N+8AJR60"r<=%Pm-7M(,uL6#,;39%L*+A%LVb-"pPF/!<r`4<!EO.U&bH6#,)&l<>IOu"r<=%XT?BF(,uL6#,;2/%L,?+"qI1)"pRrB!<E<0!X])9)#sX:zzz#ljr*%fcS0XT/>$=9/C%>QFg)>QFg)>QFg)=oeU'=oeU'/H>bN-3+#GYlFb(A,uZ1@K?H/@K?H/@K?H/<r`4#0)ttPYQ+Y'@/p9-2uipYXT/>$ErZ1?5QCcaYQ+Y'@K?H/@K?H/<WN1#<WN1#=9/C%=9/C%=9/C%WVHQ!#)WPX!<ra["JPo$#5SFr!=!i[#mLS8U&bH&2MhJ%#+YoU3!KRFOTC^NjT.8!"uZ[\!R:ue#"=LY%Ls5u"U6#(*Y'M+"pPp=!<r`4<$iXj732Xc-7/p$Gn($%EWu`r!MTT!"p1M""uZ[Z!VHZY"ZA=E"u_;=[0N6+2E1mF2N\$J#Fu#V3!KRFOTD9[]`L)O"uZ[\!VQr(.CKJ?!JMF-%\EbC('_MS[2pA1(!Qmd/i*\Q#+bj\"s+g#0!>KaRfOQO"q:b@%Yt,i#'cjCbln;(1Bnm)ScP)\*Zc%K*X5%;#(!!E"pP.'!<r`dM#i;3SHUo2"uZ[Z!TaEK!B)nA"u_SEN<R!D2E1n!#,;2'"pRI*rWEF@Scl/E%ZCFB)AWgT!?N!\7El>a*Yek`T`Lkg*ZbLp"pPQn!=k\.#"Ae$Vu`Un%L*,+"pPR.!Sn"k%\Eb+%X8uu"sBW@[L&f8V@k<Y!>YY8!!!#Yp]1R'%fcS/s8W-!#6=f.#64`(zzzNW9%Z$NL/,$NL/,!<<*"0E;(Q0E;(Qn+Znf"ra3:"pP^7!<r`8U&gPq^((&F8-T8"U&bHF#,)(*!VHXD3!KR6OTC^NjT-\f"ssPL!=f;<$4[7U-5Hdi(Bt'dU&b8p"UG).zzz!!rW*!!rW*!/:RU!!3-#!#GV8!##>4!/:RU!!E9%!%S$L!$)%>!/:RU!<;fp"pRDg!<r`hU&bH&184db"pQ7U"qmX2PpchP1Bn%#U&jX+"r9!!#$R`%%L*+E%MkT=&I'";*<l]LU&bHF#,)(j!ECI+"pQE:!OVs)"=?)4-3g4G"pQ4+!Nm@7']oaO"pP.'!<r`TM#h0F-9)2V#,)'/h$,2c"pQE:!SmeD""#u3-3g4Gjpr:5TE,6$.&$_C!!N`1zzz!!)3j!!)3j!!'S1!!!N0!!!l:!!)Wp!!!'#!!)3j!!)3j!!)3j!!*&o!<rbF!MTT!#.ai0!<rb6!MTU[-jCGC"pS8*!TkBI%#uEH"pP.'!<skTT`M7rh$,2c"pQE2!NcA[-9)26-BS=g"H<U43!L]6UB-qs$3lUn"pPp=!<r`0U&bH&-A_al2't9e-3g.E7J-j33!KR6OTEu;r<"B+"ssPL!R;/Z"pGJ@"pthUSHTT0(,-cr,6eo>"pQcU!<E3&#mgS3zzz!'C5]!!3-#!29`!!29`!!"f22!"o83!)s($!%.aH!#bh;!)`q"!;uTm"pQ!?!<r`@U&bH&$DIRp$/QNm"Yp8t"qQ\+$5QeL#$R`%"pP.'!<r`tOTCFGV#a%F"pRPZ!M'G&!Cf$Q7L#Ug"pX2s5RmuN-5HeD-3aZ<49c!:.L$(YU&bHf#,)'W#IOb*3!KRVM#iS@V#a%F"pRPZ!VHKd!_,-R7L#UgNX>spB)r)=!X]8@zzz!!!#U!!!!,!!!!,!!!!"!!!#3$31(=$31&H!!!!L!!!"+"TSO*!!!!c!!!"-"TSOuq#L[()PR6:"qmX2"pPF/!O`9j&[i:D!<r`0U&bHn#,)(b#-@o$3!KR^OTC^NjT/+9##5At!<s;DT)n<a-3a\9(4lT7=p>04U&bH&:5K#-!Mofl3!KR^OTCFGo`7fI##5At!=%Be-=b%&[2LBN!Q>ZU/i+gY#(6^T$SGon"p1M"0!uTMMua,@c39^=2MDPtMua+e!ho]""p1M"##5Ar!K@3S%Setf##:9]eHDEI:,iF^:6>S-",-kQ3!N+^UB1;s#!Oi&,mO&M1EJFY%0eEhD'gk^'da+h+snohIO57'+pJ5QU&bH&:6>Q'V#a=N"pRhb!Q>:t!DYTY:'RHo#5/L$@j\T%-B%um#;-Jj-3a[&"pP.'!<r`0U&bH&:5K"Z"dK6d3!KR^OTFPGXTM<X##5At!=%Bi/n=;X[2LZV!UU+M('ZAq#(6[[_#^82!<r]R0m-?E!?"o<zzzz!!!B,!!!N0!!#"\!!%*D!!%0F!!$m>!!$m>!!%<J!!%<J!!%BL!!%NP!!%HN!!%<J!!%<J!!(.E!!(.E!!(4G!!(@K!!(:I!!(.E!!(.E!!&et!!&et!!'M3!!'M3!!'S5!!'S5!!#jr!!"\Q!!"PO!!$1*!!$7,!!$=.!!$=.!!'q>!!(.D!!(RP!!(RP!!%'?!!#4`!!$R3!!(:I!!(RP!!(RP!!(RP!!(XR!!(dV!!(^T!!(RP!!(RP!!#gu!!#gu!!&>c!!#dp!!)!Z!!&\m!!$%"!!(UO!!';,!!'Y6!!'q>!!'q>!!'_9!!'Y7!!'M3!!'M3!!'M3!!'h8!!$[4!!"DK!!#n"!!(OL!!$m:!!"JM!!#gu!!#gu!!$+(!!$+(!!)0^!!%ZP!!"\S!!$O4!!$I2!!$+(!!$+(!!$m>!!$m>!!$s@!!$s@!!!r=!!&,]!!)!Z!!";G!!&De!!#mu!!&l!!!'#%!!'#%!!&r#!!';-!!'A/!!'A/!!%WI!<rc!"JPo$#3l>c!<rbf"JPo$#203S!<r`0U&bH&`W;2&o`:<]`W8%'#0$\#!VHJQ#0$['"pW'JOTGCbr<C7B3!KT,!KdDJ"cW`+!B:;'!=#;"]a"E=L&j8^h#`<936_Q-!JUV7#'L3B!KI0bc3YiB"qGek"pTe_)P%+m*JOSSNWJSL#+GXJ!KI2_"="*TFqb,b\d+r1bm"Z$'a=ks!?.L6PmW6H30"$S!=#"oL&m;8XTTjQFp=N="pVX>U&bIA#+bj=#"Bra"qGek"pTe_)P%+e-ADO\"pULuU&bH&!ho]"#0$\+!VH]r#0$['#0$ZJT`OfkjT<F&3!KT,!KdEU"K_aF!B:;'!=#;""pTe_)P%,H-Jf8;]a"E=L&j8^SHOZJ3!KTX"/5g.Ao9bLk5kjW!K@,'#+ko##"#$b"pP.'!<rbJ!JpiJ.?+PO!B:8f`W;2&jTDUe`W8%'`W6:=!T!k^?7#j\##ocB#'Pq+o`KA\'a=ks!?.L6[3:8*30"$s"9t=rL&m;8XTTjQFp=N=Fp8F'%1[Or"pV(.U&bI9NXhQ[DY4lbMui#R#'Me?"pTJ[#2'$O!<r`0U&bH&`W:nsh$!Z[`W8%'#0$\+!So%"#K?d(#0$ZJUB0ch%L/[/*\IYq!CgB"Vu^K7NXV?W"pU4mU&g8T(C$?0L&m;8XTTjQFp=N=Fp:to"pWETU&bH&!ho]"#0$\+!PJfi#K?d(#0$ZJT`N[QjT<F&3!KT,!KdD:+RKNU!B:;'!=#;""pTe_)P%,X)MS7s('^oKFN":cQ2reD#6pb#1BnVT!F^]`NWHfr,6i;qScO!=*[Y/&Fqk2c\,rB*"pP.'!=$OE#,)(:."rMX!B:;'!=#4uPo]N!`W8%'#0$\+!JM8J%E8E.#0$ZJUB(Q'!ho_7(<$lo!F)u5m2ED6V?,3U[K3f;Fp8/R!KdDc!O`$r+sR9rXoXXcPmc+^XoUKdXoSa%!R1_##DN7=NWJ#<#+GXJ!KI2_"="+o#+bj="st[&%b:q$"pTe_3h6N#%Yb!D"pQ3E!G6IdMufIQ#&Z6),R/EJ#%e(2!<rb="JPo$"p1M"#0$ZJT`MP8h#YLr3!KT,!KdEE+T2Ye!B:;'!=#;"bm"Z$o`57$L&i3`#H\\p!B?)?VZ@!k!<r`0U&fuLNWH6b,D?`[#)3.<]`GMBL&j7<#)E>T!T"fN&H3D&!<EB.$31&+zzzzp](9oA,uZ1A,uZ1&HDe2%KHJ/!<<*"A,uZ1A,uZ1o(W4i"u;nR"pQQO!<r`PU&bH&)PR8('<W/.#(Q^i"pT>W"pS$2"p1M"-3a[$XT::+3!KR6OTD!W[/hU6"ssPL!=f;<$DeB,"pU\#%L*t$"pQKM!<HU/]=],5.0));if not(not V[23486])then e=(V[0X5bbE]);else e=50+(H.BF((H.iF(H.U[2]+H.U[0X2]+V[24551]))));V[0X5Bbe]=e;end;end;else e=H:PZ(N,e,V,o);end;until false;return e,r;end,x=table.move,aZ=function(H,r,e,o,N,V,x)if not(e[1][0x18])then if N~=122 then(V)[o]=e[0X1][33][x];end;else H:oZ(o,r,e,x);end;end,SF=setmetatable,a=function(H,r,e,o,N)o[0Xf]=nil;(o)[0X10]=(nil);(o)[17]=(nil);o[0X12]=nil;(o)[0x13]=(nil);N=(nil);o[20]=nil;r=0X29;repeat if r>70.0 then if not(r<=104.0)then N,r=H:D(o,N,r,e);else H:Y(o);break;end;else r=H:o(o,e,r);end;until false;o[21]=nil;(o)[22]=(nil);(o)[23]=(nil);o[24]=nil;(o)[0X19]=(nil);r=(45);return N,r;end,RF=function(H,r,e,o)if o>102.0 then if o==105.0 then H:nF(e);else return{r};end;elseif o~=102.0 then H:xF(e);else(e[0x1])[32]=(nil);end;return nil;end,EF=function(H,H)return{H};end,UZ=function(H,r,e,o)if e<=105.0 then o=H:QZ(r,o);elseif e<=189.0 then H:hZ(r);else return{o},o;end;return nil,o;end,jZ=function(H,r)local e,o;for N=105,0X012E,84 do e,o=H:UZ(r,N,o);if e==nil then else return{H.m(e)};end;end;return nil;end,eF=function(H,r)r[0X22][15.0]=H.T.rshift;r[0X22][12.0]=H.v;r[34][8.0]=H.e;end,WF=function(H,r,e,o,N)if not(o<90.0)then for o=1.0,#r[1][0x20],3.0 do(r[1][0x20][o])[r[0x1][0X20][o+1.0]]=e[r[1][32][o+2.0]];end;else(r[1])[32]=r[1][17](N*3.0);for o=1.0,N do H:JF(o,r,e);end;end;end,t=function(H,r,e,o)if not(e>50.0)then(r)[7]=({});return 0xA761,e;else r[0X6]=select;if not o[0X4e5C]then o[5643]=(-374569211+((H.YF(H.U[0X6]+H.U[6],(o[0X44a8])))-e+o[24551]));e=0X71+((H.iF((H.BF(e+o[31921],e,o[0x5c1A]))))-e);o[20060]=(e);else e=o[20060];end;end;return nil,e;end,v=bit32.lrotate,U={16957,1133713995,806060881,9498595,2811393664,908895987,2346324044,3995050446,3059063767},W=tostring,f=string.char,o=function(H,r,e,o)if not(o<=41.0)then o=H:F(r,o,e);else(r)[0XE]=(1.0);r[0XF]=H.A;if not e[0X3C6F]then o=(-5157717592+(((H.HF(H.U[3]~=H.U[1]and H.U[8]or H.U[0X4],H.U[1]))>e[24551]and H.U[0X7]or e[0x44A8])+H.U[0X5]));e[15471]=(o);else o=e[15471];end;end;return o;end,AF=function(H,r,e)local o,N,V=76;while true do V,N,o=H:dF(V,e,o);if N==285 then break;end;end;r=nil;o=(101);repeat if o==101.0 then o=(0);r=e[0X1][29]()~=0.0;else if o~=0.0 then else e[1][24]=(r);break;end;end;until false;for o=1.0,V,0X1 do local V,x;N,V,x=H:zF(V,e,x);if N==nil then else return{H.m(N)},r;end;while true do if x~=99.0 then x=(0X63);else if not(r)then e[0X1][33][o]=(V);else e[0x1][33][o]={[0.0]=V};end;break;end;end;end;return nil,r;end,_=function(H,r,e,o)local N;r=({});o[1]=nil;(o)[0x2]=(nil);(o)[3]=nil;(o)[0X4]=(nil);o[0x5]=nil;e=(3);while true do N,e=H:c(e,o,r);if N~=0x6b5F then else break;end;end;o[6]=(nil);o[0x7]=nil;e=95;return e,r;end,TF=function(H,r,e)local o,N=(e[0X1][37]()-32257);local V=e[0X1][0X11](o);local x;for O=0X57,0Xa2,3 do if O<=96.0 then if not(O<=90.0)then if O>=96.0 then x=H:fF(e,V,x);else if r then(e[1][0X22])[5]=e[0x1][33];(e[1][0X22])[2]=V;end;end;else H:WF(e,V,O,o);end;else N=H:RF(x,e,O);if N==nil then else return{H.m(N)};end;end;end;return nil;end,iF=bit32.countrz,GF=bit32.rrotate,GZ=function(H,r,e,o,N,V,x,O,R,A,f,D,J)for q=0X5A,310,110 do R,J,D=H:HZ(D,q,R,e,J);end;O=nil;f=nil;x=0x16;repeat if x==22.0 then x=(125);O=o%8;else f=e[0X1][0x26]();break;end;until false;A=(J%0X8);N=((o-O)/8);r=(nil);V=(nil);x=(0X63);return N,D,R,J,V,f,O,r,A,x;end,d=error,HF=bit32.bxor,ZF=math,C=function(H,r,e)r=(0X2a+((H.lF((H.FF(e[0X44A8]))+H.U[0x1]))<e[0X160B]and H.U[0X7]or e[0X3F02]));(e)[0X7984]=(r);return r;end,RZ=function(H,H,r,e,o)if r==78.0 then r=85;e=H[0X2]();else r=48;o=H[2]();end;return r,e,o;end,l=function(H,r,e,o)if r>29.0 and r<88.0 then(o)[9]=H.SF;(o)[10]=H.z;if not(not e[29678])then r=e[0X73eE];else e[0X2A75]=119+(H.iF((H.iF(H.U[3]-e[31921]))-r));r=1133697069+((H.HF((H.rF(e[31921],e[24551],H.U[0X9]))>=H.U[3]and H.U[0X001]or H.U[9],e[0X44A8]))-H.U[0x2]);(e)[0X73EE]=(r);end;elseif r>54.0 then H:G(o);return 0X6Ed,r;else if r<54.0 then(o)[11]=(function(N,V,x,O)O={o};if V>N then return;end;local o=N-V+1.0;if o>=8.0 then return x[V],x[V+1.0],x[V+2.0],x[V+3.0],x[V+4.0],x[V+5.0],x[V+6.0],x[V+7.0],O[1][11](N,V+8.0,x);elseif o>=7.0 then return x[V],x[V+1.0],x[V+2.0],x[V+3.0],x[V+4.0],x[V+5.0],x[V+6.0],O[0X1][0x00B](N,V+7.0,x);else if o>=6.0 then return x[V],x[V+1.0],x[V+2.0],x[V+3.0],x[V+4.0],x[V+5.0],O[1][0XB](N,V+6.0,x);elseif o>=5.0 then return x[V],x[V+1.0],x[V+2.0],x[V+3.0],x[V+4.0],O[1][11](N,V+5.0,x);elseif o>=4.0 then return x[V],x[V+1.0],x[V+2.0],x[V+3.0],O[1][0Xb](N,V+4.0,x);elseif o>=3.0 then return x[V],x[V+1.0],x[V+2.0],O[0X1][0XB](N,V+3.0,x);else if not(o>=2.0)then return x[V],O[1][11](N,V+1.0,x);else return x[V],x[V+1.0],O[1][0Xb](N,V+2.0,x);end;end;end;end);if not e[0X3950]then r=(-4285485607+(H.rF((H.rF(e[23578],e[31921],r))-e[0X4e5C]-H.U[0x4],r,H.U[0x1])));(e)[14672]=(r);else r=e[0x3950];end;end;end;return nil,r;end,OF=function(H)end,nZ=function(H,r,e,o)r[41]=function(N,V,x)local O=({r});local r=(N[0X4]);x=(N[0X7]);local R,A,f,D,J,q,w,a,Y=N[10],N[3.0],N[2.0],N[9.0],N[11.0],N[8.0],N[6.0],(N[1.0]);if not(x<0X2)then if x~=3 then Y=function(...)local n=O[1][17](r);local U=1.0;local T,m=O[1][0x28](...);local I;local d=(1.0);local z,_,C,W=O[1][0XF](function()repeat local t=D[d];if t==0X1 then d=d+1.0;local t,i=T+-1.0,(0.0);if not(t<0.0)then else t=(-1.0);end;for T=2.0,2.0+t do n[T]=m[1.0+i];i=i+1.0;end;U=(2.0+t);for T in n do if T>U then n[T]=(nil);end;end;d=(d+1.0);if not(I)then else for T,m in I do if not(T>=1.0)then else m[0X01]=(m);(m)[0X2]=(n[T]);(m)[0x3]=0X2;(I)[T]=(nil);end;end;end;return false,2.0,U;else d=(q[d]);end;d=(d+1.0);until false;end);if z then if _ then if W~=1.0 then return n[C](O[0X1][12](C+1.0,U,n));else return n[C]();end;else if not(C)then else return O[1][12](C,W,n);end;end;else if I then for U,T in I do if U>=1.0 then(T)[0X1]=T;T[0X2]=(n[U]);T[3]=2;(I)[U]=(nil);end;end;end;if O[1][0X14](_)~='\115t\114ing'then(O[0X1][2])(_,0.0);elseif O[1][0X19](_,':(%d+)[:\13\10\93')then(O[0X1][2])('\76\117ra\112h Scri\112\116:'..(R[d]or"\40i\110t\101rnal)")..":\32"..O[1][19](_),0.0);else O[0X1][2](_,0.0);end;end;end;else Y=(function(...)local n,U=(O[0X1][0X11](r));local T,m;local I,I=O[1][40](...);local I=1.0;local d,z,_=(1.0);local C,W,t,i=O[1][15](function()repeat local j=D[I];if j<0X3 then if not(j<1)then if j==2 then m=z[0X5];T=z[0x4];U=z[1];z=(z[2]);else local y=(f[I]);local p,S,h=m();if not(p)then else(n)[y+1.0]=S;n[y+2.0]=h;I=q[I];end;end;else local y=V[J[I]];n[1.0]=(y[1][y[3]][A[I]]);I=(I+1.0);(n)[1.0]=(n[1.0][a[I]]);I=(I+1.0);(n)[1.0]=n[1.0][A[I]];I=I+1.0;n[2.0]=(nil);n[3.0]=(nil);I=I+1.0;z={[0X2]=z,[5]=m,[0X4]=T,[1]=U};d=(1.0);y=O[1][0x00a](function(...)(O[0X1][22])();for U,T in...do(O[0X1][0x16])(true,U,T);end;end);(y)(n[d],n[d+1.0],n[d+2.0]);for U in n do if U>d then n[U]=(nil);end;end;m=(y);I=(f[I]);end;else if not(j<4)then if j==5 then(n)[4.0]=n[3.0][a[I]];I=I+1.0;(n[4.0])[a[I]]=(A[I]);I=(I+1.0);n[4.0]=(n[3.0][A[I]]);I=I+1.0;(n[4.0])[a[I]]=A[I];I=I+1.0;(n)[4.0]=n[3.0][A[I]];I=(I+1.0);(n[4.0])[a[I]]=A[I];I=(I+1.0);(n)[4.0]=(n[3.0][A[I]]);I=(I+1.0);n[4.0][a[I]]=(A[I]);I=I+1.0;I=J[I];else I=(J[I]);end;else if _ then for U,T in _ do if not(U>=1.0)then else(T)[1]=T;T[2]=(n[U]);(T)[3]=2;_[U]=nil;end;end;end;return;end;end;I=(I+1.0);until false;end);if C then if W then if i~=1.0 then return n[t](O[0X1][0XC](t+1.0,d,n));else return n[t]();end;else if not(t)then else return O[1][12](t,i,n);end;end;else if _ then for U,T in _ do if not(U>=1.0)then else(T)[0X1]=(T);(T)[0x2]=(n[U]);(T)[0X3]=(2);_[U]=(nil);end;end;end;if O[1][0x14](W)=='st\114\105ng'then if not(O[0X1][25](W,":(%d+)[:\13\10]"))then(O[1][2])(W,0.0);else O[0X1][2]('L\117raph\32Scri\112t\58'..(R[I]or"(int\101r\110al)").."\58 "..O[1][19](W),0.0);end;else O[0X1][2](W,0.0);end;end;end);end;else if x~=0X01 then Y=(function(...)local x=O[1][17](r);local n,n=O[1][40](...);local U;local T,m=1.0,1.0;local I,d,z,_=O[0X1][0XF](function()repeat local C=(D[m]);if not(C>=4)then if C<2 then if C~=0X1 then if not(U)then else for W,t in U do if not(W>=1.0)then else t[0X1]=(t);(t)[2]=(x[W]);t[3]=(2);(U)[W]=nil;end;end;end;return;else local W=(V[q[m]]);x[2.0]=(W[1][W[3]][a[m]]);m=m+1.0;(x)[2.0]=x[2.0][A[m]];m=m+1.0;W=V[q[m]];W[0x1][W[0X3]]=x[2.0];m=m+1.0;W=(V[J[m]]);(x)[2.0]=(W[1][W[3]][A[m]]);m=(m+1.0);W=(w[m]);local t=W[0x5];local i=(#t);local j=i>0.0 and{};local y=O[0x1][41](W,j);(x)[3.0]=(y);if not(j)then else for p=1.0,i do W=(t[p]);y=(W[0x1]);local t=(W[0X3]);if y==0.0 then if not U then U={};end;local W=U[t];if not W then W={[0X1]=x,[3]=t};U[t]=W;end;(j)[p-1.0]=(W);elseif y~=1.0 then(j)[p-1.0]=V[t];else(j)[p-1.0]=x[t];end;end;end;m=(m+1.0);(x[2.0])[a[m]]=(x[3.0]);m=(m+1.0);m=(q[m]);end;else if C~=0X3 then for W=1.0,J[m]do x[W]=(n[W]);end;else x[2.0]=pcall;m=m+1.0;local n=w[m];local W=n[0X5];local t=(#W);local i=(t>0.0 and{});local j=O[0X1][0X0029](n,i);(x)[3.0]=j;if not(i)then else for y=1.0,t do n=(W[y]);j=n[1];local W=(n[0X3]);if j==0.0 then if not(not U)then else U={};end;local n=U[W];if not(not n)then else n={[1]=x,[3]=W};(U)[W]=(n);end;i[y-1.0]=(n);elseif j~=1.0 then i[y-1.0]=(V[W]);else(i)[y-1.0]=x[W];end;end;end;m=(m+1.0);T=3.0;for n in x do if n>T then x[n]=(nil);end;end;x[2.0](x[3.0]);T=(1.0);for n in x do if n>T then x[n]=(nil);end;end;m=m+1.0;x[2.0]=(task);m=m+1.0;(x)[2.0]=x[2.0][A[m]];m=m+1.0;x[3.0]=(a[m]);m=m+1.0;T=3.0;for n in x do if not(n>T)then else x[n]=nil;end;end;x[2.0](x[3.0]);T=1.0;for n in x do if n>T then(x)[n]=(nil);end;end;m=m+1.0;t=(V[q[m]]);(x)[2.0]=(t[0X1][t[3]][a[m]]);m=(m+1.0);if x[2.0]then m=(q[m]);end;end;end;else if C<6 then if C~=0X05 then m=q[m];else local n=V[J[m]];(x)[q[m]]=n[1][n[3]];end;else if C~=7 then if not(not x[J[m]])then else m=q[m];end;else local n=(V[q[m]]);x[2.0]=n[1][n[3]][a[m]];m=m+1.0;n=V[J[m]];x[3.0]=n[0X1][n[3]];m=m+1.0;(x[2.0])[a[m]]=(x[3.0]);m=(m+1.0);m=q[m];end;end;end;m=(m+1.0);until false;end);if not(I)then if not(U)then else for n,I in U do if n>=1.0 then I[1]=I;(I)[0X2]=x[n];(I)[3]=0x002;(U)[n]=nil;end;end;end;if O[1][0x14](d)~="s\116\114\105n\103"then(O[1][0X2])(d,0.0);else if not(O[1][25](d,":\40%\100+)[\58\r\10]"))then O[1][0X2](d,0.0);else(O[1][0X2])('Lur\97ph S\99rip\116\58'..(R[m]or"(i\110t\101\114\110al\41")..":\32"..O[1][19](d),0.0);end;end;elseif d then if _==1.0 then return x[z]();else return x[z](O[1][0Xc](z+1.0,T,x));end;else if z then return O[1][0Xc](z,_,x);end;end;end);else Y=function(...)local x=O[0X1][0X11](r);local r,n=O[0X1][0X28](...);local U,T,m,I,d,z,_,C,W=0.0,1.0,1.0,1.0;local t,i,j,y=O[1][15](function()repeat local p=D[m];if not(p<0X55)then if p<128 then if not(p>=0X6A)then if not(p<0X5F)then if p>=0X0064 then if not(p<103)then if p>=0X68 then if p==105 then x[q[m]]=H.SF;else x[f[m]]=task;end;else x[f[m]]=V[J[m]][x[q[m]]];end;else if p>=0X65 then if p==102 then(x)[J[m]]=(mouse1release);else(x)[f[m]]=(a[m]-x[q[m]]);end;else x[f[m]]=(O[1][0X10](x[J[m]],w[m]));end;end;else if p>=0X061 then if p<98 then local S,h,M,c,l=32;while true do if not(S>32.0)then h=(-71.0);c=0;l=(4503599627370495);S=(50+(O[0x1][0X22][10.0]((O[1][0x22][9.0]((O[0X1][0x22][10.0](S))-p,(S))))));else c=c*l;l=O[1][0X22];break;end;end;local k,u=13.0;l=l[k];k=(O[0X1][34]);local X,E;S=(0xd);while true do if S==13.0 then u=15.0;S=-106488+(O[0X1][34][9.0](((O[1][0X22][9.0](p,(S)))>S and p or S)<=S and p or S,(S)));elseif S~=8.0 then else k=k[u];break;end;end;u=(O[0X1][34]);S=(0X50);while true do if not(S<=80.0)then if not(S<121.0)then X=11.0;break;else u=u[E];S=(-95+(((p>=p and p or p)~=p and p or S)+S==p and p or p));end;else if not(S>2.0)then E=(O[1][0X22]);S=(22+((S-S-p>=S and S or S)+p));else E=(13.0);S=(0X1F+((O[1][34][11.0]((O[0X1][0X22][7.0](p,p)),S,p))+p==S and p or S));end;end;end;E=E[X];local B;S=(53);local P=J[m];while true do if S<53.0 then M=(12.0);X=X[M];break;elseif not(S>16.0)then else X=O[1][34];S=-0X63fFfF0+(O[1][34][6.0]((O[0x1][0X22][10.0]((p<S and S or S)<=S and p or S)),(10)));end;end;S=101;while true do if S>95.0 then M=D[m];S=(O[1][34][15.0]((O[0x1][34][6.0]((O[1][0X22][6.0](p-p,(2))),(0Xb))),(O[0x1][34][16.0]('<i8','\25\0\0\0\0\0\0\0'))));elseif S<95.0 then B=(0X17);X=X(M,B);S=-0X63+((O[0x1][0x022][7.0](S))+p+p+S);elseif not(S<101.0 and S>0.0)then else M=D[m];break;end;end;S=18;while true do if S>18.0 then if not(S>=73.0)then E=(p);break;else u=u(E);S=-0x35+((O[1][0x22][14.0]((O[0X1][34][13.0]((O[1][0X022][14.0](p)))),S,p))<p and S or S);end;else E=E(X,M);S=-4294967221+(O[1][34][14.0]((O[0X1][0X22][8.0]((O[1][34][15.0]((O[0X1][34][6.0](S,(S))),(S))))),S));end;end;u=(u>=E);if not(u)then else u=D[m];end;if not(not u)then else u=D[m];end;E=D[m];S=101;while true do if S<95.0 then E=(0x0);S=-4294967362+((O[1][0X22][8.0]((O[0X1][34][10.0](S))))+p+p);elseif S<101.0 and S>0.0 then k=k(u,E);break;elseif S>95.0 then u=(u+E);S=-198+(((p<=S and p or S)-S>=S and p or S)+p);end;end;l=l(k);k=p;S=(0X76);while true do if S<93.0 then h=h+c;break;elseif S>93.0 then l=(l+k);S=(-4294966890+((O[1][34][8.0]((O[0x1][0X22][14.0](p))))-p-S));elseif not(S>24.0 and S<118.0)then else c=c+l;S=(-4294967269+(O[0X1][0X22][14.0]((O[0X1][34][13.0](S+S))-p,S,p)));end;end;S=29;while true do if S>29.0 then if S~=88.0 then c=x;break;else h=q[m];S=0x57+((p~=S and p or S)-p-S+S);end;else D[m]=(h);S=-4294967110+(O[1][0X22][7.0]((O[0X1][34][8.0](p-p+p))));end;end;l=(P);S=97;while true do if S==97.0 then c=c[l];S=-21+(O[1][0X0022][14.0]((O[0x1][34][10.0](S==S and p or S))>=p and S or p,p,p));elseif S~=76.0 then else l=true;if l then B=f[m];M=nil;X=87;k=(nil);while true do if X<74.0 then k=P;break;elseif X>74.0 then X=(0X004A);M=(P);k=1.0;elseif not(X>33.0 and X<87.0)then else X=0X21;M=(M+k);end;end;X=(125);while true do if X==125.0 then k=(k+B);X=(56);elseif X~=56.0 then else B=(h);break;end;end;u=(1.0);X=(0x50);while true do if X>2.0 and X<111.0 then B=B+u;X=0X6F;elseif X<80.0 then(O[1][0X1C])(x,M,k,B,u);break;elseif X>80.0 then X=0X2;u=c;end;end;else E=(nil);local S,M,l=1.0,0X0056;while true do if M~=86.0 then l=0x1;for k=S,E,l do local S,l;for u=0x7d,0x127,0x7a do if u==0xF7 then l=(k);break;elseif u~=0X7D then else S=h;end;end;local h=0X5E;S=(S+l);local u,X=c;while true do if h<94.0 then X=P;break;elseif not(h>37.0)then else h=(37);l=(x);end;end;for h=0X56,182,55 do if h<141.0 then X=X+k;l=l[X];elseif not(h>86.0)then else(u)[S]=(l);break;end;end;end;break;else M=0X3d;E=(f[m]);end;end;end;break;end;end;else if p~=99 then x[J[m]]=(error);else x[J[m]]=H.bF;end;end;else if p~=96 then(x)[f[m]]=not x[J[m]];else x[q[m]]=(getupvalues);end;end;end;else if p>=0X5A then if p<92 then if p~=0X5b then if x[J[m]]==w[m]then else m=f[m];end;else x[J[m]]=(A[m]+w[m]);end;else if p<0X5d then(x)[J[m]]=(O[1][16](x[q[m]],x[f[m]]));else if p~=0X5e then(x)[f[m]]=(x[J[m]]*w[m]);else local S=(false);C=(C+d);if not(d<=0.0)then S=C<=W;else S=(C>=W);end;if not(S)then else x[J[m]+3.0]=(C);m=(q[m]);end;end;end;end;else if p>=0X57 then if p<0X58 then(x)[q[m]]=cloneref;else if p==89 then z=({[0X2]=z,[5]=C,[0X1]=d,[4]=W});local S=(f[m]);d=x[S+2.0]+0.0;W=x[S+1.0]+0.0;C=(x[S]-d);m=J[m];else(x)[J[m]]=(mousemoverel);end;end;else if p~=86 then(x)[f[m]]=wait;else x[J[m]]=Color3;end;end;end;end;else if p<117 then if not(p<0X6F)then if p>=114 then if not(p<0X73)then if p==116 then x[J[m]]=O[1][0X11](q[m]);else if x[f[m]]==x[J[m]]then else m=q[m];end;end;else local S=q[m];local h,M,c=C();if not(h)then else x[S+1.0]=M;(x)[S+2.0]=(c);m=(J[m]);end;end;else if not(p>=112)then x[J[m]]=(type);else if p~=113 then(x)[f[m]]=x[J[m]]-x[q[m]];else x[J[m]]=A[m]+x[q[m]];end;end;end;else if not(p>=0X6c)then if p~=107 then(x)[f[m]]=(a[m]~=w[m]);else local S=V[f[m]];(S[0X1][S[3]])[a[m]]=x[q[m]];end;else if p<109 then x[J[m]]=x[q[m]]-A[m];else if p==0x6e then x[q[m]]=(Vector3);else local S=f[m];for h in x do if h>T then(x)[h]=(nil);end;end;x[S]=x[S](O[0x1][12](S+1.0,T,x));T=(S);for S in x do if S>T then(x)[S]=(nil);end;end;end;end;end;end;else if p<0X7a then if not(p>=119)then if p~=118 then(x)[J[m]]=(#x[q[m]]);else(x)[J[m]]=x[f[m]]+w[m];end;else if not(p<0X078)then if p~=121 then(x)[J[m]]=xpcall;else local S=(q[m]);T=S+1.0;for h in x do if not(h>T)then else(x)[h]=nil;end;end;x[S](x[S+1.0]);T=S-1.0;for S in x do if S>T then x[S]=(nil);end;end;end;else x[f[m]]=getrawmetatable;end;end;else if p<125 then if not(p<123)then if p~=0x7C then x[q[m]]=f;else local S=(J[m]);if _ then for h,M in _ do if not(h>=S)then else M[0X1]=M;M[0x2]=x[h];(M)[3]=(2);(_)[h]=nil;end;end;end;end;else(x)[q[m]]=Instance;end;else if not(p<0X7e)then if p~=0X7F then x[q[m]]=x[J[m]]..x[f[m]];else if not(_)then else for S,h in _ do if S>=1.0 then(h)[1]=(h);(h)[2]=(x[S]);(h)[3]=(0x2);(_)[S]=(nil);end;end;end;local S=(J[m]);T=S+1.0;return true,S,2.0;end;else local S=q[m];T=S+1.0;for h in x do if h>T then x[h]=(nil);end;end;x[S]=x[S](x[S+1.0]);T=(S);for S in x do if S>T then(x)[S]=nil;end;end;end;end;end;end;end;else if not(p>=0x95)then if p>=138 then if p>=143 then if not(p>=0X92)then if not(p>=144)then x[f[m]]=(typeof);else if p~=145 then(x)[q[m]]=(UserSettings);else(x)[J[m]]=J;end;end;else if not(p<147)then if p~=148 then if x[f[m]]==x[J[m]]then m=q[m];end;else(x)[f[m]]=(workspace);end;else(x)[q[m]]=(x[f[m]]==x[J[m]]);end;end;else if p<140 then if p~=0x8B then local S=J[m];T=(S+q[m]-1.0);for h in x do if not(h>T)then else x[h]=nil;end;end;x[S](O[1][12](S+1.0,T,x));T=S-1.0;for S in x do if S>T then(x)[S]=(nil);end;end;else if x[q[m]]then m=f[m];end;end;else if p<141 then(x)[q[m]]=(x[J[m]][A[m]]);else if p==142 then(x)[q[m]]=(-x[J[m]]);else(x)[J[m]]=x[f[m]]/w[m];end;end;end;end;else if not(p>=0X85)then if not(p<0X82)then if not(p>=131)then(x)[f[m]]=(x[q[m]]<=x[J[m]]);else if p==132 then mouseClicked=(x[f[m]]);else x[f[m]]=iswindowactive;end;end;else if p==129 then x[f[m]]=x[J[m]]>x[q[m]];else x[f[m]]=(a[m]*x[q[m]]);end;end;else if p>=0X87 then if not(p<136)then if p~=137 then local S=J[m];for h in x do if not(h>T)then else(x)[h]=nil;end;end;x[S](O[1][0XC](S+1.0,T,x));T=(S-1.0);for S in x do if not(S>T)then else(x)[S]=nil;end;end;else(x)[J[m]]=q;end;else O[1][0X22][q[m]]=x[f[m]];end;else if p==0X086 then x[f[m]]=w[m]>=a[m];else x[J[m]]=(CFrame);end;end;end;end;else if not(p>=0XA0)then if not(p>=0X9a)then if not(p<0X97)then if p>=152 then if p==153 then(x)[J[m]]=A[m]..x[q[m]];else x[f[m]]=w[m]%a[m];end;else end;else if p~=0X96 then(x)[q[m]]=(getcustomasset);else if _ then for S,h in _ do if not(S>=1.0)then else h[1]=(h);(h)[0x2]=x[S];(h)[3]=(2);_[S]=nil;end;end;end;return true,q[m],1.0;end;end;else if not(p<157)then if p>=0X9e then if p==159 then x[f[m]]=(V[J[m]][w[m]]);else local S=(f[m]);T=S+2.0;for h in x do if not(h>T)then else(x)[h]=(nil);end;end;x[S]=x[S](x[S+1.0],x[S+2.0]);T=S;for S in x do if not(S>T)then else x[S]=nil;end;end;end;else T=J[m];for S in x do if not(S>T)then else x[S]=nil;end;end;x[T]();T=T-1.0;for S in x do if S>T then(x)[S]=nil;end;end;end;else if not(p<0X9B)then if p~=0X9c then local S=(A[m]);local h=S[5];local M=(#h);local c=M>0.0 and{};local l=O[1][41](S,c);x[q[m]]=l;if c then for k=1.0,M do l=h[k];S=l[1];local h=l[3];if S==0.0 then if not _ then _=({});end;local M=(_[h]);if not M then M={[0X1]=x,[0X3]=h};_[h]=M;end;(c)[k-1.0]=M;elseif S==1.0 then c[k-1.0]=x[h];else(c)[k-1.0]=V[h];end;end;end;else x[f[m]]=H.ZF;end;else x[q[m]]=(Vector2);end;end;end;else if p<0Xa5 then if p>=162 then if p>=0x00a3 then if p~=164 then x[f[m]]=nil;else if not(a[m]<x[q[m]])then m=(f[m]);end;end;else m=(J[m]);end;else if p~=161 then x[q[m]]=x[J[m]]+x[f[m]];else(x)[f[m]]=(D);end;end;else if p<168 then if p>=0xa6 then if p==167 then hookfunction=x[J[m]];else(x)[f[m]]=(n[I]);end;else x[q[m]]=x[J[m]]<x[f[m]];end;else if p<169 then for S=q[m],f[m]do(x)[S]=(nil);end;else if p==170 then x[J[m]]=(N);else(x)[J[m]]=script;end;end;end;end;end;end;end;elseif not(p<42)then if not(p<0X3f)then if not(p>=74)then if not(p<0x44)then if not(p>=71)then if p<69 then C=z[0X5];W=(z[0X4]);d=(z[0X1]);z=z[0X2];else if p==0x46 then(x)[q[m]]=H.IF;else x[q[m]]=V[f[m]];end;end;else if not(p>=72)then local N,S,h,M,c,l,k=26;while true do if not(N<=26.0)then if N~=92.0 then h=(f[m]);N=(26+(O[1][34][11.0]((O[1][0X22][13.0](N+p))+p,p)));else S=(S[h]);h=(-390.0);N=(-173+((N==p and N or N)-p+N+p));end;else if N<=11.0 then l=(0);break;else S=(V);N=(-0x16+(O[1][34][7.0]((O[1][0X22][7.0]((O[0x1][34][13.0](p<N and p or p)),N)),p,N)));end;end;end;N=0x45;while true do if N<96.0 then k=4503599627370495;l=(l*k);N=-4294967269+((O[1][0X22][8.0]((O[0X1][34][15.0]((O[1][34][8.0](p)),(31)))))+p);elseif not(N>69.0)then else k=O[0x1][34];break;end;end;local u=6.0;N=(0X4c);while true do if N==76.0 then k=(k[u]);N=(-12+((O[0x1][34][13.0]((O[1][0X22][6.0](N,(0x013)))))+N<=p and N or p));elseif N~=59.0 then else u=O[1][0X22];c=12.0;break;end;end;u=u[c];N=46;while true do if N>46.0 then M=p;N=(-0x25+((O[0X1][0X22][13.0](p+p-p))==N and p or N));elseif N>16.0 and N<53.0 then c=(p);N=-0X1Ea+(O[0X1][0X22][7.0]((O[0x1][0X22][12.0](p,(0X3)))-p+N));elseif not(N<46.0)then else c=c+M;M=(D[m]);break;end;end;c=c+M;N=(19);while true do if N==19.0 then M=(15);N=0X56+(O[0X1][0X22][10.0]((O[1][34][11.0](N+N,N))-N));elseif N==86.0 then u=u(c,M);c=D[m];N=(60+(O[0X1][34][13.0]((O[0X1][0x22][10.0](p))-N<=p and N or p)));elseif N~=61.0 then else u=(u==c);break;end;end;if not(u)then else u=(p);end;if not(not u)then else u=D[m];end;c=(p);u=(u-c);N=(61);while true do if N==61.0 then c=D[m];N=(0X78+(O[1][0X22][10.0]((O[0x1][34][14.0](N-p,N,N))-N)));elseif N==120.0 then u=u+c;N=(-1+((O[1][0X22][14.0]((O[1][34][7.0](N,p)),p))-N~=p and N or p));elseif N~=119.0 then else c=(0x1d);k=k(u,c);break;end;end;u=p;N=(56);while true do if not(N>42.0)then if N==42.0 then(D)[m]=(h);N=(-49+(O[1][34][9.0]((O[1][34][10.0]((O[0X01][0x22][11.0](N+p)))),(1))));else h=(S);break;end;else if N<=55.0 then h=h+l;N=-0x4D+(O[1][34][14.0]((O[0X1][34][13.0]((O[0X1][34][7.0]((O[0X1][0x22][15.0](p,(0X18))),N)))),N,p));else k=k-u;l=l+k;N=(55+((p<=p and p or p)-p-p+p));end;end;end;l=0X1;h=(h[l]);N=60;while true do if N>60.0 then if not(N<=78.0)then k=(0X3);N=-4294967146+(O[1][34][8.0]((O[0X1][34][10.0](p+p))<=N and p or p));else l=(l[k]);break;end;else l=S;N=-0X1dFfD1+((O[1][34][12.0](N+p-p,(0Xf)))+N);end;end;h=(h[l]);l=a[m];k=(x);u=q[m];k=(k[u]);(h)[l]=(k);else if p~=0X49 then mouseClicked=(w[m]);else x[J[m]]=(x[q[m]]..A[m]);end;end;end;else if p<65 then if p==0X40 then local N=V[f[m]];(x)[J[m]]=N[1][N[0X3]];else local N,S=J[m],f[m];T=(N+S-1.0);for h in x do if not(h>T)then else(x)[h]=nil;end;end;if _ then for h,M in _ do if not(h>=1.0)then else M[0X1]=(M);(M)[0X002]=x[h];(M)[0x3]=2;(_)[h]=nil;end;end;end;return true,N,S;end;else if p<66 then x[f[m]]=H.LF;else if p~=67 then local N=(w[m]);local S=(N[5]);N=#S;local h=N>0.0 and{};if not(h)then else for M=1.0,N do local N=S[M];local c=N[1];local l=N[3];if c==0.0 then if not _ then _=({});end;N=_[l];if not(not N)then else N={[1]=x,[3]=l};(_)[l]=(N);end;(h)[M-1.0]=(N);elseif c==1.0 then(h)[M-1.0]=x[l];else h[M-1.0]=V[l];end;end;end;S=H[a[m]](h);(x)[f[m]]=S;else local N=(q[m]);local S=(x[N]);local h=(J[m]);(O[0X1][0x1c])(x,N+1.0,T,h+1.0,S);end;end;end;end;else if p<79 then if not(p>=0X4C)then if p==75 then(x)[J[m]]=(Enum);else(x)[J[m]]=(mouse1press);end;else if not(p<77)then if p==0x4e then x[f[m]]=(x[q[m]]^x[J[m]]);else(x)[f[m]]=(pcall);end;else local N=(V[f[m]]);N[0x1][N[3]][x[q[m]]]=(x[J[m]]);end;end;else if not(p<82)then if p>=83 then if p==0X54 then if not(_)then else for N,S in _ do if N>=1.0 then S[0X001]=(S);(S)[2]=x[N];S[3]=(0X2);_[N]=nil;end;end;end;return;else local N=V[J[m]];N[1][N[0X3]][A[m]]=(w[m]);end;else(x[J[m]])[x[q[m]]]=(x[f[m]]);end;else if not(p<80)then if p==0X51 then x[f[m]]=(rawget);else(x)[J[m]]=(getgenv);end;else(x)[f[m]]=x[J[m]]%x[q[m]];end;end;end;end;else if p<0X34 then if not(p<47)then if p<49 then if p~=0X30 then(x)[q[m]]=Random;else(x)[J[m]]=(select);end;else if p>=50 then if p==51 then(x)[J[m]]=(w[m]);else(x)[J[m]]=(readfile);end;else(x)[f[m]]=x[q[m]][x[J[m]]];end;end;else if p<44 then if p==43 then(x)[J[m]]=rawset;else if _ then for N,S in _ do if N>=1.0 then(S)[0X1]=S;S[2]=(x[N]);S[3]=2;_[N]=nil;end;end;end;return true,J[m],0.0;end;else if p<45 then(x)[J[m]]=(x[q[m]]/x[f[m]]);else if p~=46 then x[J[m]]=(loadstring);else(x[q[m]])[x[J[m]]]=(A[m]);end;end;end;end;else if not(p>=0x39)then if not(p<54)then if p>=0X37 then if p==0X38 then x[J[m]][w[m]]=(A[m]);else if _ then for N,S in _ do if N>=1.0 then(S)[1]=S;(S)[0X2]=x[N];(S)[3]=(2);_[N]=nil;end;end;end;local N=(f[m]);return false,N,N+J[m]-2.0;end;else T=q[m];for N in x do if not(N>T)then else(x)[N]=(nil);end;end;(x)[T]=x[T]();for N in x do if not(N>T)then else(x)[N]=(nil);end;end;end;else if p~=0X35 then(x)[f[m]]=(unpack);else x[q[m]]=O[1][34][f[m]];end;end;else if not(p<60)then if p<61 then local N,S=J[m],r-U-1.0;if S<0.0 then S=(-1.0);end;local r=0.0;for h=N,N+S do x[h]=(n[I+r]);r=r+1.0;end;T=N+S;for r in x do if r>T then x[r]=nil;end;end;else if p~=62 then x[f[m]]=x[q[m]]*x[J[m]];else(x)[f[m]]=(x[q[m]]~=x[J[m]]);end;end;else if not(p<0X3A)then if p==0x3b then local r=V[f[m]];x[J[m]]=r[0X1][r[0x3]][x[q[m]]];else x[J[m]]=w[m]==A[m];end;else x[f[m]]=setthreadidentity;end;end;end;end;end;else if not(p<0X0015)then if not(p<0X1f)then if p<36 then if not(p<0X21)then if p<0X22 then(x)[f[m]]=(shared);else if p==35 then(x[q[m]])[a[m]]=x[f[m]];else if not(_)then else for r,N in _ do if not(r>=1.0)then else N[0x1]=(N);N[0X2]=x[r];(N)[0X3]=(0X2);(_)[r]=nil;end;end;end;local r=q[m];return false,r,r;end;end;else if p==0X20 then x[q[m]]=next;else x[f[m]]=H.XF;end;end;else if not(p<39)then if p>=0x28 then if p==0X29 then x[J[m]]=(RaycastParams);else x[J[m]]=require;end;else local r=V[f[m]];r[1][r[0X3]]=x[J[m]];end;else if p<0x25 then(x)[f[m]]=H.sF;else if p==38 then x[J[m]]=x[q[m]];else(x)[f[m]]=isrbxactive;end;end;end;end;else if not(p>=26)then if not(p>=0x17)then if p==22 then(x)[q[m]]=isfile;else local r,N=J[m],x[f[m]];x[r+1.0]=N;(x)[r]=N[w[m]];end;else if not(p>=0x18)then(x)[J[m]]=(mouse1click);else if p~=0X19 then x[q[m]]=Drawing;else if not(_)then else for r,N in _ do if not(r>=1.0)then else(N)[1]=N;(N)[0X2]=x[r];N[3]=(2);(_)[r]=nil;end;end;end;return false,f[m],T;end;end;end;else if p>=28 then if p<0X1d then x[J[m]]=mouseClicked;else if p~=0X1e then if not(not x[f[m]])then else m=(J[m]);end;else local r=(V[q[m]]);(r[0X1])[r[0X3]]=(a[m]);end;end;else if p==27 then local r,N=J[m],(q[m]);local S=(x[r]);O[0x1][28](x,r+1.0,r+f[m],N+1.0,S);else(x)[J[m]]=({});end;end;end;end;else if not(p>=0xA)then if p>=0x5 then if not(p>=0x7)then if p~=6 then if not(x[f[m]]<x[q[m]])then m=(J[m]);end;else local r=(V[J[m]]);(x)[f[m]]=(r[1][r[3]][w[m]]);end;else if p>=8 then if p~=0X09 then x[J[m]]=(assert);else z=({[0X2]=z,[0X5]=C,[0x1]=d,[0x4]=W});T=J[m];local r=O[1][0Xa](function(...)(O[1][0x16])();for N,d in...do O[0x1][22](true,N,d);end;end);(r)(x[T],x[T+1.0],x[T+2.0]);for N in x do if not(N>T)then else(x)[N]=(nil);end;end;C=(r);m=(f[m]);end;else local r=q[m];T=(r+J[m]-1.0);for N in x do if N>T then x[N]=nil;end;end;(x)[r]=x[r](O[0X1][12](r+1.0,T,x));T=(r);for r in x do if r>T then(x)[r]=(nil);end;end;end;end;else if not(p>=2)then if p~=1 then x[q[m]]=(a[m]^x[f[m]]);else local r,N,d,z,C=0X0,6.0,0X72,4503599627370495;while true do if d==114.0 then r=r*z;d=(0X28+(p+d-d-d<=p and p or d));elseif d~=41.0 then else z=O[1][34];break;end;end;local W=(7.0);z=z[N];N=O[0X1][0X22];N=(N[W]);W=D[m];local S=-2.147483532E9;d=0X6;while true do if d<=40.0 then if d==40.0 then C=D[m];d=-4294967231+((O[1][34][8.0]((O[0X1][34][6.0]((O[1][34][9.0](p,(p))),(p)))))+d);else C=(p);d=38+(((O[1][34][7.0]((O[0X1][34][9.0](d,(d)))))>=p and p or d)+d);end;else if d~=45.0 then W=(W-C);C=p;break;else W=(W+C);d=(13+(O[1][0X22][7.0]((O[1][0x22][10.0](d+p))+p,d,d)));end;end;end;d=0x78;while true do if d<119.0 then W=(W-C);C=D[m];break;elseif d>119.0 then W=(W-C);d=(0XEE+(((O[1][0x22][11.0](p-p,d,d))~=p and p or p)-d));elseif d<120.0 and d>106.0 then C=(p);d=(0X6a+(O[0x1][0X22][12.0](((O[1][0x22][6.0](d,(p)))<p and d or d)-d,(p))));end;end;W=W==C;if W then W=(D[m]);end;if not W then W=(p);end;d=(0X5f);while true do if d<95.0 then N=N(W,C);W=D[m];break;elseif d>50.0 then C=(p);d=(50+(O[0X1][34][13.0]((O[1][0x22][14.0]((O[1][0X22][9.0](d-d,(p))),p,p)))));end;end;N=N+W;d=44;while true do if not(d>27.0)then z=z(N,W);d=0X3d+((O[1][34][15.0]((O[1][34][7.0](d-p,p)),(d)))~=d and p or d);else if not(d<=44.0)then r=(r+z);break;else W=p;d=-19+((O[0X1][34][12.0](d,(p)))-d+p+p);end;end;end;S=S+r;(D)[m]=S;S=(x);d=24;while true do if d==24.0 then r=J[m];d=(-25+(O[0X1][34][7.0]((O[0x1][0X22][7.0](d+d,p,d))-p,d)));elseif d==23.0 then z=O[0x1][0X11];d=-4294967258+(O[1][0X22][8.0]((O[1][0x22][10.0]((O[0X1][34][9.0](d,(p)))))+p));elseif d==10.0 then N=(q[m]);d=86+(O[1][0X22][14.0]((O[0X1][34][13.0](d-p-p)),d,p));elseif d==97.0 then z=z(N);d=-168+(O[1][0X22][9.0]((O[1][34][10.0](d<=p and p or d))+d,(p)));elseif d==76.0 then(S)[r]=(z);break;end;end;end;else if not(p>=3)then x[f[m]]=w[m]-a[m];else if p~=4 then local r,N,w,d,z,C=(0Xa);while true do if r<97.0 and r>76.0 then N=(N[C]);break;elseif r<59.0 then d=0;r=87+((p>r and p or p)-p+r>p and r or p);elseif r<76.0 and r>10.0 then C=8.0;r=-149+((O[0X1][0X22][12.0]((O[0X1][34][10.0](r))-p,(p)))+r);elseif r>94.0 then N=(4503599627370495);d=(d*N);r=-21+(O[0X1][34][7.0]((p-r>p and p or r)>p and p or r,r,p));elseif not(r>59.0 and r<94.0)then else N=(O[0X1][34]);r=(0X26+((O[1][34][12.0]((O[1][34][10.0](p))==p and p or p,(p)))-p));end;end;C=(O[1][0x22]);local W,S=7.0,-4.294967246E9;C=C[W];W=(O[0X1][34]);local h;r=(90);while true do if r==90.0 then w=7.0;r=107+(O[1][0X22][7.0]((r-p>=r and p or p)+p));elseif r==113.0 then W=(W[w]);w=D[m];r=(28+(O[0X1][34][13.0]((O[0X01][0x22][15.0](r-r-p,(p))))));elseif r==28.0 then h=(p);break;end;end;w=(w-h);r=(6);while true do if r==6.0 then h=p;r=50+((O[0X1][34][13.0](p+r~=r and r or p))-r);elseif r==45.0 then z=D[m];r=(40+(O[0X1][34][13.0]((O[1][34][11.0]((O[0X1][34][13.0](r)),p,r))>=r and p or p)));elseif r==40.0 then W=W(w,h,z);w=(D[m]);W=W+w;r=(-0xe3+(O[1][0X22][8.0]((O[1][34][9.0]((O[0X1][0X22][8.0](r)),(p)))-p)));elseif r~=103.0 then else w=D[m];break;end;end;W=W-w;w=D[m];W=W-w;C=C(W);r=(47);while true do if r==47.0 then W=p;r=(0X13+((O[0X1][34][15.0]((O[1][34][10.0](p-r)),(p)))~=r and r or p));elseif r==66.0 then C=C+W;r=0x39+(O[0X1][34][13.0](p-r-p+p));elseif r~=57.0 then else N=N(C);break;end;end;d=(d+N);r=0x31;while true do if r>49.0 then(D)[m]=S;break;elseif r<92.0 then S=(S+d);r=(-0X3+(((O[1][34][7.0](r,r))<p and r or p)+r-p));end;end;S=(x);r=(41);while true do if r>41.0 then if r~=67.0 then N=(x);r=0x40+(r-r+p-r+r);else C=(q[m]);N=(N[C]);C=(x);break;end;else d=(f[m]);r=(0X4A+(O[0X1][34][7.0]((O[0X1][34][13.0]((O[0X1][34][11.0](p,p,p))))+p,r)));end;end;W=J[m];r=0X13;while true do if r==19.0 then C=(C[W]);r=-0x25faA+(O[0X1][34][6.0]((r~=p and p or p)-p+r,(r)));elseif r~=86.0 then else N=N[C];break;end;end;S[d]=(N);else(x)[q[m]]=tick;end;end;end;end;else if not(p>=0XF)then if not(p<12)then if not(p<13)then if p~=14 then local r,N=f[m],(q[m]);if N~=0.0 then T=r+N-1.0;for D in x do if not(D>T)then else(x)[D]=nil;end;end;end;local D,w,d=(J[m]);if N==1.0 then w,d=O[0X1][40](x[r]());else w,d=O[0X1][40](x[r](O[1][0xc](r+1.0,T,x)));end;if D~=1.0 then if D==0.0 then w=w+r-1.0;T=w;else w=r+D-2.0;T=w+1.0;end;N=(0.0);for D=r,w do N=(N+1.0);(x)[D]=d[N];end;else T=r-1.0;end;for r in x do if r>T then x[r]=(nil);end;end;else(x)[q[m]]=x[f[m]]%a[m];end;else x[f[m]]=(x[q[m]]>=x[J[m]]);end;else if p==0Xb then(x)[q[m]]=x;else for r=1.0,q[m]do(x)[r]=(n[r]);end;end;end;else if p<0X012 then if p>=16 then if p~=17 then V[q[m]][A[m]]=x[J[m]];else x[f[m]]=(x[q[m]]==a[m]);end;else U=(f[m]);for r=1.0,U do x[r]=n[r];end;I=(U+1.0);end;else if p<19 then if x[q[m]]==a[m]then m=(f[m]);end;else if p==20 then local r=(J[m]);T=(r+2.0);for N in x do if not(N>T)then else x[N]=nil;end;end;x[r](x[r+1.0],x[r+2.0]);T=r-1.0;for r in x do if r>T then(x)[r]=(nil);end;end;else x[q[m]]=game;end;end;end;end;end;end;end;m=m+1.0;until false;end);if not(t)then if _ then for r,N in _ do if not(r>=1.0)then else(N)[1]=(N);(N)[0X2]=x[r];N[0X3]=2;(_)[r]=nil;end;end;end;if O[0x1][20](i)=='str\105\110\103'then if O[0X1][0X19](i,':\40%d+)[:\13\n]')then O[1][0X2]("Luraph Scr\105p\116:"..(R[m]or'(intern\97l)')..': '..O[0x1][0X13](i),0.0);else(O[1][0x2])(i,0.0);end;else O[0x1][2](i,0.0);end;else if i then if y~=1.0 then return x[j](O[0X1][12](j+1.0,T,x));else return x[j]();end;elseif not(j)then else return O[0x1][0X00c](j,y,x);end;end;end;end;end;return Y;end;if not e[0X29D1]then o=(-0X61af1aD8+(H.GF((H.lF(H.U[0x2]-e[0X7c23]+e[0X7279])),(e[0X15Ba]))));e[10705]=(o);else o=(e[10705]);end;return o;end,sZ=function(H,H,r,e,o,N)if r>18.0 then(o[1][32])[e+2.0]=(N);else e=#o[0X1][32];o[1][32][e+1.0]=H;end;return e;end,FF=bit32.countlz,YF=bit32.lshift,S=function(H,r,e,o)o=H.f;if not e[0X3713]then(e)[0X5156]=(37+((H.CF(H.U[8]-e[0x160B]-e[0X3950],(e[29678])))>H.U[4]and e[0X73Ee]or e[23578]));r=-3488906306+((H.lF(e[29678]))-H.U[0X3]+e[29305]-e[0X5fe7]);(e)[0X3713]=r;else r=H:i(r,e);end;return o,r;end,dZ=function(H,r,e,o,N)if r>20.0 then if r==73.0 then r=H:wZ(r,o,N);else N[0X1d]=(function()local V,x={N[0X8],N};x=H:jZ(V);if x==nil then else return H.m(x);end;end);return r,10104,e;end;else e,r=H:pZ(e,o,N,r);end;return r,nil,e;end,_Z=function(H,H,r,e,o,N,V,x,O,R,A)if not(A>68.0)then o=r[0x1][0X11](e);V=(15);else if not(A>=298.0)then if r[0X1][0X25]==r[1][5]then else(x)[3.0]=H;(x)[2.0]=o;for H=58,187,0X1f do if H~=89.0 then(x)[8.0]=O;else(x)[9.0]=(R);break;end;end;end;else(x)[6.0]=(N);return o,63685,V;end;end;return o,nil,V;end,DF=string.gsub,D=function(H,r,e,o,N)if o~=116.0 then e,o=H:S(o,N,e);else r[0X10]=H.HF;if not(not N[0X3F02])then o=H:r(N,o);else o=1124215264+(H.U[4]+N[0X7cB1]+N[20060]+N[0x4E5c]-H.U[0X2]);(N)[0X3f02]=o;end;end;return e,o;end,lF=bit32.bnot,I=function(H,r,e,o)o[0x18]=(nil);if not e[2476]then r=H:s(r,e);else r=H:L(e,r);end;return r;end,eZ=function(H,H,r,e,o)local N,V;for x=106,259,39 do if not(x<145.0)then V={[0X1]=H%4.0,[3]=N-N%1.0};break;else N=H/4.0;end;end;e[0X1][0X23][H]=(V);o[r]=V;end,MF=function(H,r,e,o)e=78;repeat if e<78.0 then H:eF(r);break;elseif e>78.0 then(r[34])[9.0]=H.u;if not(not o[0X1995])then e=(o[0X1995]);else e=(0XC+(((o[23578]<o[0X58Fc]and o[0X5005]or o[0X5BbE])==o[5562]and o[10705]or o[20822])-o[0x007279]+o[0x73Ee]));(o)[0X1995]=(e);end;else if not(e<85.0 and e>48.0)then else e=H:mF(e,r,o);end;end;until false;(r[0x22])[13.0]=H.T.countrz;(r[34])[11.0]=(H.T.band);return e;end,xZ=function(H,H,r)H=r[0X15bA];return H;end,JF=function(H,H,r,e)(e)[H]=r[1][0X2a]();end,vF=function(H,r,e,o,N,V,x)V=6;while true do if V>6.0 then x=function(...)return(...)();end;break;else if V<45.0 then o=function()local O,R,A=({r,r[31]});R,A=H:AF(A,O);if R==nil then else return H.m(R);end;R=H:TF(A,O);if R==nil then else return H.m(R);end;end;if not(not e[22780])then V=H:uF(V,e);else V=(0x2d+((H.rF((H.CF(H.U[1]+H.U[1],(e[416]))),e[0X7cb1]))-e[17144]));e[22780]=(V);end;end;end;end;N=o();V=18;while true do if V==18.0 then if r[0Xc]~=r[0X7]then else local O=(0X55);repeat if O>48.0 then O=48;r[7],r[0X24]=r[20]~=0X36,((0XBe or 0Xc7)^r[5]);else r[0X1b]=(x);break;end;until false;end;r[34][16.0]=H.oF;if not e[0X602b]then V=(-26+((H.aF((e[0X58FC]~=e[31003]and e[0X7984]or e[416])+e[0X73eE],(e[0X7c23])))<V and H.U[8]or e[0X487F]));e[0X602B]=V;else V=e[24619];end;else if V~=73.0 then else r[0X22][6.0]=H.GF;break;end;end;end;(r[34])[10.0]=(H.T.countlz);return o,x,N,V;end,P=function(H)local r=H[0];return function(H)if H.TeamCheck then return H:TeamCheck();end;if H.NPC then return true;end;if H.Player and r[1][r[3]].CoreGuiController.LocalFighter and r[1][r[3]].CoreGuiController.LocalFighter.Data then local e=r[1][r[3]].FighterController._player_to_fighter[H.Player].Data;if e.TeamkillEnabled then return true;end;if r[1][r[3]].CoreGuiController.LocalFighter.Data.TeamkillEnabled then return true;end;return r[1][r[3]].CoreGuiController.LocalFighter.Data.TeamID~=e.TeamID;end;end;end,R=nil,M=function(H,r,e,o)(o)[0X2]=H.d;if not r[0X5Fe7]then e=-3126498743+((H.HF(H.U[9]+H.U[2],H.U[2],H.U[0X4]))+H.U[0x1]-H.U[4]);r[0x5fE7]=e;else e=r[24551];end;return e;end,XZ=function(H,H,r,e,o,N,V)if r==0X5b then(H)[V]=V+e;elseif r~=20 then elseif o[1][7]==N then return{};end;return nil;end,E=function(H)local r=H[0];local e=H[2];local o=H[1];return function(H)if H.Player then local N=o[1][o[3]].FighterController._player_to_fighter[H.Player];if N.Entity and N.Entity._invincibility_visual then return false;end;if e[1][e[3]].Enabled then local e=N.EquippedItem;if e and e.Name=='Kat\97na'then if r[1][r[3]].Value=="\65l\119a\121\115"then if table.find({'Spray','Exogun','Crossbo\119'},o[1][o[3]].CoreGuiController.LocalFighter.EquippedItem.Name)then return true;end;return false;end;if tick()+(e.Info.DeflectCooldown or 0)<e._deflect_cooldown then if table.find({"\83pra\121","Ex\111gu\110","C\114ossbo\119"},o[1][o[3]].CoreGuiController.LocalFighter.EquippedItem.Name)then return true;end;return false;end;end;end;end;return H.Health>0;end;end,b=function(H,r,e,o)(e)[0X17]=(4503599627370496);if not(not r[32490])then o=r[32490];else(r)[0X2141]=(-908895903+((H.HF((H.rF((H.CF(H.U[7],(r[0X44a8])))))))<=r[17576]and r[0X7984]or H.U[6]));o=-4285468565+(H.lF(r[0x5Fe7]-r[23578]+H.U[4]+r[14099]));r[0X7EeA]=(o);end;return o;end,LF=getmetatable,k=string.byte,bZ=function(H,r,e,o,N,V,x,O)if V<68.0 then O=(o[1][0X21][e]);else if V>10.0 then x=(#O);if o[0X2]~=N then H:IZ(x,O,r);end;end;end;return x,O;end,IF=table,qF=function(H,H,r,e)if e>=r[1][0X17]then return{e-r[0X1][27]},H;end;H=(15);return nil,H;end,QF=function(H,H,r)return{r[0x1][4](r[0x1][26],r[1][14]-H,r[0X1][0Xe]-1.0)};end,wZ=function(H,r,e,o)(o)[28]=H.x;if not(not e[0X1a0])then r=(e[0X1A0]);else r=0X10+(H.lF((H.rF(e[2476]<e[31003]and e[24551]or e[0x5C1a]))-e[20060]));e[416]=r;end;return r;end,g=function(H)local r=H[1];local e=H[2];local o=H[0];return function(H,N,V)if not H then return;end;o.EntityThreads[H]=task.spawn(function()local x,O,R;if N then x=r(H,'Hu\109anoid',10)or{};O=x and r(x,"R\111\111tPart",workspace.StreamingEnabled and 9e9 or 10,true);R=H:WaitForChild("Hi\116\98\111xHead",1)or H:WaitForChild("He\97d",10)or O;else x=r(H,"Hum\97no\105d",10)or{HipHeight=0};O=r(H,"\80ri\109\97ryPart",10,true);R=H:WaitForChild("\72i\116boxHead",1)or H:WaitForChild('He\97d',10)or O;end;local r,A=x.Health or H:GetAttribute("\72e\97lth")or 100,x.MaxHealth or H:GetAttribute('Ma\120Hea\108\116h')or 100;if x and O then local f={Connections={},Character=H,Health=r,Head=R,Humanoid=x,HumanoidRootPart=O,HipHeight=x.HipHeight+(O.Size.Y/2)+(x.RigType==Enum.HumanoidRigType.R6 and 2 or 0),MaxHealth=A,NPC=N==nil,Player=N,RootPart=O,TeamCheck=V};if N==e then o.character=f;o.isAlive=true;o.Events.LocalAdded:Fire(f);else f.Targetable=o.targetCheck(f);for r,r in o.getUpdateConnections(f)do table.insert(f.Connections,r:Connect(function()f.Health=H:GetAttribute('He\97lth')or x.Health or 100;f.MaxHealth=H:GetAttribute('MaxHealth')or x.MaxHealth or 100;o.Events.EntityUpdated:Fire(f);end));end;table.insert(o.List,f);o.Events.EntityAdded:Fire(f);end;table.insert(f.Connections,H.ChildRemoved:Connect(function(r)if r==O or r==x or r==R then if r==O and x.RootPart then O=x.RootPart;f.RootPart=x.RootPart;f.HumanoidRootPart=x.RootPart;return;end;o.removeEntity(H,N==e);end;end));end;o.EntityThreads[H]=nil;end);end;end,fF=function(H,H,r,e)e=(r[H[0X1][37]()]);return e;end,BF=bit32.band,EZ=function(H,H,r)(H[1])[0X1a]=r;H[0X001][0Xe]=(1.0);end,G=function(H,H)H[0xC]=function(r,e,o)local N=({H});r=r or 1.0;e=(e or#o);if(e-r+1.0)>7997.0 then return N[1][11](e,r,o);else return N[1][0X3](o,r,e);end;end;end,kZ=function(H,H)return{H};end,X=function(H,r,e,o)e[22]=(coroutine.yield);if not(not r[0X42F8])then o=r[0X42F8];else(r)[10743]=29+(H.iF(r[0X44a8]-H.U[3]+H.U[0X4]-H.U[4]));o=(0X35+((H.FF(r[17576]+r[0X5C1a]<=r[0X5c1A]and H.U[2]or H.U[6]))<r[0X3F02]and r[0X4e5c]or r[0X44a8]));r[0x42F8]=o;end;return o;end,DZ=function(H,H,r)H=(#r);return H;end,VF=(function(H)local r,e,o,N=({});N,o=H:_(o,N,r);N=H:H(o,r,N);N=H:B(N,r,o);local V;V,N=H:a(N,o,r,V);local x;N,x=H:qZ(x,N,V,r,o);V=nil;V,N=H:NZ(o,V,N,r);H:OZ(r);local O,R;N,R,O=H:jF(O,r,o,N,R);local A;O,R,A,N=H:vF(r,o,O,A,N,R);N=H:MF(r,N,o);N,e,A=H:tF(A,N,V,o,x,O,r,R);if e==nil then else return H.m(e);end;end),e=bit32.bnot,hF=function(H,r,e)(r)[0x1548]=-66+((r[14099]+r[0X3F02]+r[22717]<=r[8513]and H.U[8]or r[0X3bd2])+r[0x7CB1]);r[0x3807]=(-1879048042+((H.GF((H.FF(r[0x7c23]-r[0x3326])),(r[0X44a8])))-r[0X58bd]));e=0X17+(((H.BF((H.iF(r[32490]))))<H.U[5]and H.U[0X5]or r[20060])-H.U[5]);(r)[0x304d]=(e);return e;end,cZ=function(H,r,e,o,N,V,x,O,R)local A;N=(nil);o=124;repeat e,A,o,N,x=H:MZ(V,N,x,o,e,R);if A==5972 then break;end;until false;r=(nil);O=nil;return O,N,r,o,e,x;end,VZ=function(H,r,e,o,N,V,x)if x[0X1][0X18]then H:ZZ(x,N,V,e,o);else(r)[N]=(x[0X001][33][o]);end;end,aF=bit32.lrotate,dF=function(H,r,e,o)if o>59.0 and o<94.0 then(e[1])[0x23]={};o=0X3b;else if o>76.0 then H:pF(e,r);return r,285,o;else if not(o<76.0)then else o=(0X5E);r=(e[0x01][0x25]()-0X010640);end;end;end;return r,nil,o;end,xF=function(H,r)(r[0X1])[0x21]=H.R;end,pF=function(H,H,r)H[1][0X21]=H[0X1][0X11](r);end,j=function(...)(...)[...]=nil;end,r=function(H,H,r)r=(H[0X3F02]);return r;end,zF=function(H,r,e,o)local N;r=H.R;local V=e[0X01][29]();if not(V>33.0)then if e[0x1][0X27]~=e[1][0X15]then if V==33.0 then r=e[0X1][39]();else r=e[1][0x24]();end;end;else N,r=H:kF(r,V,e);if N==nil then else return{H.m(N)},r,o;end;end;o=20;return nil,r,o;end,yZ=function(H,r,e,o,N,V,x,O,R,A,f)local D;if not(r>102.0)then if r<=60.0 then for J=1.0,A,0x1 do local A=f[1][0X25]();if not(f[0x1][0X023][A])then H:eZ(A,J,f,x);else x[J]=f[1][35][A];end;end;else o[0X4]=f[1][37]();(o)[10]=R;end;else V,e,O,D,N=H:vZ(N,f,r,V,R,O,e);if D~=0XFeE7 then else return V,e,26829,O,N;end;end;return V,e,nil,O,N;end,A=pcall,i=function(H,H,r)H=(r[0X3713]);return H;end,gZ=function(H,r,e)e=-1505+(H.aF((H.FF((H.lF(r[20822]))<=H.U[9]and r[23578]or r[10869])),(r[17576])));(r)[31003]=e;return e;end,N=unpack,H=function(H,r,e,o)local N;repeat N,o=H:t(e,o,r);if N~=42849 then else break;end;until false;e[0X08]=H.k;e[0x9]=nil;e[0XA]=nil;(e)[0X00b]=(nil);(e)[12]=nil;return o;end,y=bit32.bxor,nF=function(H,r)r[1][0x23]=H.R;end,cF=function(H,r,e)(r)[6287]=0x25+((H.lF((H.iF(r[31779]+e))))>r[5562]and r[32490]or r[22780]);r[11426]=-4294967181+((H.lF(r[31779]+r[6549]<r[30606]and r[0X15ba]or r[31921]))-r[14672]);e=-0x40000074+(H.rF((H.aF((H.iF(r[15471])),(r[0X73ee])))+r[15314],r[17144],r[0X304D]));r[0x1dF0]=e;return e;end,UF=function(H,r,e,o)if not(e<=23.0)then if e>24.0 then if e~=97.0 then(r)[0X26]=(function()local N,V,x,O={r},(0X15);while true do if not(V<=15.0)then if V>=112.0 then x,V=H:qF(V,N,O);if x~=nil then return H.m(x);end;else O=N[1][37]();V=(112);end;else x=H:EF(O);return H.m(x);end;end;end);if not(not o[31779])then e=(o[0X7C23]);else o[13094]=0X00d+(H.FF(o[18559]-o[5643]+H.U[0X9]-o[0x1eD4]));e=(0X90Ef49+(o[16130]-H.U[4]+o[16130]+o[0X5005]-o[29678]));o[0x7C23]=(e);end;else(r)[0X2A]=function()local N,V,x,O,R,A,f,D,J,q,w=({r,r[30]});J,O,x,f,A,w,D,q,R=H:mZ(q,f,w,O,N,A,R,x,J,D);local a,Y,n;n,a,Y,R,w,q=H:cZ(Y,w,R,a,A,q,n,N);for R=0X44,0X156,0X73 do Y,V,n=H:_Z(f,N,A,Y,D,n,x,a,J,R);if V~=0Xf8C5 then else break;end;end;x[11.0]=w;if N[1][0X27]~=N[1][0x1B]then(x)[1.0]=(q);end;for R=1.0,A,1 do local A,U,T,m;T,m,U,A=H:tZ(U,m,T,A,N);local I,d,z,_,C,W,t;C,m,U,T,t,d,I,W,_,z=H:GZ(W,N,A,C,t,z,I,U,_,d,m,T);while true do if z>99.0 then t=(T-_)/8;break;else if not(z<102.0)then else z=0X66;W=((U-m)/0X8);end;end;end;(J)[R]=(d);for A=0x1f,0x63,17 do if A<=48.0 then if not(A<=31.0)then(a)[R]=(C);else Y[R]=(W);end;else if A<=65.0 then H:lZ(t,R,w);else if A<99.0 then if _==5 then if N[1][24]then T,U=(nil);_,U,T=H:BZ(N,x,_,t,U,T,n);H:YZ(T,R,U);else q[R]=N[0X1][33][t];end;elseif _==0X0 then(w)[R]=t;elseif _==2 then H:iZ(w,R,t);elseif _==1 then(w)[R]=R-t;elseif _==7 then z=(nil);for A=0xe,0X168,89 do if A<192.0 and A>14.0 then N[1][0X20][z+1.0]=(q);elseif A<103.0 then z=H:SZ(N,z);elseif A>192.0 then N[0X1][0X20][z+3.0]=(t);break;elseif not(A<281.0 and A>103.0)then else H:rZ(z,R,N);end;end;end;else V=H:LZ(R,n,W,x,f,N,C,m,Y);if V==nil then else return H.m(V);end;end;end;end;end;if I==5 then H:VZ(D,x,C,R,O,N);elseif I==0X0 then(a)[R]=C;elseif I==0x2 then H:KZ(a,R,C);elseif I==1 then(a)[R]=R-C;else if I~=7 then else H:PF(N,D,R,C);end;end;end;(x)[0X7]=N[0X1][37]();return x;end;return 0XB4b0,e;end;else(r)[0X27]=function()local N,V=({r});local x=N[0X001][0x025]();if N[0X1][0XB]==N[0x1][0X17]then else for O=15,212,0X65 do if not(O<116.0)then V=H:QF(x,N);return H.m(V);else H:wF(x,N);end;end;end;end;if not o[0X304D]then e=H:hF(o,e);else e=(o[0X304D]);end;end;else if e==10.0 then e=H:nZ(r,o,e);else r[40]=(function(...)local N=({r});local r=N[1][6]("#",...);if r~=0.0 then else return r,N[0X1][21];end;return r,{...};end);if not(not o[0x15BA])then e=H:xZ(e,o);else e=(-4294967363+((H.lF((o[31108]>o[15314]and o[10505]or o[0X487f])-o[17576]))+o[0X3bD2]));o[0X15ba]=(e);end;end;end;return nil,e;end,XF=bit32,_F=function(H,H,r)return{r[0X29](H,r[5])};end,YZ=function(H,H,r,e)H[e+2.0]=(r);(H)[e+3.0]=1.0;end,bF=utf8,IZ=function(H,H,r,e)r[H+1.0]=e;end,QZ=function(H,H,r)r=H[1](H[0X02][26],H[0X2][14],H[2][14]);return r;end,FZ=function(H,H,r,e)(r)[e+2.0]=H;end,w=function(H)local r=H[1];local e=H[2];local o=H[0];return function(H,N,V)local x={};if typeof(V)~="\73nstance"then local O={r,e.Character};for r,r in o.List do if r.Targetable and r.Character then local e=r.Character:FindFirstChild("\82iot Shie\108d");if e then for R,R in e:GetDescendants()do if R:IsA('\66asePart')then R.CanQuery=true;R.CanCollide=true;end;end;for R,R in r.Character:GetChildren()do if R~=e then table.insert(O,R);end;end;table.insert(x,e);else table.insert(O,r.Character);end;end;end;if typeof(V)=="t\97ble"then for r,r in V do table.insert(O,r);end;end;V=o.IgnoreObject;V.FilterDescendantsInstances=O;end;local r=workspace.Raycast(workspace,H,(N-H),V);for H,H in x do for e,e in H:GetDescendants()do if e:IsA('B\97sePa\114t')then e.CanQuery=false;e.CanCollide=false;end;end;end;return r;end;end,AZ=function(H,r,e,o)o=(1.0);repeat local N;for V=0X75,171,43 do if V==160.0 then N=H:zZ(N,e);break;else end;end;if o==e[2][36]then else r=r+((N>127.0 and N-128.0 or N)*o);o=(o*128.0);(e[2])[0XE]=e[0x2][14]+1.0;end;until N<128.0;return o,r;end,NZ=function(H,r,e,o,N)local V;N[27]=nil;N[0x1c]=(nil);e=(nil);(N)[0X1D]=nil;o=(0X12);repeat o,V,e=H:dZ(o,e,r,N);if V~=10104 then else break;end;until false;N[30]=function()local H=({N});local r,V=H[1][18]("<I4",H[1][0X1a],H[0X1][14]);H[0X1][0xe]=V;return r;end;(N)[0X1f]=function()local H={N};local r,V=H[0X1][18]('\60i8',H[0X1][0X1A],H[0X1][0XE]);H[0X1][0xE]=(V);return r;end;(N)[32]=(nil);return e,o;end,mZ=function(H,r,e,o,N,V,x,O,R,A,f)local D,J=(V[1][37]());R={H.R,nil,H.R,H.R,H.R,nil,nil,nil,nil,nil,H.R};local q;N=(nil);local w;O=0x28;while true do if O>26.0 and O<103.0 then q=V[0X1][17](D);O=(103);elseif O>40.0 then R[5]=(q);O=(0x1A);N={};else if not(O<40.0)then else w=(1.0);break;end;end;end;x=nil;e=nil;f=(nil);for a=60,0x141,42 do x,w,J,f,e=H:yZ(a,w,R,e,x,q,f,N,D,V);if J==26829 then break;end;end;A=V[1][0X11](x);r=(nil);o=nil;return A,N,R,e,x,o,f,r,O;end,z=coroutine.wrap,mF=function(H,r,e,o)(e[0X22])[14.0]=H.T.bor;if not(not o[30606])then r=H:yF(r,o);else r=-3598712747+(H.YF((H.lF((o[0x602B]<o[0X5156]and o[0X791b]or o[17144])-o[0x3326])),(o[0X304D])));o[0X778e]=(r);end;return r;end,uZ=function(H,H,r)r=H[2]();return r;end,zZ=function(H,H,r)H=r[0X1](r[0X2][0x1A],r[0X2][14],r[2][14]);return H;end,KZ=function(H,H,r,e)H[r]=(r+e);end,tZ=function(H,H,r,e,o,N)o=N[0x1][38]();H=(nil);e=(nil);r=(nil);return e,r,H,o;end,pZ=function(H,r,e,o,N)if not(N<20.0)then r=(function(...)return(...)[...];end);if not(not e[0x487F])then N=e[0X487f];else N=(0X4A+(H.FF((H.HF((H.CF((H.FF(e[0x7279])),(N))),e[16130])))));e[18559]=(N);end;else o[0X1B]=9007199254740992;if not e[0X5005]then N=0X47+(H.lF((H.lF((H.CF(e[0X3C6F]+e[22717],(e[0X44a8])))))));(e)[0x5005]=(N);else N=(e[20485]);end;end;return r,N;end,jF=function(H,r,e,o,N,V)local x;(e)[37]=nil;N=19;while true do if N==19.0 then e[0X22]={};(e)[0X23]=H.R;if not(not o[15314])then N=(o[15314]);else(o)[0x2909]=-3758096370+(H.YF((H.rF((H.YF(o[10869],(N)))))+o[31003],(o[10743])));N=(0X16559C80+((H.GF(o[23578]>o[0x487f]and o[5643]or o[0X58BD],(o[0X44A8])))-o[0X160b]-H.U[9]));(o)[0x3bd2]=(N);end;elseif N==86.0 then(e)[0X24]=(function()local O,R,A,f={e};for D=0X77,0x112,0x00F do if D==134 then O[0X1][0xe]=(f);else if D==149 then R=H:kZ(A);return H.m(R);else if D==0X77 then A,f=O[0X1][0X012]("\60d",O[1][0X1A],O[0X1][14]);end;end;end;end;end);if not(not o[0X1ED4])then N=o[0X1ED4];else N=(-1133713934+((H.CF((H.lF(o[0X7EEa]))+o[14672],(o[10743])))+H.U[0X2]));(o)[0x1Ed4]=N;end;else if N==61.0 then H:fZ(e);break;end;end;end;(e)[0X26]=nil;(e)[0x27]=nil;(e)[40]=(nil);e[0X29]=(nil);e[42]=nil;N=93;repeat x,N=H:UF(e,N,o);if x==0XB4B0 then break;end;until false;r=(nil);V=nil;return N,V,r;end,PF=function(H,r,e,o,N)local V,x=0X34;repeat if V==52.0 then V=3;x=(#r[1][0X20]);else if V==3.0 then H:gF(e,x,r);break;end;end;until false;r[0X1][32][x+2.0]=(o);r[0X1][0x20][x+3.0]=(N);end,vZ=function(H,r,e,o,N,V,x,O)if not(o<=144.0)then if o~=186.0 then x=e[1][17](N);return N,O,x,0XfEe7,r;else r=e[0X1][0x11](N);end;else for o=1.0,e[0x2](),1 do o=nil;local R;for A=0X73,0X120,0X1F do if A==177 then R=(o/2.0);if o%2.0==0.0 then(V)[O]=(R-R%1.0);else local f,D=0X4E;repeat if not(f>48.0)then for J=R-R%1.0,O do V[J]=D;end;break;else f,O,D=H:RZ(e,f,O,D);end;until false;end;else if A==115 then H:TZ();else if A==146 then o=H:uZ(e,o);else if A==0xd0 then O=(O+1.0);break;end;end;end;end;end;end;N=e[1][0x25]()-31841;end;return N,O,x,nil,r;end,K=function(H,r,e,o)if not(o>45.0)then o=H:V(r,e,o);else if o~=103.0 then(e)[25]=(H.n.match);return 42272,o;else o=H:b(r,e,o);end;end;return nil,o;end,c=function(H,r,e,o)if r==3.0 then e[0X1]=H.p;if not o[0x44a8]then r=(-1610610610+(H.GF((H.lF((H.BF(H.U[5]<H.U[6]and H.U[0X9]or H.U[1])))),(r))));(o)[17576]=(r);else r=(o[0X44a8]);end;else if r==6.0 then r=H:M(o,r,e);elseif r==45.0 then(e)[3]=H.N;if not(not o[23578])then r=(o[23578]);else r=-3059063772+((H.U[0X9]+r-H.U[0X7]<=H.U[8]and H.U[9]or H.U[0X4])+o[24551]);(o)[23578]=r;end;else if r==40.0 then(e)[0X4]=H.O;if not(not o[31921])then r=(o[0x7Cb1]);else r=(-3750829303+(H.GF(H.U[0X7]-H.U[0X1]-H.U[5]+r,(o[17576]))));o[31921]=(r);end;else if r~=103.0 then else e[0x5]=({});return 0x6b5f,r;end;end;end;end;return nil,r;end,L=function(H,H,r)r=(H[0x9ac]);return r;end,Z=function(H,r,e)r=-3059063886+(H.rF((H.rF((H.BF(e[20822])),H.U[9],e[0x004e5c]))+e[10869],e[0X4E5c]));(e)[0x58BD]=(r);return r;end,s=function(H,r,e)r=(-3059080615+((H.HF(e[0X160b]>e[0X7279]and e[14099]or H.U[0x08],H.U[1]))-e[0x2141]+H.U[9]));(e)[2476]=r;return r;end,CZ=function(H,H,r)r[H+3.0]=(3.0);end,TZ=function(H)end,Y=function(H,H)H[0X14]=type;end,iZ=function(H,H,r,e)(H)[r]=r+e;end}):VF()(...);

-- [[ UNIVERSAL MODULE ]] --

local Modern = shared.Modern
local cloneref = cloneref or function(obj)
	return obj
end

if identifyexecutor then
	if table.find({'Argon', 'Wave'}, ({identifyexecutor()})[1]) then
		getgenv().setthreadidentity = nil
	end
end

local Players = cloneref(game:GetService('Players'))
local TweenService = cloneref(game:GetService('TweenService'))
local UserInputService = cloneref(game:GetService('UserInputService'))
local TextService = cloneref(game:GetService('TextService'))
local GuiService = cloneref(game:GetService('GuiService'))
local RunService = cloneref(game:GetService('RunService'))
local HttpService = cloneref(game:GetService('HttpService'))
local CoreGui = cloneref(game:GetService('CoreGui'))
local GroupService = cloneref(game:GetService('GroupService'))
local MarketplaceService = cloneref(game:GetService('MarketplaceService'))
local TeleportService = cloneref(game:GetService('TeleportService'))
local ContextService = cloneref(game:GetService('ContextActionService'))
local Lighting = cloneref(game:GetService("Lighting"))


local gameCamera = workspace.CurrentCamera or workspace:FindFirstChildWhichIsA('Camera')
local lplr = Players.LocalPlayer
local assetfunction = getcustomasset





local run = function(func)
	func()
end
local ModernFile = shared.ModernFile
local entitylib = ModernFile.loadfile("Modern/Library/Entity.lua")
local prediction = ModernFile.loadfile("Modern/Library/Prediction.lua")
local getfontsize = Modern.Libraries.getfontsize
local addGradient = Modern.Libraries.addGradient
local Targetinfo = Modern.Libraries.Targetinfo
Modern.Libraries.entitylib = entitylib
Modern.Libraries.prediction = prediction
Modern.Libraries.auraanims = {
	Normal = {
		{CFrame = CFrame.new(-0.17, -0.14, -0.12) * CFrame.Angles(math.rad(-53), math.rad(50), math.rad(-64)), Time = 0.1},
		{CFrame = CFrame.new(-0.55, -0.59, -0.1) * CFrame.Angles(math.rad(-161), math.rad(54), math.rad(-6)), Time = 0.08},
		{CFrame = CFrame.new(-0.62, -0.68, -0.07) * CFrame.Angles(math.rad(-167), math.rad(47), math.rad(-1)), Time = 0.03},
		{CFrame = CFrame.new(-0.56, -0.86, 0.23) * CFrame.Angles(math.rad(-167), math.rad(49), math.rad(-1)), Time = 0.03}
	},
	Random = {},
	['Horizontal Spin'] = {
		{CFrame = CFrame.Angles(math.rad(-10), math.rad(-90), math.rad(-80)), Time = 0.12},
		{CFrame = CFrame.Angles(math.rad(-10), math.rad(180), math.rad(-80)), Time = 0.12},
		{CFrame = CFrame.Angles(math.rad(-10), math.rad(90), math.rad(-80)), Time = 0.12},
		{CFrame = CFrame.Angles(math.rad(-10), 0, math.rad(-80)), Time = 0.12}
	},
	['Vertical Spin'] = {
		{CFrame = CFrame.Angles(math.rad(-90), 0, math.rad(15)), Time = 0.12},
		{CFrame = CFrame.Angles(math.rad(180), 0, math.rad(15)), Time = 0.12},
		{CFrame = CFrame.Angles(math.rad(90), 0, math.rad(15)), Time = 0.12},
		{CFrame = CFrame.Angles(0, 0, math.rad(15)), Time = 0.12}
	},
	Exhibition = {
		{CFrame = CFrame.new(0.69, -0.7, 0.6) * CFrame.Angles(math.rad(-30), math.rad(50), math.rad(-90)), Time = 0.1},
		{CFrame = CFrame.new(0.7, -0.71, 0.59) * CFrame.Angles(math.rad(-84), math.rad(50), math.rad(-38)), Time = 0.2}
	},
	['Exhibition Old'] = {
		{CFrame = CFrame.new(0.69, -0.7, 0.6) * CFrame.Angles(math.rad(-30), math.rad(50), math.rad(-90)), Time = 0.15},
		{CFrame = CFrame.new(0.69, -0.7, 0.6) * CFrame.Angles(math.rad(-30), math.rad(50), math.rad(-90)), Time = 0.05},
		{CFrame = CFrame.new(0.7, -0.71, 0.59) * CFrame.Angles(math.rad(-84), math.rad(50), math.rad(-38)), Time = 0.1},
		{CFrame = CFrame.new(0.7, -0.71, 0.59) * CFrame.Angles(math.rad(-84), math.rad(50), math.rad(-38)), Time = 0.05},
		{CFrame = CFrame.new(0.63, -0.1, 1.37) * CFrame.Angles(math.rad(-84), math.rad(50), math.rad(-38)), Time = 0.15}
	}
}

local function calculateMoveVector(vec)
	local c, s
	local _, _, _, R00, R01, R02, _, _, R12, _, _, R22 = gameCamera.CFrame:GetComponents()
	if R12 < 1 and R12 > -1 then
		c = R22
		s = R02
	else
		c = R00
		s = -R01 * math.sign(R12)
	end
	vec = vector.create((c * vec.X + s * vec.Z), 0, (c * vec.Z - s * vec.X)) / math.sqrt(c * c + s * s)
	return vec.Unit == vec.Unit and vec.Unit or vector.zero
end

local function getTool()
	return lplr.Character and lplr.Character:FindFirstChildWhichIsA('Tool', true) or nil
end

local function canClick()
	local mousepos = (UserInputService:GetMouseLocation() - GuiService:GetGuiInset())
	for _, v in lplr.PlayerGui:GetGuiObjectsAtPosition(mousepos.X, mousepos.Y) do
		local obj = v:FindFirstAncestorOfClass('ScreenGui')
		if v.Active and v.Visible and obj and obj.Enabled then
			return false
		end
	end
	for _, v in CoreGui:GetGuiObjectsAtPosition(mousepos.X, mousepos.Y) do
		local obj = v:FindFirstAncestorOfClass('ScreenGui')
		if v.Active and v.Visible and obj and obj.Enabled then
			return false
		end
	end
	return (not Modern.ClickGuiStatus) and (not UserInputService:GetFocusedTextBox())
end

local function getTableSize(tab)
	local ind = 0
	for _ in tab do ind += 1 end
	return ind
end

local function removeTags(str)
	str = str:gsub('<br%s*/>', '\n')
	return (str:gsub('<[^<>]->', ''))
end

local function addBlur(parent)
	local blur = Instance.new('ImageLabel')
	blur.Name = 'Blur'
	blur.Size = UDim2.new(1, 89, 1, 52)
	blur.Position = UDim2.fromOffset(-48, -31)
	blur.BackgroundTransparency = 1
	blur.Image = "rbxassetid://74663567791967"
	blur.ScaleType = Enum.ScaleType.Slice
	blur.SliceCenter = Rect.new(52, 31, 261, 502)
    blur.ZIndex = -100
	blur.Parent = parent

	return blur
end
local function addRoundedShadow(parent)
	local blur = Instance.new('ImageLabel')
	blur.Name = 'Shadow'
	blur.Size = UDim2.new(1, 18, 1, 18)
    blur.AnchorPoint = Vector2.new(0.5, 0.5)
	blur.Position = UDim2.fromScale(0.5, 0.5)
	-- blur.ImageColor3 = Color3.fromRGB(12, 12, 12)
	blur.BackgroundTransparency = 1
	blur.Image = "rbxassetid://85528155206269"
	blur.ScaleType = Enum.ScaleType.Slice
	blur.ImageTransparency = 0.5
	blur.SliceCenter = Rect.new(36, 36, 900, 50)
    blur.SliceScale = 0.5
    blur.ZIndex = -100
	blur.Parent = parent
	return blur
end
local function addCorner(parent, radius)
	local corner = Instance.new('UICorner')
	corner.CornerRadius = radius or UDim.new(0, 5)
	corner.Parent = parent

	return corner
end

local frictionTable, oldfrict = {},{}
local function updateVelocity()
	if getTableSize(frictionTable) > 0 then
		if entitylib.isAlive then
			for _, v in entitylib.character.Character:GetChildren() do
				if v:IsA('BasePart') and v.Name ~= 'HumanoidRootPart' and not oldfrict[v] then
					oldfrict[v] = v.CustomPhysicalProperties or 'none'
					v.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.2, 0.5, 1, 1)
				end
			end
		end
	else
		for i, v in oldfrict do
			i.CustomPhysicalProperties = v ~= 'none' and v or nil
		end
		table.clear(oldfrict)
	end
end

local Spider = {Enabled = false}
local Phase = {Enabled = false}

run(function()
    Modern:Clean(entitylib.Events.LocalAdded:Connect(updateVelocity))
	Modern:Clean(workspace:GetPropertyChangedSignal('CurrentCamera'):Connect(function()
		gameCamera = workspace.CurrentCamera or workspace:FindFirstChildWhichIsA('Camera')
	end))
end)

entitylib.start()

repeat task.wait() until game:IsLoaded()

local TargetStrafeVector

run(function()
	local AimAssist
	local Targets
	local Part
	local FOV
	local Speed
	local CircleColor
	local CircleTransparency
	local CircleFilled
	local CircleObject
	local RightClick
	local ShowTarget
	local moveConst = Vector2.new(1, 0.77) * math.rad(0.5)
	
	local function wrapAngle(num)
		num = num % math.pi
		num -= num >= (math.pi / 2) and math.pi or 0
		num += num < -(math.pi / 2) and math.pi or 0
		return num
	end
	
	AimAssist = Modern.Catalogs.Combat:AddModule({
		Name = 'Aim Assist',
		Function = function(callback)
			if CircleObject then
				CircleObject.Visible = callback
			end
			if callback then
				local ent
				local rightClicked = not RightClick.Enabled or UserInputService:IsMouseButtonPressed(1)
				AimAssist:Clean(RunService.RenderStepped:Connect(function(dt)
					if CircleObject then
						CircleObject.Position = UserInputService:GetMouseLocation()
					end
	
					if rightClicked and not Modern.ClickGuiStatus then
						ent = entitylib.EntityMouse({
							Range = FOV.Value,
							Part = Part.Value,
							Players = true,
							NPCs = false,
							Wallcheck = true,
							Origin = gameCamera.CFrame.Position
						})
	
						if ent then
							local facing = gameCamera.CFrame.LookVector
							local new = (ent[Part.Value].Position - gameCamera.CFrame.Position).Unit
							new = new == new and new or Vector3.zero

							if ShowTarget.Enabled then
								Targetinfo.Targets[ent] = tick() + 1
							end

							if new ~= Vector3.zero then
								local diffYaw = wrapAngle(math.atan2(facing.X, facing.Z) - math.atan2(new.X, new.Z))
								local diffPitch = math.asin(facing.Y) - math.asin(new.Y)
								local angle = Vector2.new(diffYaw, diffPitch) // (moveConst * UserSettings():GetService('UserGameSettings').MouseSensitivity)
	
								angle *= math.min(Speed.Value * dt, 1)
								mousemoverel(angle.X, angle.Y)
							end
						end
					end
				end))
	
				if RightClick.Enabled then
					AimAssist:Clean(UserInputService.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton2 then
							ent = nil
							rightClicked = true
						end
					end))
	
					AimAssist:Clean(UserInputService.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton2 then
							rightClicked = false
						end
					end))
				end
			end
		end
	})
	Part = AimAssist:AddDropdown({
		Name = 'Part',
		List = {'RootPart', 'Head'}
	})
	FOV = AimAssist:AddSlider({
		Name = 'FOV',
		Min = 0,
		Max = 1000,
		Default = 100,
		Function = function(val)
			if CircleObject then
				CircleObject.Radius = val
			end
		end
	})
	Speed = AimAssist:AddSlider({
		Name = 'Speed',
		Min = 0,
		Max = 80,
		Default = 15
	})
	AimAssist:AddToggle({
		Name = 'Range Circle',
		Function = function(callback)
			if callback then
				CircleObject = Drawing.new('Circle')
				CircleObject.Filled = CircleFilled.Enabled
				CircleObject.Color = Color3.fromRGB(255, 255, 255)
				CircleObject.Position = Modern.MainScreenGui.AbsoluteSize / 2
				CircleObject.Radius = FOV.Value
				CircleObject.NumSides = 100
				CircleObject.Transparency = 9
				CircleObject.Visible = AimAssist.Enabled
			else
				pcall(function()
					CircleObject.Visible = false
					CircleObject:Remove()
				end)
			end
			CircleFilled.Frame.Visible = callback
		end
	})
	CircleFilled = AimAssist:AddToggle({
		Name = 'Circle Filled',
		Function = function(callback)
			if CircleObject then
				CircleObject.Filled = callback
			end
		end,
		Darker = true,
		Visible = false
	})
	RightClick = AimAssist:AddToggle({
		Name = 'Require right click',
		Function = function()
			if AimAssist.Enabled then
				AimAssist:Toggle()
				AimAssist:Toggle()
			end
		end
	})
	ShowTarget = AimAssist:AddToggle({
		Name = 'Show Target',
		Function = function()
			if AimAssist.Enabled then
				AimAssist:Toggle()
				AimAssist:Toggle()
			end
		end
	})
end)

run(function()
	local AutoClicker
	local Mode
	local CPS
	
	AutoClicker = Modern.Catalogs.Combat:AddModule({
		Name = 'Auto Clicker',
		Function = function(callback)
			if callback then
				repeat
					if Mode.Value == 'Tool' then
						local tool = getTool()
						if tool and UserInputService:IsMouseButtonPressed(0) then
							tool:Activate()
						end
					else
						if mouse1click and (isrbxactive or iswindowactive)() then
							if not Modern.ClickGuiStatus then
								(Mode.Value == 'Click' and mouse1click or mouse2click)()
							end
						end
					end
	
					task.wait(1 / CPS.Value)
				until not AutoClicker.Enabled
			end
		end
	})
	Mode = AutoClicker:AddDropdown({
		Name = 'Mode',
		List = {'Tool', 'Click', 'RightClick'}
	})
	CPS = AutoClicker:AddSlider({
		Name = 'CPS',
		Min = 1,
		Max = 20,
		Defaul = 10
	})
end)


run(function()
	local Reach
	local Targets
	local Mode
	local Value
	local Chance
	local Overlay = OverlapParams.new()
	Overlay.FilterType = Enum.RaycastFilterType.Include
	local modified = {}
	
	Reach = Modern.Catalogs.Combat:AddModule({
		Name = 'Reach',
		Function = function(callback)
			if callback then
				repeat
					local tool = getTool()
					tool = tool and tool:FindFirstChildWhichIsA('TouchTransmitter', true)
					if tool then
						if Mode.Value == 'TouchInterest' then
							local entites = {}
							for _, v in entitylib.List do
								if v.Targetable then
									if v.Player then
										table.insert(entites, v.Character)
									end
								end
							end
	
							Overlay.FilterDescendantsInstances = entites
							local parts = workspace:GetPartBoundsInBox(tool.Parent.CFrame * CFrame.new(0, 0, Value.Value / 2), tool.Parent.Size + Vector3.new(0, 0, Value.Value), Overlay)
	
							for _, v in parts do
								if Random.new().NextNumber(Random.new(), 0, 100) > Chance.Value then
									task.wait(0.2)
									break
								end
	
								firetouchinterest(tool.Parent, v, 1)
								firetouchinterest(tool.Parent, v, 0)
							end
						else
							if not modified[tool.Parent] then
								modified[tool.Parent] = tool.Parent.Size
							end
							tool.Parent.Size = modified[tool.Parent] + Vector3.new(0, 0, Value.Value)
							tool.Parent.Massless = true
						end
					end
	
					task.wait()
				until not Reach.Enabled
			else
				for i, v in modified do
					i.Size = v
					i.Massless = false
				end
				table.clear(modified)
			end
		end
	})
	Mode = Reach:AddDropdown({
		Name = 'Mode',
		List = {'TouchInterest', 'Resize'},
		Function = function(val)
			Chance.Object.Visible = val == 'TouchInterest'
		end
	})
	Value = Reach:AddSlider({
		Name = 'Range',
		Min = 0,
		Max = 2,
		Decimal = 10,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	Chance = Reach:AddSlider({
		Name = 'Chance',
		Min = 0,
		Max = 100,
		Default = 100,
		Suffix = '%'
	})
end)

run(function()
	local Killaura
	local Targets
	local CPS
	local SwingRange
	local AttackRange
	local AngleSlider
	local Max
	local Mouse
	local Lunge
	local BoxSwingColor
	local BoxAttackColor
	local ParticleTexture
	local ParticleColor1
	local ParticleColor2
	local ParticleSize
	local Face
	local Overlay = OverlapParams.new()
	Overlay.FilterType = Enum.RaycastFilterType.Include
	local Particles, Boxes, AttackDelay = {}, {}, tick()
	
	local function getAttackData()
		if Mouse.Enabled then
			if not UserInputService:IsMouseButtonPressed(0) then return false end
		end
	
		local tool = getTool()
		return tool and tool:FindFirstChildWhichIsA('TouchTransmitter', true) or nil, tool
	end
	
	Killaura = Modern.Catalogs.Combat:AddModule({
		Name = 'Aura',
		Function = function(callback)
			if callback then
				repeat
					local interest, tool = getAttackData()
					local attacked = {}
					if interest then
						local plrs = entitylib.AllPosition({
							Range = SwingRange.Value,
							Wallcheck = nil,
							Part = 'RootPart',
							Players = true,
							NPCs = false,
							Limit = Max.Value
						})
	
						if #plrs > 0 then
							local selfpos = entitylib.character.RootPart.Position
							local localfacing = entitylib.character.RootPart.CFrame.LookVector * Vector3.new(1, 0, 1)
	
							for _, v in plrs do
								local delta = (v.RootPart.Position - selfpos)
								local angle = math.acos(localfacing:Dot((delta * Vector3.new(1, 0, 1)).Unit))
								if angle > (math.rad(AngleSlider.Value) / 2) then continue end
	
								table.insert(attacked, {
									Entity = v,
									Check = delta.Magnitude > AttackRange.Value and BoxSwingColor or BoxAttackColor
								})
								Targetinfo.Targets[v] = tick() + 1
	
								if AttackDelay < tick() then
									AttackDelay = tick() + (1 / CPS.Value)
									tool:Activate()
								end
	
								if delta.Magnitude > AttackRange.Value then continue end
	
								Overlay.FilterDescendantsInstances = {v.Character}
								for _, part in workspace:GetPartBoundsInBox(v.RootPart.CFrame, Vector3.new(4, 4, 4), Overlay) do
									firetouchinterest(interest.Parent, part, 1)
									firetouchinterest(interest.Parent, part, 0)
								end
							end
						end
					end
	
					for i, v in Boxes do
						v.Adornee = attacked[i] and attacked[i].Entity.RootPart or nil
						if v.Adornee then
							v.Color3 = Color3.fromHSV(0.6, 0.6, 0.6)
							v.Transparency = 0.5
						end
					end
	
					for i, v in Particles do
						v.Position = attacked[i] and attacked[i].Entity.RootPart.Position or Vector3.new(9e9, 9e9, 9e9)
						v.Parent = attacked[i] and gameCamera or nil
					end
	
					-- if Face.Enabled and attacked[1] then
					-- 	local vec = attacked[1].Entity.RootPart.Position * Vector3.new(1, 0, 1)
					-- 	entitylib.character.RootPart.CFrame = CFrame.lookAt(entitylib.character.RootPart.Position, Vector3.new(vec.X, entitylib.character.RootPart.Position.Y + 0.01, vec.Z))
					-- end
	
					task.wait()
				until not Killaura.Enabled
			else
				for _, v in Boxes do
					v.Adornee = nil
				end
			end
		end
	})
	CPS = Killaura:AddSlider({
		Name = 'Attacks per Second',
		Min = 1,
		Max = 20,
		Default = 10,
	})
	SwingRange = Killaura:AddSlider({
		Name = 'Swing range',
		Min = 1,
		Max = 30,
		Default = 13,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	AttackRange = Killaura:AddSlider({
		Name = 'Attack range',
		Min = 1,
		Max = 30,
		Default = 13,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	AngleSlider = Killaura:AddSlider({
		Name = 'Max angle',
		Min = 1,
		Max = 360,
		Default = 90
	})
	Max = Killaura:AddSlider({
		Name = 'Max targets',
		Min = 1,
		Max = 10,
		Default = 10
	})
	Mouse = Killaura:AddToggle({Name = 'Require Click'})
	Killaura:AddToggle({
		Name = 'Show target',
		Function = function(callback)
			if callback then
				for i = 1, 10 do
					local box = Instance.new('BoxHandleAdornment')
					box.Adornee = nil
					box.AlwaysOnTop = true
					box.Size = Vector3.new(3, 5, 3)
					box.CFrame = CFrame.new(0, -0.5, 0)
					box.ZIndex = 0
					box.Parent = Modern.MainScreenGui
					Boxes[i] = box
				end
			else
				for _, v in Boxes do
					v:Destroy()
				end
				table.clear(Boxes)
			end
		end
	})
	-- Face = Killaura:AddToggle({Name = 'Face target'})
end)
	

local SpeedMethods
local SpeedMethodList = {'Velocity'}
SpeedMethods = {
	Velocity = function(options, moveDirection)
		local root = entitylib.character.RootPart
		root.AssemblyLinearVelocity = (moveDirection * options.Value.Value) + Vector3.new(0, root.AssemblyLinearVelocity.Y, 0)
	end,
	Impulse = function(options, moveDirection)
		local root = entitylib.character.RootPart
		local diff = ((moveDirection * options.Value.Value) - root.AssemblyLinearVelocity) * Vector3.new(1, 0, 1)
		if diff.Magnitude > (moveDirection == Vector3.zero and 10 or 2) then
			root:ApplyImpulse(diff * root.AssemblyMass)
		end
	end,
	CFrame = function(options, moveDirection, dt)
		local root = entitylib.character.RootPart
		local dest = (moveDirection * math.max(options.Value.Value - entitylib.character.Humanoid.WalkSpeed, 0) * dt)
		if options.WallCheck.Enabled then
			options.rayCheck.FilterDescendantsInstances = {lplr.Character, gameCamera}
			options.rayCheck.CollisionGroup = root.CollisionGroup
			local ray = workspace:Raycast(root.Position, dest, options.rayCheck)
			if ray then
				dest = ((ray.Position + ray.Normal) - root.Position)
			end
		end
		root.CFrame += dest
	end,
	TP = function(options, moveDirection)
		if options.TPTiming < tick() then
			options.TPTiming = tick() + options.TPFrequency.Value
			SpeedMethods.CFrame(options, moveDirection, 1)
		end
	end,
	WalkSpeed = function(options)
		if not options.WalkSpeed then options.WalkSpeed = entitylib.character.Humanoid.WalkSpeed end
		entitylib.character.Humanoid.WalkSpeed = options.Value.Value
	end,
	Pulse = function(options, moveDirection)
		local root = entitylib.character.RootPart
		local dt = math.max(options.Value.Value - entitylib.character.Humanoid.WalkSpeed, 0)
		dt = dt * (1 - math.min((tick() % (options.PulseLength.Value + options.PulseDelay.Value)) / options.PulseLength.Value, 1))
		root.AssemblyLinearVelocity = (moveDirection * (entitylib.character.Humanoid.WalkSpeed + dt)) + Vector3.new(0, root.AssemblyLinearVelocity.Y, 0)
	end
}
for name in SpeedMethods do
	if not table.find(SpeedMethodList, name) then
		table.insert(SpeedMethodList, name)
	end
end

local Fly
run(function()
	local Options = {TPTiming = tick()}
	local Mode
	local FloatMode
	local State
	local MoveMethod
	local Keys
	local VerticalValue
	local BounceLength
	local BounceDelay
	local FloatTPGround
	local FloatTPAir
	local CustomProperties
	local WallCheck
	local PlatformStanding
	local Platform, YLevel, OldYLevel
	local w, s, a, d, up, down = 0, 0, 0, 0, 0, 0
	local rayCheck = RaycastParams.new()
	rayCheck.RespectCanCollide = true
	Options.rayCheck = rayCheck

	local Functions
	Functions = {
		Velocity = function()
			entitylib.character.RootPart.Velocity = (entitylib.character.RootPart.Velocity * Vector3.new(1, 0, 1)) + Vector3.new(0, 2.25 + ((up + down) * VerticalValue.Value), 0)
		end,
		Impulse = function(options, moveDirection)
			local root = entitylib.character.RootPart
			local diff = (Vector3.new(0, 2.25 + ((up + down) * VerticalValue.Value), 0) - root.AssemblyLinearVelocity) * Vector3.new(0, 1, 0)
			if diff.Magnitude > 2 then
				root:ApplyImpulse(diff * root.AssemblyMass)
			end
		end,
		CFrame = function(dt)
			local root = entitylib.character.RootPart
			if not YLevel then
				YLevel = root.Position.Y
			end
			YLevel = YLevel + ((up + down) * VerticalValue.Value * dt)
			if WallCheck.Enabled then
				rayCheck.FilterDescendantsInstances = {lplr.Character, gameCamera}
				rayCheck.CollisionGroup = root.CollisionGroup
				local ray = workspace:Raycast(root.Position, Vector3.new(0, YLevel - root.Position.Y, 0), rayCheck)
				if ray then
					YLevel = ray.Position.Y + entitylib.character.HipHeight
				end
			end
			root.Velocity *= Vector3.new(1, 0, 1)
			root.CFrame += Vector3.new(0, YLevel - root.Position.Y, 0)
		end,
		Bounce = function()
			Functions.Velocity()
			entitylib.character.RootPart.Velocity += Vector3.new(0, ((tick() % BounceDelay.Value) / BounceDelay.Value > 0.5 and 1 or -1) * BounceLength.Value, 0)
		end,
		Floor = function()
			Platform.CFrame = down ~= 0 and CFrame.identity or entitylib.character.RootPart.CFrame + Vector3.new(0, -(entitylib.character.HipHeight + 0.5), 0)
		end,
		TP = function(dt)
			Functions.CFrame(dt)
			if tick() % (FloatTPAir.Value + FloatTPGround.Value) > FloatTPAir.Value then
				OldYLevel = OldYLevel or YLevel
				rayCheck.FilterDescendantsInstances = {lplr.Character, gameCamera}
				rayCheck.CollisionGroup = entitylib.character.RootPart.CollisionGroup
				local ray = workspace:Raycast(entitylib.character.RootPart.Position, Vector3.new(0, -1000, 0), rayCheck)
				if ray then
					YLevel = ray.Position.Y + entitylib.character.HipHeight
				end
			else
				if OldYLevel then
					YLevel = OldYLevel
					OldYLevel = nil
				end
			end
		end,
		Jump = function(dt)
			local root = entitylib.character.RootPart
			if not YLevel then
				YLevel = root.Position.Y
			end
			YLevel = YLevel + ((up + down) * VerticalValue.Value * dt)
			if root.Position.Y < YLevel then
				entitylib.character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	}

	Fly = Modern.Catalogs.Movement:AddModule({
		Name = 'Fly',
		Function = function(callback)
			if Platform then
				Platform.Parent = callback and gameCamera or nil
			end
			frictionTable.Fly = callback and CustomProperties.Enabled or nil
			updateVelocity()
			if callback then
				Fly:Clean(RunService.PreSimulation:Connect(function(dt)
					if entitylib.isAlive then
						if PlatformStanding.Enabled then
							entitylib.character.Humanoid.PlatformStand = true
							entitylib.character.RootPart.RotVelocity = Vector3.zero
							entitylib.character.RootPart.CFrame = CFrame.lookAlong(entitylib.character.RootPart.CFrame.Position, gameCamera.CFrame.LookVector)
						end
						if State.Value ~= 'None' then
							entitylib.character.Humanoid:ChangeState(Enum.HumanoidStateType[State.Value])
						end
						SpeedMethods[Mode.Value](Options, TargetStrafeVector or MoveMethod.Value == 'Direct' and calculateMoveVector(Vector3.new(a + d, 0, w + s)) or entitylib.character.Humanoid.MoveDirection, dt)
						Functions[FloatMode.Value](dt)
					else
						YLevel = nil
						OldYLevel = nil
					end
				end))

				w, s, a, d = UserInputService:IsKeyDown(Enum.KeyCode.W) and -1 or 0, UserInputService:IsKeyDown(Enum.KeyCode.S) and 1 or 0, UserInputService:IsKeyDown(Enum.KeyCode.A) and -1 or 0, UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or 0
				up, down = 0, 0
				for _, v in {'InputBegan', 'InputEnded'} do
					Fly:Clean(UserInputService[v]:Connect(function(input)
						if not UserInputService:GetFocusedTextBox() then
							local divided = Keys.Value:split('/')
							if input.KeyCode == Enum.KeyCode.W then
								w = v == 'InputBegan' and -1 or 0
							elseif input.KeyCode == Enum.KeyCode.S then
								s = v == 'InputBegan' and 1 or 0
							elseif input.KeyCode == Enum.KeyCode.A then
								a = v == 'InputBegan' and -1 or 0
							elseif input.KeyCode == Enum.KeyCode.D then
								d = v == 'InputBegan' and 1 or 0
							elseif input.KeyCode == Enum.KeyCode[divided[1]] then
								up = v == 'InputBegan' and 1 or 0
							elseif input.KeyCode == Enum.KeyCode[divided[2]] then
								down = v == 'InputBegan' and -1 or 0
							end
						end
					end))
				end
				if UserInputService.TouchEnabled then
					pcall(function()
						local jumpButton = lplr.PlayerGui.TouchGui.TouchControlFrame.JumpButton
						Fly:Clean(jumpButton:GetPropertyChangedSignal('ImageRectOffset'):Connect(function()
							up = jumpButton.ImageRectOffset.X == 146 and 1 or 0
						end))
					end)
				end
			else
				YLevel, OldYLevel = nil, nil
				if entitylib.isAlive and PlatformStanding.Enabled then
					entitylib.character.Humanoid.PlatformStand = false
				end
			end
		end,
		ExtraText = function()
			return Mode.Value
		end
	})
	Mode = Fly:AddDropdown({
		Name = 'Speed Mode',
		List = SpeedMethodList,
		Function = function(val)
			WallCheck.Frame.Visible = FloatMode.Value == 'CFrame' or FloatMode.Value == 'TP' or val == 'CFrame' or val == 'TP'
			Options.TPFrequency.Frame.Visible = val == 'TP'
			Options.PulseLength.Frame.Visible = val == 'Pulse'
			Options.PulseDelay.Frame.Visible = val == 'Pulse'
			if Fly.Enabled then
				Fly:Toggle()
				Fly:Toggle()
			end
		end
	})
	FloatMode = Fly:AddDropdown({
		Name = 'Float Mode',
		List = {'Velocity', 'Impulse', 'CFrame', 'Bounce', 'Floor', 'Jump', 'TP'},
		Function = function(val)
			WallCheck.Frame.Visible = Mode.Value == 'CFrame' or Mode.Value == 'TP' or val == 'CFrame' or val == 'TP'
			BounceLength.Frame.Visible = val == 'Bounce'
			BounceDelay.Frame.Visible = val == 'Bounce'
			VerticalValue.Frame.Visible = val ~= 'Floor'
			FloatTPGround.Frame.Visible = val == 'TP'
			FloatTPAir.Frame.Visible = val == 'TP'
			if Platform then
				Platform:Destroy()
				Platform = nil
			end
			if val == 'Floor' then
				Platform = Instance.new('Part')
				Platform.CanQuery = false
				Platform.Anchored = true
				Platform.Size = Vector3.one
				Platform.Transparency = 1
				Platform.Parent = Fly.Enabled and gameCamera or nil
			end
		end
	})
	local states = {'None'}
	for _, v in Enum.HumanoidStateType:GetEnumItems() do
		if v.Name ~= 'Dead' and v.Name ~= 'None' then
			table.insert(states, v.Name)
		end
	end
	State = Fly:AddDropdown({
		Name = 'Humanoid State',
		List = states
	})
	MoveMethod = Fly:AddDropdown({
		Name = 'Move Mode',
		List = {'MoveDirection', 'Direct'}
	})
	Keys = Fly:AddDropdown({
		Name = 'Keys',
		List = {'Space/LeftControl', 'Space/LeftShift', 'E/Q', 'Space/Q', 'ButtonA/ButtonL2'}
	})
	Options.Value = Fly:AddSlider({
		Name = 'Speed',
		Min = 1,
		Max = 150,
		Default = 50,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	VerticalValue = Fly:AddSlider({
		Name = 'Vertical Speed',
		Min = 1,
		Max = 150,
		Default = 50,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	Options.TPFrequency = Fly:AddSlider({
		Name = 'TP Frequency',
		Min = 0,
		Max = 1,
		Decimal = 100,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	Options.PulseLength = Fly:AddSlider({
		Name = 'Pulse Length',
		Min = 0,
		Max = 1,
		Decimal = 100,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	Options.PulseDelay = Fly:AddSlider({
		Name = 'Pulse Delay',
		Min = 0,
		Max = 1,
		Decimal = 100,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	BounceLength = Fly:AddSlider({
		Name = 'Bounce Length',
		Min = 0,
		Max = 30,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	BounceDelay = Fly:AddSlider({
		Name = 'Bounce Delay',
		Min = 0,
		Max = 1,
		Decimal = 100,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	FloatTPGround = Fly:AddSlider({
		Name = 'Ground',
		Min = 0,
		Max = 1,
		Decimal = 10,
		Default = 0.1,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	FloatTPAir = Fly:AddSlider({
		Name = 'Air',
		Min = 0,
		Max = 5,
		Decimal = 10,
		Default = 2,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	WallCheck = Fly:AddToggle({
		Name = 'Wall Check',
		Default = true,
		Darker = true,
		Visible = false
	})
	Options.WallCheck = WallCheck
	PlatformStanding = Fly:AddToggle({
		Name = 'PlatformStand',
		Function = function(callback)
			if Fly.Enabled then
				entitylib.character.Humanoid.PlatformStand = callback
			end
		end
	})
	CustomProperties = Fly:AddToggle({
		Name = 'Custom Properties',
		Function = function()
			if Fly.Enabled then
				Fly:Toggle()
				Fly:Toggle()
			end
		end,
		Default = true
	})
end)

run(function()
	local Speed
	local Mode
	local Options
	local AutoJump
	local AutoJumpCustom
	local AutoJumpValue
	local w, s, a, d = 0, 0, 0, 0
	
	Speed = Modern.Catalogs.Movement:AddModule({
		Name = 'Speed',
		Function = function(callback)
			frictionTable.Speed = callback and CustomProperties.Enabled or nil
			updateVelocity()
			if callback then
				Speed:Clean(RunService.PreSimulation:Connect(function(dt)
					if entitylib.isAlive and not Fly.Enabled then
						local state = entitylib.character.Humanoid:GetState()
						if state == Enum.HumanoidStateType.Climbing then return end
	
						local movevec = TargetStrafeVector or Options.MoveMethod.Value == 'Direct' and calculateMoveVector(Vector3.new(a + d, 0, w + s)) or entitylib.character.Humanoid.MoveDirection
						SpeedMethods[Mode.Value](Options, movevec, dt)
						if AutoJump.Enabled and entitylib.character.Humanoid.FloorMaterial ~= Enum.Material.Air and movevec ~= Vector3.zero then
							if AutoJumpCustom.Enabled then
								local velocity = entitylib.character.RootPart.Velocity * Vector3.new(1, 0, 1)
								entitylib.character.RootPart.Velocity = Vector3.new(velocity.X, AutoJumpValue.Value, velocity.Z)
							else
								entitylib.character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
							end
						end
					end
				end))
	
				w, s, a, d = UserInputService:IsKeyDown(Enum.KeyCode.W) and -1 or 0, UserInputService:IsKeyDown(Enum.KeyCode.S) and 1 or 0, UserInputService:IsKeyDown(Enum.KeyCode.A) and -1 or 0, UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or 0
				for _, v in {'InputBegan', 'InputEnded'} do
					Speed:Clean(UserInputService[v]:Connect(function(input)
						if not UserInputService:GetFocusedTextBox() then
							if input.KeyCode == Enum.KeyCode.W then
								w = v == 'InputBegan' and -1 or 0
							elseif input.KeyCode == Enum.KeyCode.S then
								s = v == 'InputBegan' and 1 or 0
							elseif input.KeyCode == Enum.KeyCode.A then
								a = v == 'InputBegan' and -1 or 0
							elseif input.KeyCode == Enum.KeyCode.D then
								d = v == 'InputBegan' and 1 or 0
							end
						end
					end))
				end
			else
				if Options.WalkSpeed and entitylib.isAlive then
					entitylib.character.Humanoid.WalkSpeed = Options.WalkSpeed
				end
				Options.WalkSpeed = nil
			end
		end,
		ExtraText = function()
			return Mode.Value
		end
	})
	Mode = Speed:AddDropdown({
		Name = 'Mode',
		List = SpeedMethodList,
		Function = function(val)
			Options.WallCheck.Frame.Visible = val == 'CFrame' or val == 'TP'
			Options.TPFrequency.Frame.Visible = val == 'TP'
			Options.PulseLength.Frame.Visible = val == 'Pulse'
			Options.PulseDelay.Frame.Visible = val == 'Pulse'
			if Speed.Enabled then
				Speed:Toggle()
				Speed:Toggle()
			end
		end
	})
	Options = {
		MoveMethod = Speed:AddDropdown({
			Name = 'Move Mode',
			List = {'MoveDirection', 'Direct'}
		}),
		Value = Speed:AddSlider({
			Name = 'Speed',
			Min = 1,
			Max = 150,
			Default = 50,
			Suffix = function(val)
				return val == 1 and 'stud' or 'studs'
			end
		}),
		TPFrequency = Speed:AddSlider({
			Name = 'TP Frequency',
			Min = 0,
			Max = 1,
			Decimal = 100,
			Darker = true,
			Visible = false,
			Suffix = function(val)
				return val == 1 and 'second' or 'seconds'
			end
		}),
		PulseLength = Speed:AddSlider({
			Name = 'Pulse Length',
			Min = 0,
			Max = 1,
			Decimal = 100,
			Darker = true,
			Visible = false,
			Suffix = function(val)
				return val == 1 and 'second' or 'seconds'
			end
		}),
		PulseDelay = Speed:AddSlider({
			Name = 'Pulse Delay',
			Min = 0,
			Max = 1,
			Decimal = 100,
			Darker = true,
			Visible = false,
			Suffix = function(val)
				return val == 1 and 'second' or 'seconds'
			end
		}),
		WallCheck = Speed:AddToggle({
			Name = 'Wall Check',
			Default = true,
			Darker = true,
			Visible = false
		}),
		TPTiming = tick(),
		rayCheck = RaycastParams.new()
	}
	Options.rayCheck.RespectCanCollide = true
	CustomProperties = Speed:AddToggle({
		Name = 'Custom Properties',
		Function = function()
			if Speed.Enabled then
				Speed:Toggle()
				Speed:Toggle()
			end
		end,
		Default = true
	})
	AutoJump = Speed:AddToggle({
		Name = 'AutoJump',
		Function = function(callback)
			AutoJumpCustom.Frame.Visible = callback
		end
	})
	AutoJumpCustom = Speed:AddToggle({
		Name = 'Custom Jump',
		Function = function(callback)
			AutoJumpValue.Frame.Visible = callback
		end,
		Darker = true,
		Visible = false
	})
	AutoJumpValue = Speed:AddSlider({
		Name = 'Jump Power',
		Min = 1,
		Max = 50,
		Default = 30,
		Darker = true,
		Visible = false
	})
end)
	

run(function()
	local NameTags
	local Targets
	local Color
	local Background
	local DisplayName
	local Health
	local Distance
	local DrawingToggle
	local Scale
	local FontOption
	local GlowEffect
	local Teammates
	local DistanceCheck
	local DistanceLimit
	local Strings, Sizes, Reference, Gradients = {}, {}, {}, {}
	local Folder = Instance.new('Folder')
	Folder.Parent = Modern.MainScreenGui
	local methodused
	
	local Added = {
		Normal = function(ent)
			if ent.NPC then return end
			if Teammates.Enabled and (not ent.Targetable) and (not ent.Friend) then return end
			if Modern.ThreadFix then
				setthreadidentity(8)
			end

			Strings[ent] = ent.Player and (DisplayName.Enabled and ent.Player.DisplayName or ent.Player.Name) or ent.Character.Name

			if Health.Enabled then
				local healthColor = Color3.fromHSV(math.clamp(ent.Health / ent.MaxHealth, 0, 1) / 2.5, 0.89, 0.75)
				Strings[ent] = Strings[ent]..' <font color="rgb('..tostring(math.floor(healthColor.R * 255))..','..tostring(math.floor(healthColor.G * 255))..','..tostring(math.floor(healthColor.B * 255))..')">'..math.round(ent.Health)..'</font>'
			end
	
			if Distance.Enabled then
				Strings[ent] = '<font color="rgb(85, 255, 85)">[</font><font color="rgb(255, 255, 255)">%s</font><font color="rgb(85, 255, 85)">]</font> '..Strings[ent]
			end
	
			local nametag = Instance.new('TextLabel')
			nametag.TextSize = 14 * Scale.Value
			nametag.FontFace = Modern.Libraries.uipallet.Font
			nametag.ZIndex = -1
			local ize = getfontsize(removeTags(Strings[ent]), nametag.TextSize, Modern.Libraries.uipallet.Font, Vector2.new(100000, 100000))
			nametag.Name = ent.Player and ent.Player.Name or ent.Character.Name
			nametag.Size = UDim2.fromOffset(ize.X + 8, ize.Y + 7)
			nametag.AnchorPoint = Vector2.new(0.5, 1)
			nametag.BackgroundColor3 = Color3.new()
			nametag.BackgroundTransparency = Background.Value
			nametag.BorderSizePixel = 0
			if GlowEffect.Enabled then
				addGradient(addRoundedShadow(nametag))
			end
			addCorner(nametag, UDim.new(12, 0))
			nametag.Visible = false
			nametag.Text = Strings[ent]
			if entitylib.getEntityColor(ent) then
				nametag.TextColor3 = entitylib.getEntityColor(ent)
				if Gradients[ent] then
					Gradients[ent].Enabled = false
				end
			else
				nametag.TextColor3 = Color3.fromRGB(255, 255, 255)
				Gradients[ent] = addGradient(nametag)
			end
			nametag.RichText = true
			nametag.Parent = Folder
			Reference[ent] = nametag
		end,
		Drawing = function(ent)
			-- if not Targets.Players.Enabled and ent.Player then return end
			if Teammates.Enabled and (not ent.Targetable) and (not ent.Friend) then return end
			if Modern.ThreadFix then
				setthreadidentity(8)
			end
	
			local nametag = {}
			nametag.BG = Drawing.new('Square')
			nametag.BG.Filled = true
			nametag.BG.Transparency = 1 - Background.Value
			nametag.BG.Color = Color3.new()
			nametag.BG.ZIndex = 1
			nametag.Text = Drawing.new('Text')
			nametag.Text.Size = 15 * Scale.Value
			nametag.Text.Font = 0
			nametag.Text.ZIndex = 2
			Strings[ent] = ent.Player and (DisplayName.Enabled and ent.Player.DisplayName or ent.Player.Name) or ent.Character.Name
	
			if Health.Enabled then
				Strings[ent] = Strings[ent]..' '..math.round(ent.Health)
			end
	
			if Distance.Enabled then
				Strings[ent] = '[%s] '..Strings[ent]
			end
	
			nametag.Text.Text = Strings[ent]
			nametag.Text.Color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
			nametag.BG.Size = Vector2.new(nametag.Text.TextBounds.X + 8, nametag.Text.TextBounds.Y + 7)
			Reference[ent] = nametag
		end
	}
	
	local Removed = {
		Normal = function(ent)
			local v = Reference[ent]
			if v then
				if Modern.ThreadFix then
					setthreadidentity(8)
				end
				Reference[ent] = nil
				Strings[ent] = nil
				Sizes[ent] = nil
				v:Destroy()
			end
		end,
		Drawing = function(ent)
			local v = Reference[ent]
			if v then
				if Modern.ThreadFix then
					setthreadidentity(8)
				end
				Reference[ent] = nil
				Strings[ent] = nil
				Sizes[ent] = nil
				for _, v2 in v do
					pcall(function()
						v2.Visible = false
						v2:Remove()
					end)
				end
			end
		end
	}
	
	local Updated = {
		Normal = function(ent)
			local nametag = Reference[ent]
			if nametag then
				if Modern.ThreadFix then
					setthreadidentity(8)
				end
				Sizes[ent] = nil
				Strings[ent] = ent.Player and (DisplayName.Enabled and ent.Player.DisplayName or ent.Player.Name) or ent.Character.Name
	
				if Health.Enabled then
					local color = Color3.fromHSV(math.clamp(ent.Health / ent.MaxHealth, 0, 1) / 2.5, 0.89, 0.75)
					Strings[ent] = Strings[ent]..' <font color="rgb('..tostring(math.floor(color.R * 255))..','..tostring(math.floor(color.G * 255))..','..tostring(math.floor(color.B * 255))..')">'..math.round(ent.Health)..'</font>'
				end
	
				if Distance.Enabled then
					Strings[ent] = '<font color="rgb(85, 255, 85)">[</font><font color="rgb(255, 255, 255)">%s</font><font color="rgb(85, 255, 85)">]</font> '..Strings[ent]
				end
	
				local ize = getfontsize(removeTags(Strings[ent]), nametag.TextSize, nametag.FontFace, Vector2.new(100000, 100000))
				nametag.Size = UDim2.fromOffset(ize.X + 8, ize.Y + 7)
				nametag.Text = Strings[ent]
			end
		end,
		Drawing = function(ent)
			local nametag = Reference[ent]
			if nametag then
				if Modern.ThreadFix then
					setthreadidentity(8)
				end
				Sizes[ent] = nil
				Strings[ent] = ent.Player and (DisplayName.Enabled and ent.Player.DisplayName or ent.Player.Name) or ent.Character.Name
	
				if Health.Enabled then
					Strings[ent] = Strings[ent]..' '..math.round(ent.Health)
				end
	
				if Distance.Enabled then
					Strings[ent] = '[%s] '..Strings[ent]
					nametag.Text.Text = entitylib.isAlive and string.format(Strings[ent], math.floor((entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude)) or Strings[ent]
				else
					nametag.Text.Text = Strings[ent]
				end
	
				nametag.BG.Size = Vector2.new(nametag.Text.TextBounds.X + 8, nametag.Text.TextBounds.Y + 7)
				nametag.Text.Color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
			end
		end
	}
	
	local ColorFunc = {
		Normal = function(hue, sat, val)
			local color = Color3.fromHSV(hue, sat, val)
			for i, v in Reference do
				v.TextColor3 = entitylib.getEntityColor(i) or color
			end
		end,
		Drawing = function(hue, sat, val)
			local color = Color3.fromHSV(hue, sat, val)
			for i, v in Reference do
				v.Text.Color = entitylib.getEntityColor(i) or color
			end
		end
	}
	
	local Loop = {
		Normal = function()
			for ent, nametag in Reference do
				if DistanceCheck.Enabled then
					local distance = entitylib.isAlive and (entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude or math.huge
					if distance > DistanceLimit.Value then
						nametag.Visible = false
						continue
					end
				end
	
				local headPos, headVis = gameCamera:WorldToViewportPoint(ent.RootPart.Position + Vector3.new(0, ent.HipHeight + 1, 0))
				nametag.Visible = headVis
				if not headVis then
					continue
				end
	
				if Distance.Enabled then
					local mag = entitylib.isAlive and math.floor((entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude) or 0
					if Sizes[ent] ~= mag then
						nametag.Text = string.format(Strings[ent], mag)
						local ize = getfontsize(removeTags(nametag.Text), nametag.TextSize, nametag.FontFace, Vector2.new(100000, 100000))
						nametag.Size = UDim2.fromOffset(ize.X + 8, ize.Y + 7)
						Sizes[ent] = mag
					end
				end
				nametag.Position = UDim2.fromOffset(headPos.X, headPos.Y)
			end
		end,
		Drawing = function()
			for ent, nametag in Reference do
				if DistanceCheck.Enabled then
					local distance = entitylib.isAlive and (entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude or math.huge
					if distance < DistanceLimit.ValueMin or distance > DistanceLimit.ValueMax then
						nametag.Text.Visible = false
						nametag.BG.Visible = false
						continue
					end
				end
	
				local headPos, headVis = gameCamera:WorldToScreenPoint(ent.RootPart.Position + Vector3.new(0, ent.HipHeight + 1, 0))
				nametag.Text.Visible = headVis
				nametag.BG.Visible = headVis
				if not headVis then
					continue
				end
	
				if Distance.Enabled then
					local mag = entitylib.isAlive and math.floor((entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude) or 0
					if Sizes[ent] ~= mag then
						nametag.Text.Text = string.format(Strings[ent], mag)
						nametag.BG.Size = Vector2.new(nametag.Text.TextBounds.X + 8, nametag.Text.TextBounds.Y + 7)
						Sizes[ent] = mag
					end
				end
				nametag.BG.Position = Vector2.new(headPos.X - (nametag.BG.Size.X / 2), headPos.Y + (nametag.BG.Size.Y / 2))
				nametag.Text.Position = nametag.BG.Position + Vector2.new(4, 2.5)
			end
		end
	}
	
	NameTags = Modern.Catalogs.Render:AddModule({
		Name = 'NameTags',
		Function = function(callback)
			if callback then
				methodused = DrawingToggle.Enabled and 'Drawing' or 'Normal'
				if Removed[methodused] then
					NameTags:Clean(entitylib.Events.EntityRemoved:Connect(Removed[methodused]))
				end
				if Added[methodused] then
					for _, v in entitylib.List do
						if Reference[v] then
							Removed[methodused](v)
						end
						Added[methodused](v)
					end
					NameTags:Clean(entitylib.Events.EntityAdded:Connect(function(ent)
						if Reference[ent] then
							Removed[methodused](ent)
						end
						Added[methodused](ent)
					end))
				end
				if Updated[methodused] then
					NameTags:Clean(entitylib.Events.EntityUpdated:Connect(Updated[methodused]))
					for _, v in entitylib.List do
						Updated[methodused](v)
					end
				end
				if Loop[methodused] then
					NameTags:Clean(RunService.RenderStepped:Connect(Loop[methodused]))
				end
			else
				if Removed[methodused] then
					for i in Reference do
						Removed[methodused](i)
					end
				end
			end
		end
	})
	Scale = NameTags:AddSlider({
		Name = 'Scale',
		Function = function()
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end,
		Default = 1,
		Min = 0.1,
		Max = 1.5,
		Decimal = 10
	})
	Background = NameTags:AddSlider({
		Name = 'Transparency',
		Function = function()
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end,
		Default = 0.5,
		Min = 0,
		Max = 1,
		Decimal = 10
	})
	GlowEffect = NameTags:AddToggle({
		Name = 'Glow Effect',
		Function = function()
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end,
		Default = true
	})
	Health = NameTags:AddToggle({
		Name = 'Health',
		Function = function()
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end
	})
	Distance = NameTags:AddToggle({
		Name = 'Distance',
		Function = function()
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end
	})
	DisplayName = NameTags:AddToggle({
		Name = 'Use Displayname',
		Function = function()
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end,
		Default = true
	})
	Teammates = NameTags:AddToggle({
		Name = 'Priority Only',
		Function = function()
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end,
		Default = true
	})
	DrawingToggle = NameTags:AddToggle({
		Name = 'Drawing',
		Function = function(callback)
			GlowEffect.Frame.Visible = not callback
			if NameTags.Enabled then
				NameTags:Toggle()
				NameTags:Toggle()
			end
		end
	})
	DistanceCheck = NameTags:AddToggle({
		Name = 'Distance Check',
		Function = function(callback)
			DistanceLimit.Frame.Visible = callback
		end
	})
	DistanceLimit = NameTags:AddSlider({
		Name = 'Player Distance',
		Min = 0,
		Max = 256,
		Default = 64,
		Darker = true,
		Visible = false
	})
end)


run(function()
	local Timer
	local Value
	
	Timer = Modern.Catalogs.Player:AddModule({
		Name = 'Timer',
		Function = function(callback)
			if callback then
				setfflag('SimEnableStepPhysics', 'True')
				setfflag('SimEnableStepPhysicsSelective', 'True')
				Timer:Clean(RunService.RenderStepped:Connect(function(dt)
					if Value.Value > 1 then
						RunService:Pause()
						workspace:StepPhysics(dt * (Value.Value - 1), {entitylib.character.RootPart})
						RunService:Run()
					end
				end))
			end
		end
	})
	Value = Timer:AddSlider({
		Name = 'Value',
		Min = 1,
		Max = 3,
		Decimal = 10
	})
end)
local visited, attempted, tpSwitch = {}, {}, false
local cacheExpire, cache = tick()
local function serverHop(pointer, filter)
	visited = shared.Modernserverhoplist and shared.Modernserverhoplist:split('/') or {}
	if not table.find(visited, game.JobId) then
		table.insert(visited, game.JobId)
	end
	if not pointer then
		warn('Searching for an available server.')
	end

	local suc, httpdata = pcall(function()
		return cacheExpire < tick() and game:HttpGet('https://games.roblox.com/v1/games/'..game.PlaceId..'/servers/Public?sortOrder='..(filter == 'Ascending' and 1 or 2)..'&excludeFullGames=true&limit=100'..(pointer and '&cursor='..pointer or '')) or cache
	end)
	local data = suc and httpService:JSONDecode(httpdata) or nil
	if data and data.data then
		for _, v in data.data do
			if tonumber(v.playing) < Players.MaxPlayers and not table.find(visited, v.id) and not table.find(attempted, v.id) then
				cacheExpire, cache = tick() + 60, httpdata
				table.insert(attempted, v.id)

				TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id)
				return
			end
		end

		if data.nextPageCursor then
			serverHop(data.nextPageCursor, filter)
		else
			
		end
	else

	end
end

run(function()
	local StaffDetector
	local Mode
	local Profile
	local Users
	local Group
	local Role
	
	local function getRole(plr, id)
		local suc, res
		for _ = 1, 3 do
			suc, res = pcall(function()
				return plr:GetRankInGroup(id)
			end)
			if suc then break end
		end
		return suc and res or 0
	end
	
	local function getLowestStaffRole(roles)
		local highest = math.huge
		for _, v in roles do
			local low = v.Name:lower()
			if (low:find('admin') or low:find('mod') or low:find('dev')) and v.Rank < highest then
				highest = v.Rank
			end
		end
		return highest
	end
	
	local function playerAdded(plr)
		if not Modern.Loaded then
			repeat task.wait() until Modern.Loaded
		end

		if getRole(plr, 0) >= 1 then
			if Mode.Value == 'Uninject' then
				task.spawn(function()
					Modern:Uninject()
				end)
				game:GetService('StarterGui'):SetCore('SendNotification', {
					Title = 'StaffDetector',
					Text = 'Staff Detected\n'..plr.Name,
					Duration = 60,
				})
			elseif Mode.Value == 'ServerHop' then
				serverHop()
			end
		end
	end
	
	StaffDetector = Modern.Catalogs.Player:AddModule({
		Name = 'StaffDetector',
		Function = function(callback)
			if callback then

				local placeinfo = MarketplaceService:GetProductInfo(game.PlaceId)
				if placeinfo.Creator.CreatorType ~= 'Group' then
					local desc = placeinfo.Description:split('\n')
					for _, str in desc do
						local _, begin = str:find('roblox.com/groups/')
						if begin then
							local endof = str:find('/', begin + 1)
							placeinfo = {Creator = {
								CreatorType = 'Group',
								CreatorTargetId = str:sub(begin + 1, endof - 1)
							}}
						end
					end

					if placeinfo.Creator.CreatorType ~= 'Group' then
						return
					end
	
					local groupinfo = GroupService:GetGroupInfoAsync(placeinfo.Creator.CreatorTargetId)
					Group:SetValue(placeinfo.Creator.CreatorTargetId)
					Role:SetValue(getLowestStaffRole(groupinfo.Roles))
				end
	
				StaffDetector:Clean(Players.PlayerAdded:Connect(playerAdded))
				for _, v in Players:GetPlayers() do
					task.spawn(playerAdded, v)
				end
			end
		end
	})
	Mode = StaffDetector:AddDropdown({
		Name = 'Mode',
		List = {'Uninject', 'ServerHop','Notify'}
	})
end)

run(function()
	local Freecam
	local Value
	local randomkey, module, old = HttpService:GenerateGUID(false)
	
	Freecam = Modern.Catalogs.Render:AddModule({
		Name = 'Freecam',
		Function = function(callback)
			if callback then
				repeat
					task.wait(0.1)
					for _, v in getconnections(gameCamera:GetPropertyChangedSignal('CameraType')) do
						if v.Function then
							module = debug.getupvalue(v.Function, 1)
						end
					end
				until module or not Freecam.Enabled
	
				if module and module.activeCameraController and Freecam.Enabled then
					old = module.activeCameraController.GetSubjectPosition
					local camPos = old(module.activeCameraController) or Vector3.zero
					module.activeCameraController.GetSubjectPosition = function()
						return camPos
					end
	
					Freecam:Clean(RunService.PreSimulation:Connect(function(dt)
						if not UserInputService:GetFocusedTextBox() then
							local forward = (UserInputService:IsKeyDown(Enum.KeyCode.W) and -1 or 0) + (UserInputService:IsKeyDown(Enum.KeyCode.S) and 1 or 0)
							local side = (UserInputService:IsKeyDown(Enum.KeyCode.A) and -1 or 0) + (UserInputService:IsKeyDown(Enum.KeyCode.D) and 1 or 0)
							local up = (UserInputService:IsKeyDown(Enum.KeyCode.Q) and -1 or 0) + (UserInputService:IsKeyDown(Enum.KeyCode.E) and 1 or 0)
							dt = dt * (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) and 0.25 or 1)
							camPos = (CFrame.lookAlong(camPos, gameCamera.CFrame.LookVector) * CFrame.new(Vector3.new(side, up, forward) * (Value.Value * dt))).Position
						end
					end))
	
					ContextService:BindActionAtPriority('FreecamKeyboard'..randomkey, function() 
						return Enum.ContextActionResult.Sink 
					end, false, Enum.ContextActionPriority.High.Value,
						Enum.KeyCode.W,
						Enum.KeyCode.A,
						Enum.KeyCode.S,
						Enum.KeyCode.D,
						Enum.KeyCode.E,
						Enum.KeyCode.Q,
						Enum.KeyCode.Up,
						Enum.KeyCode.Down
					)
				end
			else
				pcall(function()
					ContextService:UnbindAction('FreecamKeyboard'..randomkey)
				end)
				if module and old then
					module.activeCameraController.GetSubjectPosition = old
					module = nil
					old = nil
				end
			end
		end
	})
	Value = Freecam:AddSlider({
		Name = 'Speed',
		Min = 1,
		Max = 150,
		Default = 50,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
end)

run(function()
	local Chams
	local Targets
	local Mode
	local FillColor
	local OutlineColor
	local FillTransparency
	local OutlineTransparency
	local Teammates
	local Walls
	local Reference = {}
	local Folder = Instance.new('Folder')
	Folder.Parent = Modern.MainScreenGui
	
	local function Added(ent)
		if not ent.Player then return end
		if Teammates.Enabled and (not ent.Targetable) and (not ent.Friend) then return end
		if Modern.ThreadFix then
			setthreadidentity(8)
		end
		if Mode.Value == 'Highlight' then
			local cham = Instance.new('Highlight')
			cham.Adornee = ent.Character
			cham.DepthMode = Enum.HighlightDepthMode[Walls.Enabled and 'AlwaysOnTop' or 'Occluded']
			cham.FillColor = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
			cham.OutlineColor = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
			cham.FillTransparency = FillTransparency.Value
			cham.OutlineTransparency = OutlineTransparency.Value
			cham.Parent = Folder
			Reference[ent] = cham
		else
			local chams = {}
			for _, v in ent.Character:GetChildren() do
				if v:IsA('BasePart') and (ent.NPC or v.Name:find('Arm') or v.Name:find('Leg') or v.Name:find('Hand') or v.Name:find('Feet') or v.Name:find('Torso') or v.Name == 'Head') then
					local box = Instance.new(v.Name == 'Head' and 'SphereHandleAdornment' or 'BoxHandleAdornment')
					if v.Name == 'Head' then
						box.Radius = 0.75
					else
						box.Size = v.Size
					end
					box.AlwaysOnTop = Walls.Enabled
					box.Adornee = v
					box.ZIndex = 0
					box.Transparency = FillTransparency.Value
					box.Color3 = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
					box.Parent = Folder
					table.insert(chams, box)
				end
			end
			Reference[ent] = chams
		end
	end
	
	local function Removed(ent)
		if Reference[ent] then
			if Modern.ThreadFix then
				setthreadidentity(8)
			end
			if type(Reference[ent]) == 'table' then
				for _, v in Reference[ent] do
					v:Destroy()
				end
				table.clear(Reference[ent])
			else
				Reference[ent]:Destroy()
			end
			Reference[ent] = nil
		end
	end
	local function Looped()
		for ent, ref in next, Reference do
			if Modern.ThreadFix then
				setthreadidentity(8)
			end
			if type(ref) == 'table' then
				for _, v in ref do
					if v:IsA('SphereHandleAdornment') or v:IsA('BoxHandleAdornment') then
						v.Color3 = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
					end
				end
			else
				ref.FillColor = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
				ref.OutlineColor = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
			end
		end
	end
	
	Chams = Modern.Catalogs.Render:AddModule({
		Name = 'Chams',
		Function = function(callback)
			if callback then
				Chams:Clean(entitylib.Events.EntityRemoved:Connect(Removed))
				Chams:Clean(RunService.RenderStepped:Connect(Looped))
				Chams:Clean(entitylib.Events.EntityAdded:Connect(function(ent)
					if Reference[ent] then
						Removed(ent)
					end
					Added(ent)
				end))
				for _, v in entitylib.List do
					if Reference[v] then
						Removed(v)
					end
					Added(v)
				end
			else
				for i in Reference do
					Removed(i)
				end
			end
		end
	})

	Mode = Chams:AddDropdown({
		Name = 'Mode',
		List = {'Highlight', 'BoxHandles'},
		Function = function(val)
			OutlineTransparency.Frame.Visible = val == 'Highlight'
			if Chams.Enabled then
				Chams:Toggle()
				Chams:Toggle()
			end
		end
	})
	FillTransparency = Chams:AddSlider({
		Name = 'Transparency',
		Min = 0,
		Max = 1,
		Default = 0.5,
		Function = function(val)
			for _, v in Reference do
				if type(v) == 'table' then
					for _, v2 in v do v2.Transparency = val end
				else
					v.FillTransparency = val
				end
			end
		end,
		Decimal = 10
	})
	OutlineTransparency = Chams:AddSlider({
		Name = 'Outline Transparency',
		Min = 0,
		Max = 1,
		Default = 0.5,
		Function = function(val)
			for _, v in Reference do
				if type(v) ~= 'table' then
					v.OutlineTransparency = val
				end
			end
		end,
		Decimal = 10,
		Darker = true
	})
	Walls = Chams:AddToggle({
		Name = 'Render Walls',
		Function = function(callback)
			for _, v in Reference do
				if type(v) == 'table' then
					for _, v2 in v do
						v2.AlwaysOnTop = callback
					end
				else
					v.DepthMode = Enum.HighlightDepthMode[callback and 'AlwaysOnTop' or 'Occluded']
				end
			end
		end,
		Default = true
	})
	Teammates = Chams:AddToggle({
		Name = 'Priority Only',
		Function = function()
			if Chams.Enabled then
				Chams:Toggle()
				Chams:Toggle()
			end
		end,
		Default = true
	})
end)
	
run(function()
	local ESP
	local Targets
	local Color
	local Method
	local BoundingBox
	local Filled
	local HealthBar
	local Name
	local DisplayName
	local Background
	local Teammates
	local Distance
	local DistanceLimit
	local Reference = {}
	local methodused
	
	local function ESPWorldToViewport(pos)
		local newpos = gameCamera:WorldToViewportPoint(gameCamera.CFrame:pointToWorldSpace(gameCamera.CFrame:PointToObjectSpace(pos)))
		return Vector2.new(newpos.X, newpos.Y)
	end
	
	local ESPAdded = {
		Drawing2D = function(ent)
			if not ent.Player then return end
			if Teammates.Enabled and (not ent.Targetable) and (not ent.Friend) then return end
			if Modern.ThreadFix then
				setthreadidentity(8)
			end
			local EntityESP = {}
			EntityESP.Main = Drawing.new('Square')
			EntityESP.Main.Transparency = BoundingBox.Enabled and 1 or 0
			EntityESP.Main.ZIndex = 2
			EntityESP.Main.Filled = false
			EntityESP.Main.Thickness = 1
			EntityESP.Main.Color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
	
			if BoundingBox.Enabled then
				EntityESP.Border = Drawing.new('Square')
				EntityESP.Border.Transparency = 0.35
				EntityESP.Border.ZIndex = 1
				EntityESP.Border.Thickness = 1
				EntityESP.Border.Filled = false
				EntityESP.Border.Color = Color3.new()
				EntityESP.Border2 = Drawing.new('Square')
				EntityESP.Border2.Transparency = 0.35
				EntityESP.Border2.ZIndex = 1
				EntityESP.Border2.Thickness = 1
				EntityESP.Border2.Filled = Filled.Enabled
				EntityESP.Border2.Color = Color3.new()
			end
	
			if HealthBar.Enabled then
				EntityESP.HealthLine = Drawing.new('Line')
				EntityESP.HealthLine.Thickness = 1
				EntityESP.HealthLine.ZIndex = 2
				EntityESP.HealthLine.Color = Color3.fromHSV(math.clamp(ent.Health / ent.MaxHealth, 0, 1) / 2.5, 0.89, 0.75)
				EntityESP.HealthBorder = Drawing.new('Line')
				EntityESP.HealthBorder.Thickness = 3
				EntityESP.HealthBorder.Transparency = 0.35
				EntityESP.HealthBorder.ZIndex = 1
				EntityESP.HealthBorder.Color = Color3.new()
			end
			
			if Name.Enabled then
				if Background.Enabled then
					EntityESP.TextBKG = Drawing.new('Square')
					EntityESP.TextBKG.Transparency = 0.35
					EntityESP.TextBKG.ZIndex = 0
					EntityESP.TextBKG.Thickness = 1
					EntityESP.TextBKG.Filled = true
					EntityESP.TextBKG.Color = Color3.new()
				end
				EntityESP.Drop = Drawing.new('Text')
				EntityESP.Drop.Color = Color3.new()
				EntityESP.Drop.Text = ent.Player and (DisplayName.Enabled and ent.Player.DisplayName or ent.Player.Name) or ent.Character.Name
				EntityESP.Drop.ZIndex = 1
				EntityESP.Drop.Center = true
				EntityESP.Drop.Size = 20
				EntityESP.Text = Drawing.new('Text')
				EntityESP.Text.Text = EntityESP.Drop.Text
				EntityESP.Text.ZIndex = 2
				EntityESP.Text.Color = EntityESP.Main.Color
				EntityESP.Text.Center = true
				EntityESP.Text.Size = 20
			end
			Reference[ent] = EntityESP
		end,
		Drawing3D = function(ent)
			if not ent.Player then return end
			if Teammates.Enabled and (not ent.Targetable) and (not ent.Friend) then return end
			if Modern.ThreadFix then
				setthreadidentity(8)
			end
			local EntityESP = {}
			EntityESP.Line1 = Drawing.new('Line')
			EntityESP.Line2 = Drawing.new('Line')
			EntityESP.Line3 = Drawing.new('Line')
			EntityESP.Line4 = Drawing.new('Line')
			EntityESP.Line5 = Drawing.new('Line')
			EntityESP.Line6 = Drawing.new('Line')
			EntityESP.Line7 = Drawing.new('Line')
			EntityESP.Line8 = Drawing.new('Line')
			EntityESP.Line9 = Drawing.new('Line')
			EntityESP.Line10 = Drawing.new('Line')
			EntityESP.Line11 = Drawing.new('Line')
			EntityESP.Line12 = Drawing.new('Line')
	
			local color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
			for _, v in EntityESP do
				v.Thickness = 1
				v.Color = color
			end
	
			Reference[ent] = EntityESP
		end,
		DrawingSkeleton = function(ent)
			if not ent.Player then return end
			if Teammates.Enabled and (not ent.Targetable) and (not ent.Friend) then return end
			if Modern.ThreadFix then
				setthreadidentity(8)
			end
			local EntityESP = {}
			EntityESP.Head = Drawing.new('Line')
			EntityESP.HeadFacing = Drawing.new('Line')
			EntityESP.Torso = Drawing.new('Line')
			EntityESP.UpperTorso = Drawing.new('Line')
			EntityESP.LowerTorso = Drawing.new('Line')
			EntityESP.LeftArm = Drawing.new('Line')
			EntityESP.RightArm = Drawing.new('Line')
			EntityESP.LeftLeg = Drawing.new('Line')
			EntityESP.RightLeg = Drawing.new('Line')
	
			local color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
			for _, v in EntityESP do
				v.Thickness = 2
				v.Color = color
			end
	
			Reference[ent] = EntityESP
		end
	}
	
	local ESPRemoved = {
		Drawing2D = function(ent)
			local EntityESP = Reference[ent]
			if EntityESP then
				if Modern.ThreadFix then
					setthreadidentity(8)
				end
				Reference[ent] = nil
				for _, v in EntityESP do
					pcall(function()
						v.Visible = false
						v:Remove()
					end)
				end
			end
		end
	}
	ESPRemoved.Drawing3D = ESPRemoved.Drawing2D
	ESPRemoved.DrawingSkeleton = ESPRemoved.Drawing2D
	
	local ESPUpdated = {
		Drawing2D = function(ent)
			local EntityESP = Reference[ent]
			if EntityESP then
				if Modern.ThreadFix then
					setthreadidentity(8)
				end
				
				if EntityESP.HealthLine then
					EntityESP.HealthLine.Color = Color3.fromHSV(math.clamp(ent.Health / ent.MaxHealth, 0, 1) / 2.5, 0.89, 0.75)
				end
	
				if EntityESP.Text then
					EntityESP.Text.Text = ent.Player and (DisplayName.Enabled and ent.Player.DisplayName or ent.Player.Name) or ent.Character.Name
					EntityESP.Drop.Text = EntityESP.Text.Text
				end
			end
		end
	}
	
	local ColorFunc = {
		Drawing2D = function(hue, sat, val)
			local color = Color3.fromHSV(hue, sat, val)
			for i, v in Reference do
				v.Main.Color = entitylib.getEntityColor(i) or color
				if v.Text then
					v.Text.Color = v.Main.Color
				end
			end
		end,
		Drawing3D = function(hue, sat, val)
			local color = Color3.fromHSV(hue, sat, val)
			for i, v in Reference do
				local playercolor = entitylib.getEntityColor(i) or color
				for _, v2 in v do
					v2.Color = playercolor
				end
			end
		end
	}
	ColorFunc.DrawingSkeleton = ColorFunc.Drawing3D
	
	local ESPLoop = {
		Drawing2D = function()
			for ent, EntityESP in Reference do
				if Distance.Enabled then
					local distance = entitylib.isAlive and (entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude or math.huge
					if distance < DistanceLimit.ValueMin or distance > DistanceLimit.ValueMax then
						for _, obj in EntityESP do
							obj.Visible = false
						end
						continue
					end
				end
	
				local rootPos, rootVis = gameCamera:WorldToViewportPoint(ent.RootPart.Position)
				local color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
				for _, obj in EntityESP do
					obj.Visible = rootVis
					obj.Color = color
				end
				if not rootVis then continue end
	
				local topPos = gameCamera:WorldToViewportPoint((CFrame.lookAlong(ent.RootPart.Position, gameCamera.CFrame.LookVector) * CFrame.new(2, ent.HipHeight, 0)).p)
				local bottomPos = gameCamera:WorldToViewportPoint((CFrame.lookAlong(ent.RootPart.Position, gameCamera.CFrame.LookVector) * CFrame.new(-2, -ent.HipHeight - 1, 0)).p)
				local sizex, sizey = topPos.X - bottomPos.X, topPos.Y - bottomPos.Y
				local posx, posy = (rootPos.X - sizex / 2),  ((rootPos.Y - sizey / 2))
				EntityESP.Main.Position = Vector2.new(posx, posy) // 1
				EntityESP.Main.Size = Vector2.new(sizex, sizey) // 1
				if EntityESP.Border then
					EntityESP.Border.Position = Vector2.new(posx - 1, posy + 1) // 1
					EntityESP.Border.Size = Vector2.new(sizex + 2, sizey - 2) // 1
					EntityESP.Border2.Position = Vector2.new(posx + 1, posy - 1) // 1
					EntityESP.Border2.Size = Vector2.new(sizex - 2, sizey + 2) // 1
				end
	
				if EntityESP.HealthLine then
					local healthposy = sizey * math.clamp(ent.Health / ent.MaxHealth, 0, 1)
					EntityESP.HealthLine.Visible = ent.Health > 0
					EntityESP.HealthLine.From = Vector2.new(posx - 6, posy + (sizey - (sizey - healthposy))) // 1
					EntityESP.HealthLine.To = Vector2.new(posx - 6, posy) // 1
					EntityESP.HealthBorder.From = Vector2.new(posx - 6, posy + 1) // 1
					EntityESP.HealthBorder.To = Vector2.new(posx - 6, (posy + sizey) - 1) // 1
				end
	
				if EntityESP.Text then
					EntityESP.Text.Position = Vector2.new(posx + (sizex / 2), posy + (sizey - 28)) // 1
					EntityESP.Drop.Position = EntityESP.Text.Position + Vector2.new(1, 1)
					if EntityESP.TextBKG then
						EntityESP.TextBKG.Size = EntityESP.Text.TextBounds + Vector2.new(8, 4)
						EntityESP.TextBKG.Position = EntityESP.Text.Position - Vector2.new(4 + (EntityESP.Text.TextBounds.X / 2), 0)
					end
				end
			end
		end,
		Drawing3D = function()
			for ent, EntityESP in Reference do
				if Distance.Enabled then
					local distance = entitylib.isAlive and (entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude or math.huge
					if distance < DistanceLimit.ValueMin or distance > DistanceLimit.ValueMax then
						for _, obj in EntityESP do
							obj.Visible = false
						end
						continue
					end
				end
	
				local _, rootVis = gameCamera:WorldToViewportPoint(ent.RootPart.Position)
				local color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
				for _, obj in EntityESP do
					obj.Visible = rootVis
					obj.Thickness = 2
					obj.Color = color
				end
				if not rootVis then continue end
	
				local point1 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(1.5, ent.HipHeight, 1.5))
				local point2 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(1.5, -ent.HipHeight, 1.5))
				local point3 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(-1.5, ent.HipHeight, 1.5))
				local point4 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(-1.5, -ent.HipHeight, 1.5))
				local point5 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(1.5, ent.HipHeight, -1.5))
				local point6 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(1.5, -ent.HipHeight, -1.5))
				local point7 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(-1.5, ent.HipHeight, -1.5))
				local point8 = ESPWorldToViewport(ent.RootPart.Position + Vector3.new(-1.5, -ent.HipHeight, -1.5))
				EntityESP.Line1.From = point1
				EntityESP.Line1.To = point2
				EntityESP.Line2.From = point3
				EntityESP.Line2.To = point4
				EntityESP.Line3.From = point5
				EntityESP.Line3.To = point6
				EntityESP.Line4.From = point7
				EntityESP.Line4.To = point8
				EntityESP.Line5.From = point1
				EntityESP.Line5.To = point3
				EntityESP.Line6.From = point1
				EntityESP.Line6.To = point5
				EntityESP.Line7.From = point5
				EntityESP.Line7.To = point7
				EntityESP.Line8.From = point7
				EntityESP.Line8.To = point3
				EntityESP.Line9.From = point2
				EntityESP.Line9.To = point4
				EntityESP.Line10.From = point2
				EntityESP.Line10.To = point6
				EntityESP.Line11.From = point6
				EntityESP.Line11.To = point8
				EntityESP.Line12.From = point8
				EntityESP.Line12.To = point4
			end
		end,
		DrawingSkeleton = function()
			for ent, EntityESP in Reference do
				if Distance.Enabled then
					local distance = entitylib.isAlive and (entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude or math.huge
					if distance < DistanceLimit.ValueMin or distance > DistanceLimit.ValueMax then
						for _, obj in EntityESP do
							obj.Visible = false
						end
						continue
					end
				end
	
				local _, rootVis = gameCamera:WorldToViewportPoint(ent.RootPart.Position)
				for _, obj in EntityESP do
					obj.Visible = rootVis
				end
				if not rootVis then continue end
				
				local rigcheck = ent.Humanoid.RigType == Enum.HumanoidRigType.R6
				pcall(function()
					local offset = rigcheck and CFrame.new(0, -0.8, 0) or CFrame.identity
					local head = ESPWorldToViewport((ent.Head.CFrame).p)
					local headfront = ESPWorldToViewport((ent.Head.CFrame * CFrame.new(0, 0, -0.5)).p)
					local toplefttorso = ESPWorldToViewport((ent.Character[(rigcheck and 'Torso' or 'UpperTorso')].CFrame * CFrame.new(-1.5, 0.8, 0)).p)
					local toprighttorso = ESPWorldToViewport((ent.Character[(rigcheck and 'Torso' or 'UpperTorso')].CFrame * CFrame.new(1.5, 0.8, 0)).p)
					local toptorso = ESPWorldToViewport((ent.Character[(rigcheck and 'Torso' or 'UpperTorso')].CFrame * CFrame.new(0, 0.8, 0)).p)
					local bottomtorso = ESPWorldToViewport((ent.Character[(rigcheck and 'Torso' or 'UpperTorso')].CFrame * CFrame.new(0, -0.8, 0)).p)
					local bottomlefttorso = ESPWorldToViewport((ent.Character[(rigcheck and 'Torso' or 'UpperTorso')].CFrame * CFrame.new(-0.5, -0.8, 0)).p)
					local bottomrighttorso = ESPWorldToViewport((ent.Character[(rigcheck and 'Torso' or 'UpperTorso')].CFrame * CFrame.new(0.5, -0.8, 0)).p)
					local leftarm = ESPWorldToViewport((ent.Character[(rigcheck and 'Left Arm' or 'LeftHand')].CFrame * offset).p)
					local rightarm = ESPWorldToViewport((ent.Character[(rigcheck and 'Right Arm' or 'RightHand')].CFrame * offset).p)
					local leftleg = ESPWorldToViewport((ent.Character[(rigcheck and 'Left Leg' or 'LeftFoot')].CFrame * offset).p)
					local rightleg = ESPWorldToViewport((ent.Character[(rigcheck and 'Right Leg' or 'RightFoot')].CFrame * offset).p)
					EntityESP.Head.From = toptorso
					EntityESP.Head.To = head
					EntityESP.HeadFacing.From = head
					EntityESP.HeadFacing.To = headfront
					EntityESP.UpperTorso.From = toplefttorso
					EntityESP.UpperTorso.To = toprighttorso
					EntityESP.Torso.From = toptorso
					EntityESP.Torso.To = bottomtorso
					EntityESP.LowerTorso.From = bottomlefttorso
					EntityESP.LowerTorso.To = bottomrighttorso
					EntityESP.LeftArm.From = toplefttorso
					EntityESP.LeftArm.To = leftarm
					EntityESP.RightArm.From = toprighttorso
					EntityESP.RightArm.To = rightarm
					EntityESP.LeftLeg.From = bottomlefttorso
					EntityESP.LeftLeg.To = leftleg
					EntityESP.RightLeg.From = bottomrighttorso
					EntityESP.RightLeg.To = rightleg
				end)
			end
		end
	}
	
	ESP = Modern.Catalogs.Render:AddModule({
		Name = 'ESP',
		Function = function(callback)
			if callback then
				methodused = 'Drawing'..Method.Value
				if ESPRemoved[methodused] then
					ESP:Clean(entitylib.Events.EntityRemoved:Connect(ESPRemoved[methodused]))
				end
				if ESPAdded[methodused] then
					for _, v in entitylib.List do
						if Reference[v] then
							ESPRemoved[methodused](v)
						end
						ESPAdded[methodused](v)
					end
					ESP:Clean(entitylib.Events.EntityAdded:Connect(function(ent)
						if Reference[ent] then
							ESPRemoved[methodused](ent)
						end
						ESPAdded[methodused](ent)
					end))
				end
				if ESPUpdated[methodused] then
					ESP:Clean(entitylib.Events.EntityUpdated:Connect(ESPUpdated[methodused]))
					for _, v in entitylib.List do
						ESPUpdated[methodused](v)
					end
				end
				if ESPLoop[methodused] then
					ESP:Clean(RunService.RenderStepped:Connect(ESPLoop[methodused]))
				end
			else
				if ESPRemoved[methodused] then
					for i in Reference do
						ESPRemoved[methodused](i)
					end
				end
			end
		end
	})
	Method = ESP:AddDropdown({
		Name = 'Mode',
		List = {'2D', '3D', 'Skeleton'},
		Function = function(val)
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
			BoundingBox.Frame.Visible = (val == '2D')
			Filled.Frame.Visible = (val == '2D')
			HealthBar.Frame.Visible = (val == '2D')
			Name.Frame.Visible = (val == '2D')
			DisplayName.Frame.Visible = Name.Frame.Visible and Name.Enabled
			Background.Frame.Visible = Name.Frame.Visible and Name.Enabled
		end,
	})

	BoundingBox = ESP:AddToggle({
		Name = 'Bounding Box',
		Function = function()
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
		end,
		Default = true,
		Darker = true
	})
	Filled = ESP:AddToggle({
		Name = 'Filled',
		Function = function()
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
		end,
		Darker = true
	})
	HealthBar = ESP:AddToggle({
		Name = 'Health Bar',
		Function = function()
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
		end,
		Darker = true
	})
	Name = ESP:AddToggle({
		Name = 'Name',
		Function = function(callback)
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
			DisplayName.Frame.Visible = callback
			Background.Frame.Visible = callback
		end,
		Darker = true
	})
	DisplayName = ESP:AddToggle({
		Name = 'Use Displayname',
		Function = function()
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
		end,
		Default = true,
		Darker = true
	})
	Background = ESP:AddToggle({
		Name = 'Show Background',
		Function = function()
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
		end,
		Darker = true
	})
	Teammates = ESP:AddToggle({
		Name = 'Priority Only',
		Function = function()
			if ESP.Enabled then
				ESP:Toggle()
				ESP:Toggle()
			end
		end,
		Default = true
	})
	Distance = ESP:AddToggle({
		Name = 'Distance Check',
		Function = function(callback)
			DistanceLimit.Object.Visible = callback
		end
	})
	DistanceLimit = ESP:AddSlider({
		Name = 'Player Distance',
		Min = 0,
		Max = 256,
		Default = 64,
		Darker = true,
		Visible = false
	})
end)
run(function()
	local Mode
	local StudLimit = {Object = {}}
	local rayCheck = RaycastParams.new()
	rayCheck.RespectCanCollide = true
	local overlapCheck = OverlapParams.new()
	overlapCheck.MaxParts = 9e9
	local modified, fflag = {}
	local teleported
	
	local function grabClosestNormal(ray)
		local partCF, mag, closest = ray.Instance.CFrame, 0, Enum.NormalId.Top
		for _, normal in Enum.NormalId:GetEnumItems() do
			local dot = partCF:VectorToWorldSpace(Vector3.fromNormalId(normal)):Dot(ray.Normal)
			if dot > mag then
				mag, closest = dot, normal
			end
		end
		return Vector3.fromNormalId(closest).X ~= 0 and 'X' or 'Z'
	end
	
	local Functions = {
		Part = function()
			local chars = {gameCamera, lplr.Character}
			for _, v in entitylib.List do
				table.insert(chars, v.Character)
			end
			overlapCheck.FilterDescendantsInstances = chars
	
			local parts = workspace:GetPartBoundsInBox(entitylib.character.RootPart.CFrame + Vector3.new(0, 1, 0), entitylib.character.RootPart.Size + Vector3.new(1, entitylib.character.HipHeight, 1), overlapCheck)
			for _, part in parts do
				if part.CanCollide and (not Spider.Enabled or SpiderShift) then
					modified[part] = true
					part.CanCollide = false
				end
			end
	
			for part in modified do
				if not table.find(parts, part) then
					modified[part] = nil
					part.CanCollide = true
				end
			end
		end,
		Character = function()
			for _, part in lplr.Character:GetDescendants() do
				if part:IsA('BasePart') and part.CanCollide and (not Spider.Enabled or SpiderShift) then
					modified[part] = true
					part.CanCollide = Spider.Enabled and not SpiderShift
				end
			end
		end,
		CFrame = function()
			local chars = {gameCamera, lplr.Character}
			for _, v in entitylib.List do
				table.insert(chars, v.Character)
			end
			rayCheck.FilterDescendantsInstances = chars
			overlapCheck.FilterDescendantsInstances = chars
	
			local ray = workspace:Raycast(entitylib.character.Head.CFrame.Position, entitylib.character.Humanoid.MoveDirection * 1.1, rayCheck)
			if ray and (not Spider.Enabled or SpiderShift) then
				local phaseDirection = grabClosestNormal(ray)
				if ray.Instance.Size[phaseDirection] <= StudLimit.Value then
					local root = entitylib.character.RootPart
					local dest = root.CFrame + (ray.Normal * (-(ray.Instance.Size[phaseDirection]) - (root.Size.X / 1.5)))
	
					if #workspace:GetPartBoundsInBox(dest, Vector3.one, overlapCheck) <= 0 then
						if Mode.Value == 'Motor' then
							motorMove(root, dest)
						else
							root.CFrame = dest
						end
					end
				end
			end
		end,
		FFlag = function()
			if teleported then return end
			setfflag('AssemblyExtentsExpansionStudHundredth', '-10000')
			fflag = true
		end
	}
	Functions.Motor = Functions.CFrame
	
	Phase = Modern.Catalogs.Player:AddModule({
		Name = 'Phase',
		Function = function(callback)
			if callback then
				Phase:Clean(RunService.Stepped:Connect(function()
					if entitylib.isAlive then
						Functions[Mode.Value]()
					end
				end))
	
				if Mode.Value == 'FFlag' then
					Phase:Clean(lplr.OnTeleport:Connect(function()
						teleported = true
						setfflag('AssemblyExtentsExpansionStudHundredth', '30')
					end))
				end
			else
				if fflag then
					setfflag('AssemblyExtentsExpansionStudHundredth', '30')
				end
				for part in modified do
					part.CanCollide = true
				end
				table.clear(modified)
				fflag = nil
			end
		end
	})
	Mode = Phase:AddDropdown({
		Name = 'Mode',
		List = {'Part', 'Character', 'CFrame', 'Motor', 'FFlag'},
		Function = function(val)
			StudLimit.Object.Visible = val == 'CFrame' or val == 'Motor'
			if fflag then
				setfflag('AssemblyExtentsExpansionStudHundredth', '30')
			end
			for part in modified do
				part.CanCollide = true
			end
			table.clear(modified)
			fflag = nil
		end
	})
	StudLimit = Phase:AddSlider({
		Name = 'Wall Size',
		Min = 1,
		Max = 20,
		Default = 5,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end,
		Darker = true,
		Visible = false
	})
end)

run(function()
	local Mode
	local Value
	local State
	local rayCheck = RaycastParams.new()
	rayCheck.RespectCanCollide = true
	local Active, Truss
	
	Spider = Modern.Catalogs.Movement:AddModule({
		Name = 'Spider',
		Function = function(callback)
			if callback then
				if Truss then Truss.Parent = gameCamera end
				Spider:Clean(RunService.PreSimulation:Connect(function(dt)
					if entitylib.isAlive then
						local root = lplr.Character.PrimaryPart or entitylib.character.RootPart
						local chars = {gameCamera, lplr.Character, Truss}
						for _, v in entitylib.List do
							table.insert(chars, v.Character)
						end
						SpiderShift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)
						rayCheck.FilterDescendantsInstances = chars
						rayCheck.CollisionGroup = root.CollisionGroup
	
						if Mode.Value ~= 'Part' then
							local vec = entitylib.character.Humanoid.MoveDirection * 2.5
							local ray = workspace:Raycast(root.Position - Vector3.new(0, entitylib.character.HipHeight - 0.5, 0), vec, rayCheck)
							if Active and not ray then
								root.Velocity = Vector3.new(root.Velocity.X, 0, root.Velocity.Z)
							end
	
							Active = ray
							if Active and ray.Normal.Y == 0 then
								if not Phase.Enabled or not SpiderShift then
									if State.Enabled then
										entitylib.character.Humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
									end
	
									root.Velocity *= Vector3.new(1, 0, 1)
									if Mode.Value == 'CFrame' then
										root.CFrame += Vector3.new(0, Value.Value * dt, 0)
									elseif Mode.Value == 'Impulse' then
										root:ApplyImpulse(Vector3.new(0, Value.Value, 0) * root.AssemblyMass)
									else
										root.Velocity += Vector3.new(0, Value.Value, 0)
									end
								end
							end
						else
							local ray = workspace:Raycast(root.Position - Vector3.new(0, entitylib.character.HipHeight - 0.5, 0), entitylib.character.RootPart.CFrame.LookVector * 2, rayCheck)
							if ray and (not Phase.Enabled or not SpiderShift) then
								Truss.Position = ray.Position - ray.Normal * 0.9 or Vector3.zero
							else
								Truss.Position = Vector3.zero
							end
						end
					end
				end))
			else
				if Truss then
					Truss.Parent = nil
				end
				SpiderShift = false
			end
		end
	})
	Mode = Spider:AddDropdown({
		Name = 'Mode',
		List = {'Velocity', 'Impulse', 'CFrame', 'Part'},
		Function = function(val)
			Value.Frame.Visible = val ~= 'Part'
			State.Frame.Visible = val ~= 'Part'
			if Truss then
				Truss:Destroy()
				Truss = nil
			end
			if val == 'Part' then
				Truss = Instance.new('TrussPart')
				Truss.Size = Vector3.new(2, 2, 2)
				Truss.Transparency = 1
				Truss.Anchored = true
				Truss.Parent = Spider.Enabled and gameCamera or nil
			end
		end
	})
	Value = Spider:AddSlider({
		Name = 'Speed',
		Min = 0,
		Max = 100,
		Default = 30,
		Darker = true,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	State = Spider:AddToggle({
		Name = 'Climb State',
		Darker = true
	})
end)
	
run(function()
	local SpinBot
	local Mode
	local XToggle
	local YToggle
	local ZToggle
	local Value
	local AngularVelocity
	
	SpinBot = Modern.Catalogs.Movement:AddModule({
		Name = 'Spin',
		Function = function(callback)
			if callback then
				SpinBot:Clean(RunService.PreSimulation:Connect(function()
					if entitylib.isAlive then
						if Mode.Value == 'RotVelocity' then
							local originalRotVelocity = entitylib.character.RootPart.RotVelocity
							entitylib.character.Humanoid.AutoRotate = false
							entitylib.character.RootPart.RotVelocity = Vector3.new(XToggle.Enabled and Value.Value or originalRotVelocity.X, YToggle.Enabled and Value.Value or originalRotVelocity.Y, ZToggle.Enabled and Value.Value or originalRotVelocity.Z)
						elseif Mode.Value == 'CFrame' then
							local val = math.rad((tick() * (20 * Value.Value)) % 360)
							local x, y, z = entitylib.character.RootPart.CFrame:ToOrientation()
							entitylib.character.RootPart.CFrame = CFrame.new(entitylib.character.RootPart.Position) * CFrame.Angles(XToggle.Enabled and val or x, YToggle.Enabled and val or y, ZToggle.Enabled and val or z)
						elseif AngularVelocity then
							AngularVelocity.Parent = entitylib.isAlive and entitylib.character.RootPart
							AngularVelocity.MaxTorque = Vector3.new(XToggle.Enabled and math.huge or 0, YToggle.Enabled and math.huge or 0, ZToggle.Enabled and math.huge or 0)
							AngularVelocity.AngularVelocity = Vector3.new(Value.Value, Value.Value, Value.Value)
						end
					end
				end))
			else
				if entitylib.isAlive and Mode.Value == 'RotVelocity' then
					entitylib.character.Humanoid.AutoRotate = true
				end
				if AngularVelocity then
					AngularVelocity.Parent = nil
				end
			end
		end
	})
	Mode = SpinBot:AddDropdown({
		Name = 'Mode',
		List = {'CFrame', 'RotVelocity', 'BodyMover'},
		Function = function(val)
			if AngularVelocity then
				AngularVelocity:Destroy()
				AngularVelocity = nil
			end
			AngularVelocity = val == 'BodyMover' and Instance.new('BodyAngularVelocity') or nil
		end
	})
	Value = SpinBot:AddSlider({
		Name = 'Speed',
		Min = 1,
		Max = 100,
		Default = 40
	})
	XToggle = SpinBot:AddToggle({Name = 'Spin X'})
	YToggle = SpinBot:AddToggle({
		Name = 'Spin Y',
		Default = true
	})
	ZToggle = SpinBot:AddToggle({Name = 'Spin Z'})
end)

run(function()
	local Tracers
	local Targets
	local Color
	local Transparency
	local StartPosition
	local EndPosition
	local Teammates
	local DistanceColor
	local Distance
	local DistanceLimit
	local Behind
	local Reference = {}
	
	local function Added(ent)
		if not ent.Player then return end
		if Teammates.Enabled and (not ent.Targetable) and (not ent.Friend) then return end
		if Modern.ThreadFix then
			setthreadidentity(8)
		end
	
		local EntityTracer = Drawing.new('Line')
		EntityTracer.Thickness = 1
		EntityTracer.Transparency = 1 - Transparency.Value
		EntityTracer.Color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
		Reference[ent] = EntityTracer
	end
	
	local function Removed(ent)
		local v = Reference[ent]
		if v then
			if Modern.ThreadFix then
				setthreadidentity(8)
			end
			Reference[ent] = nil
			pcall(function()
				v.Visible = false
				v:Remove()
			end)
		end
	end
	
	local function Loop()
		local screenSize = Modern.MainScreenGui.AbsoluteSize
		local startVector = StartPosition.Value == 'Mouse' and UserInputService:GetMouseLocation() or Vector2.new(screenSize.X / 2, (StartPosition.Value == 'Middle' and screenSize.Y / 2 or screenSize.Y))
	
		for ent, EntityTracer in Reference do
			local distance = entitylib.isAlive and (entitylib.character.RootPart.Position - ent.RootPart.Position).Magnitude
			if Distance.Enabled and distance then
				if distance > DistanceLimit.Value then
					EntityTracer.Visible = false
					continue
				end
			end
	
			local pos = ent[EndPosition.Value == 'Torso' and 'RootPart' or 'Head'].Position
			local rootPos, rootVis = gameCamera:WorldToViewportPoint(pos)
			if not rootVis and Behind.Enabled then
				local tempPos = gameCamera.CFrame:PointToObjectSpace(pos)
				tempPos = CFrame.Angles(0, 0, (math.atan2(tempPos.Y, tempPos.X) + math.pi)):VectorToWorldSpace((CFrame.Angles(0, math.rad(89.9), 0):VectorToWorldSpace(Vector3.new(0, 0, -1))))
				rootPos = gameCamera:WorldToViewportPoint(gameCamera.CFrame:pointToWorldSpace(tempPos))
				rootVis = true
			end
	
			local endVector = Vector2.new(rootPos.X, rootPos.Y)
			EntityTracer.Visible = rootVis
			EntityTracer.From = startVector
			EntityTracer.To = endVector
			EntityTracer.Color = entitylib.getEntityColor(ent) or Modern.Libraries.uipallet.FinalColor
		end
	end
	
	Tracers = Modern.Catalogs.Render:AddModule({
		Name = 'Tracers',
		Function = function(callback)
			if callback then
				Tracers:Clean(entitylib.Events.EntityRemoved:Connect(Removed))
				for _, v in entitylib.List do
					if Reference[v] then
						Removed(v)
					end
					Added(v)
				end
				Tracers:Clean(entitylib.Events.EntityAdded:Connect(function(ent)
					if Reference[ent] then
						Removed(ent)
					end
					Added(ent)
				end))
				Tracers:Clean(RunService.RenderStepped:Connect(Loop))
			else
				for i in Reference do
					Removed(i)
				end
			end
		end
	})
	StartPosition = Tracers:AddDropdown({
		Name = 'Start Position',
		List = {'Middle', 'Bottom', 'Mouse'},
		Function = function()
			if Tracers.Enabled then
				Tracers:Toggle()
				Tracers:Toggle()
			end
		end
	})
	EndPosition = Tracers:AddDropdown({
		Name = 'End Position',
		List = {'Head', 'Torso'},
		Function = function()
			if Tracers.Enabled then
				Tracers:Toggle()
				Tracers:Toggle()
			end
		end
	})
	Transparency = Tracers:AddSlider({
		Name = 'Transparency',
		Min = 0,
		Max = 1,
		Function = function(val)
			for _, tracer in Reference do
				tracer.Transparency = 1 - val
			end
		end,
		Decimal = 10
	})
	Distance = Tracers:AddToggle({
		Name = 'Distance Check',
		Function = function(callback)
			DistanceLimit.Frame.Visible = callback
		end
	})
	DistanceLimit = Tracers:AddSlider({
		Name = 'Player Distance',
		Min = 0,
		Max = 256,
		Default = 64,
		Darker = true,
		Visible = false
	})
	Behind = Tracers:AddToggle({
		Name = 'Behind',
		Default = true
	})
	Teammates = Tracers:AddToggle({
		Name = 'Priority Only',
		Function = function()
			if Tracers.Enabled then
				Tracers:Toggle()
				Tracers:Toggle()
			end
		end,
		Default = true
	})
end)

run(function()
	local HitBox
	local Targets
	local TargetPart
	local Expand
	local modified = {}
	
	HitBox = Modern.Catalogs.Combat:AddModule({
		Name = 'HitBox',
		Function = function(callback)
			if callback then
				repeat
					for _, v in entitylib.List do
						if v.Targetable then
							if not v.Player then continue end
							local part = v[TargetPart.Value]
							if not modified[part] then
								modified[part] = part.Size
							end
							part.Size = modified[part] + Vector3.new(Expand.Value, Expand.Value, Expand.Value)
						end
					end
					task.wait()
				until not HitBox.Enabled
			else
				for i, v in modified do
					i.Size = v
				end
				table.clear(modified)
			end
		end
	})
	TargetPart = HitBox:AddDropdown({
		Name = 'Part',
		List = {'RootPart', 'Head'}
	})
	Expand = HitBox:AddSlider({
		Name = 'Expand',
		Min = 0,
		Max = 2,
		Decimal = 10,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
end)

run(function()
	local AntiRagdoll
	AntiRagdoll = Modern.Catalogs.Other:AddModule({
		Name = 'AntiRagdoll',
		Function = function(callback)
			if entitylib.isAlive then
				entitylib.character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, not callback)
			end
	
			if callback then
				AntiRagdoll:Clean(entitylib.Events.LocalAdded:Connect(function(char)
					char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
				end))
			end
		end
	})
end)

run(function()
	local Blink
	local Type
	local AutoSend
	local AutoSendLength
	local oldphys, oldsend
	
	Blink = Modern.Catalogs.Other:AddModule({
		Name = 'Blink',
		Function = function(callback)
			if callback then
				local teleported
				Blink:Clean(lplr.OnTeleport:Connect(function()
					setfflag('S2PhysicsSenderRate', '15')
					setfflag('DataSenderRate', '60')
					teleported = true
				end))
	
				repeat
					local physicsrate, senderrate = '0', Type.Value == 'All' and '-1' or '60'
					if AutoSend.Enabled and tick() % (AutoSendLength.Value + 0.1) > AutoSendLength.Value then
						physicsrate, senderrate = '15', '60'
					end
	
					if physicsrate ~= oldphys or senderrate ~= oldsend then
						setfflag('S2PhysicsSenderRate', physicsrate)
						setfflag('DataSenderRate', senderrate)
						oldphys, oldsend = physicsrate, oldsend
					end
					
					task.wait(0.03)
				until (not Blink.Enabled and not teleported)
			else
				if setfflag then
					setfflag('S2PhysicsSenderRate', '15')
					setfflag('DataSenderRate', '60')
				end
				oldphys, oldsend = nil, nil
			end
		end
	})
	Type = Blink:AddDropdown({
		Name = 'Type',
		List = {'Movement Only', 'All'}
	})
	AutoSend = Blink:AddToggle({
		Name = 'Auto send',
		Function = function(callback)
			AutoSendLength.Frame.Visible = callback
		end
	})
	AutoSendLength = Blink:AddSlider({
		Name = 'Send threshold',
		Min = 0,
		Max = 1,
		Decimal = 100,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
end)

run(function()
	local Xray
	local List
	local modified = {}
	
	local function modifyPart(v)
		if v:IsA('BasePart') then
			modified[v] = true
			v.LocalTransparencyModifier = 0.5
		end
	end
	
	Xray = Modern.Catalogs.Render:AddModule({
		Name = 'XRay',
		Function = function(callback)
			if callback then
				Xray:Clean(workspace.DescendantAdded:Connect(modifyPart))
				for _, v in workspace:GetDescendants() do
					modifyPart(v)
				end
			else
				for i in modified do
					i.LocalTransparencyModifier = 0
				end
				table.clear(modified)
			end
		end
	})
	Transparency = Xray:AddSlider({
		Name = 'Transparency',
		Min = 0,
		Max = 1,
		Function = function(val)
			for i in modified do
				i.LocalTransparencyModifier = 1 - val
			end
		end,
		Decimal = 100
	})
end)

local mouseClicked
run(function()
	local SilentAim
	local Target
	local Mode
	local Method
	local MethodRay = {}
	local IgnoredScripts
	local Range
	local HitChance
	local HeadshotChance
	local AutoFire
	local AutoFireShootDelay
	local AutoFireMode
	local AutoFirePosition
	local Wallbang
	local CircleColor
	local CircleTransparency
	local CircleFilled
	local CircleObject
	local Projectile
	local ProjectileSpeed
	local ProjectileGravity
	local RaycastWhitelist = RaycastParams.new()
	RaycastWhitelist.FilterType = Enum.RaycastFilterType.Include
	local ProjectileRaycast = RaycastParams.new()
	ProjectileRaycast.RespectCanCollide = true
	local fireoffset, rand, delayCheck = CFrame.identity, Random.new(), tick()
	local oldnamecall, oldray

	local function getTarget(origin, obj)
		if rand.NextNumber(rand, 0, 100) > (AutoFire.Enabled and 100 or HitChance.Value) then return end
		local targetPart = (rand.NextNumber(rand, 0, 100) < (AutoFire.Enabled and 100 or HeadshotChance.Value)) and 'Head' or 'RootPart'
		local ent = entitylib['Entity'..Mode.Value]({
			Range = Range.Value,
			Wallcheck = true,
			Part = targetPart,
			Origin = origin,
			Players = true,
			NPCs = true
		})

		if ent then
			Targetinfo.Targets[ent] = tick() + 1
			if Projectile.Enabled then
				ProjectileRaycast.FilterDescendantsInstances = {gameCamera, ent.Character}
				ProjectileRaycast.CollisionGroup = ent[targetPart].CollisionGroup
			end
		end

		return ent, ent and ent[targetPart], origin
	end

	local Hooks = {
		FindPartOnRayWithIgnoreList = function(args)
			local ent, targetPart, origin = getTarget(args[1].Origin, {args[2]})
			if not ent then return end
			if Wallbang.Enabled then
				return {targetPart, targetPart.Position, targetPart.GetClosestPointOnSurface(targetPart, origin), targetPart.Material}
			end
			args[1] = Ray.new(origin, CFrame.lookAt(origin, targetPart.Position).LookVector * args[1].Direction.Magnitude)
		end,
		Raycast = function(args)
			if MethodRay.Value ~= 'All' and args[3] and args[3].FilterType ~= Enum.RaycastFilterType[MethodRay.Value] then return end
			local ent, targetPart, origin = getTarget(args[1])
			if not ent then return end
			args[2] = CFrame.lookAt(origin, targetPart.Position).LookVector * args[2].Magnitude
			if Wallbang.Enabled then
				RaycastWhitelist.FilterDescendantsInstances = {targetPart}
				args[3] = RaycastWhitelist
			end
		end,
		ScreenPointToRay = function(args)
			local ent, targetPart, origin = getTarget(gameCamera.CFrame.Position)
			if not ent then return end
			local direction = CFrame.lookAt(origin, targetPart.Position)
			if Projectile.Enabled then
				local calc = prediction.SolveTrajectory(origin, ProjectileSpeed.Value, ProjectileGravity.Value, targetPart.Position, targetPart.Velocity, workspace.Gravity, ent.HipHeight, nil, ProjectileRaycast)
				if not calc then return end
				direction = CFrame.lookAt(origin, calc)
			end
			return {Ray.new(origin + (args[3] and direction.LookVector * args[3] or Vector3.zero), direction.LookVector)}
		end,
		Ray = function(args)
			local ent, targetPart, origin = getTarget(args[1])
			if not ent then return end
			if Projectile.Enabled then
				local calc = prediction.SolveTrajectory(origin, ProjectileSpeed.Value, ProjectileGravity.Value, targetPart.Position, targetPart.Velocity, workspace.Gravity, ent.HipHeight, nil, ProjectileRaycast)
				if not calc then return end
				args[2] = CFrame.lookAt(origin, calc).LookVector * args[2].Magnitude
			else
				args[2] = CFrame.lookAt(origin, targetPart.Position).LookVector * args[2].Magnitude
			end
		end
	}
	Hooks.FindPartOnRayWithWhitelist = Hooks.FindPartOnRayWithIgnoreList
	Hooks.FindPartOnRay = Hooks.FindPartOnRayWithIgnoreList
	Hooks.ViewportPointToRay = Hooks.ScreenPointToRay

	SilentAim = Modern.Catalogs.Combat:AddModule({
		Name = 'Silent Aim',
		Function = function(callback)
			if CircleObject then
				CircleObject.Visible = callback and Mode.Value == 'Mouse'
			end
			if callback then
				if Method.Value == 'Ray' then
					oldray = hookfunction(Ray.new, function(origin, direction)
						if checkcaller() then
							return oldray(origin, direction)
						end

						local calling = getcallingscript()
						if calling then
							local list = {'ControlScript', 'ControlModule'}
							if table.find(list, tostring(calling)) then
								return oldray(origin, direction)
							end
						end

						local args = {origin, direction}
						Hooks.Ray(args)
						return oldray(unpack(args))
					end)
				else
					print(Method.Value)
					oldnamecall = hookmetamethod(game, '__namecall', function(...)
						if getnamecallmethod() ~= Method.Value then
							return oldnamecall(...)
						end
						if checkcaller() then
							return oldnamecall(...)
						end

						local calling = getcallingscript()
						if calling then
							local list = {'ControlScript', 'ControlModule'}
							if table.find(list, tostring(calling)) then
								return oldnamecall(...)
							end
						end

						local self, args = ..., {select(2, ...)}
						local res = Hooks[Method.Value](args)
						if res then
							return unpack(res)
						end
						return oldnamecall(self, unpack(args))
					end)
				end

				repeat
					if CircleObject then
						CircleObject.Position = UserInputService:GetMouseLocation()
					end
					if AutoFire.Enabled then
						local origin = AutoFireMode.Value == 'Camera' and gameCamera.CFrame or entitylib.isAlive and entitylib.character.RootPart.CFrame or CFrame.identity
						local ent = entitylib['Entity'..Mode.Value]({
							Range = Range.Value,
							Wallcheck = true,
							Part = 'Head',
							Origin = (origin * fireoffset).Position,
							Players = true,
							NPCs = false
						})

						if mouse1click and (isrbxactive or iswindowactive)() then
							if ent and canClick() then
								if delayCheck < tick() then
									if mouseClicked then
										mouse1release()
										delayCheck = tick() + AutoFireShootDelay.Value
									else
										mouse1press()
									end
									mouseClicked = not mouseClicked
								end
							else
								if mouseClicked then
									mouse1release()
								end
								mouseClicked = false
							end
						end
					end
					task.wait()
				until not SilentAim.Enabled
			else
				if oldnamecall then
					hookmetamethod(game, '__namecall', oldnamecall)
				end
				if oldray then
					hookfunction(Ray.new, oldray)
				end
				oldnamecall, oldray = nil, nil
			end
		end,
		ExtraText = function()
			return Method.Value:gsub('FindPartOnRay', '')
		end
	})
	Mode = SilentAim:AddDropdown({
		Name = 'Mode',
		List = {'Mouse', 'Position'},
		Function = function(val)
			if CircleObject then
				CircleObject.Visible = SilentAim.Enabled and val == 'Mouse'
			end
		end
	})
	Method = SilentAim:AddDropdown({
		Name = 'Method',
		List = {'FindPartOnRay', 'FindPartOnRayWithIgnoreList', 'FindPartOnRayWithWhitelist', 'ScreenPointToRay', 'ViewportPointToRay', 'Raycast', 'Ray'},
		Function = function(val)
			if SilentAim.Enabled then
				SilentAim:Toggle()
				SilentAim:Toggle()
			end
			MethodRay.Frame.Visible = val == 'Raycast'
		end
	})
	MethodRay = SilentAim:AddDropdown({
		Name = 'Raycast Type',
		List = {'All', 'Exclude', 'Include'},
		Darker = true,
		Visible = false
	})
	Range = SilentAim:AddSlider({
		Name = 'Range',
		Min = 1,
		Max = 1000,
		Default = 150,
		Function = function(val)
			if CircleObject then
				CircleObject.Radius = val
			end
		end,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	HitChance = SilentAim:AddSlider({
		Name = 'Hit Chance',
		Min = 0,
		Max = 100,
		Default = 85,
		Suffix = '%'
	})
	HeadshotChance = SilentAim:AddSlider({
		Name = 'Headshot Chance',
		Min = 0,
		Max = 100,
		Default = 65,
		Suffix = '%'
	})
	AutoFire = SilentAim:AddToggle({
		Name = 'AutoFire',
		Function = function(callback)
			AutoFireShootDelay.Frame.Visible = callback
			AutoFireMode.Frame.Visible = callback
		end
	})
	AutoFireShootDelay = SilentAim:AddSlider({
		Name = 'Delay',
		Min = 0,
		Max = 1,
		Decimal = 100,
		Visible = false,
		Darker = true,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	AutoFireMode = SilentAim:AddDropdown({
		Name = 'Origin',
		List = {'RootPart', 'Camera'},
		Visible = false,
		Darker = true
	})
	Wallbang = SilentAim:AddToggle({Name = 'Wallbang'})
	SilentAim:AddToggle({
		Name = 'Range Circle',
		Function = function(callback)
			if callback then
				CircleObject = Drawing.new('Circle')
				CircleObject.Color = Modern.Libraries.uipallet.FinalColor
				CircleObject.Position = Modern.MainScreenGui.AbsoluteSize / 2
				CircleObject.Radius = Range.Value
				CircleObject.NumSides = 100
				CircleObject.Transparency = 1 - CircleTransparency.Value
				CircleObject.Visible = SilentAim.Enabled and Mode.Value == 'Mouse'
			else
				pcall(function()
					CircleObject.Visible = false
					CircleObject:Remove()
				end)
			end
			CircleTransparency.Frame.Visible = callback
		end
	})
	CircleTransparency = SilentAim:AddSlider({
		Name = 'Transparency',
		Min = 0,
		Max = 1,
		Decimal = 10,
		Default = 0.5,
		Function = function(val)
			if CircleObject then
				CircleObject.Transparency = 1 - val
			end
		end,
		Darker = true,
		Visible = false
	})
	Projectile = SilentAim:AddToggle({
		Name = 'Projectile',
		Function = function(callback)
			ProjectileSpeed.Frame.Visible = callback
			ProjectileGravity.Frame.Visible = callback
		end
	})
	ProjectileSpeed = SilentAim:AddSlider({
		Name = 'Speed',
		Min = 1,
		Max = 1000,
		Default = 1000,
		Darker = true,
		Visible = false,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	ProjectileGravity = SilentAim:AddSlider({
		Name = 'Gravity',
		Min = 0,
		Max = 192.6,
		Default = 192.6,
		Darker = true,
		Visible = false
	})
end)
	
run(function()
	local TriggerBot
	local Targets
	local ShootDelay
	local Distance
	local rayCheck, delayCheck = RaycastParams.new(), tick()
	
	local function getTriggerBotTarget()
		rayCheck.FilterDescendantsInstances = {lplr.Character, gameCamera}
	
		local ray = workspace:Raycast(gameCamera.CFrame.Position, gameCamera.CFrame.LookVector * Distance.Value, rayCheck)
		if ray and ray.Instance then
			for _, v in entitylib.List do
				if v.Targetable and v.Character and v.Player then
					if ray.Instance:IsDescendantOf(v.Character) then
						return entitylib.isVulnerable(v) and v
					end
				end
			end
		end
	end
	
	TriggerBot = Modern.Catalogs.Combat:AddModule({
		Name = 'Trigger Bot',
		Function = function(callback)
			if callback then
				repeat
					if mouse1click and (isrbxactive or iswindowactive)() then
						if getTriggerBotTarget() and canClick() then
							if delayCheck < tick() then
								if mouseClicked then
									mouse1release()
									delayCheck = tick() + ShootDelay.Value
								else
									mouse1press()
								end
								mouseClicked = not mouseClicked
							end
						else
							if mouseClicked then
								mouse1release()
							end
							mouseClicked = false
						end
					end
					task.wait()
				until not TriggerBot.Enabled
			else
				if mouse1click and (isrbxactive or iswindowactive)() then
					if mouseClicked then
						mouse1release()
					end
				end
				mouseClicked = false
			end
		end
	})
	ShootDelay = TriggerBot:AddSlider({
		Name = 'Delay',
		Min = 0,
		Max = 1,
		Decimal = 100,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	Distance = TriggerBot:AddSlider({
		Name = 'Distance',
		Min = 0,
		Max = 1000,
		Default = 1000,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
end)

run(function()
	local FOV
	local Value
	local oldfov
	
	FOV = Modern.Catalogs.Render:AddModule({
		Name = 'FOV',
		Function = function(callback)
			if callback then
				oldfov = gameCamera.FieldOfView
				repeat
					gameCamera.FieldOfView = Value.Value
					task.wait()
				until not FOV.Enabled
			else
				gameCamera.FieldOfView = oldfov
			end
		end
	})
	Value = FOV:AddSlider({
		Name = 'FOV',
		Min = 30,
		Max = 120
	})
end)

run(function()
	local TargetStrafe
	local Targets
	local SearchRange
	local StrafeRange
	local YFactor
	local rayCheck = RaycastParams.new()
	rayCheck.RespectCanCollide = true
	local module, old
	
	TargetStrafe = Modern.Catalogs.Movement:AddModule({
		Name = 'Target Strafe',
		Function = function(callback)
			if callback then
				if not module then
					local suc = pcall(function() module = require(lplr.PlayerScripts.PlayerModule).controls end)
					if not suc then
						module = {}
					end
				end
				
				old = module.moveFunction
				local flymod, ang, oldent = Modern.Modules.Fly or {Enabled = false}
				module.moveFunction = function(self, vec, face)
					local ent = not UserInputService:IsKeyDown(Enum.KeyCode.S) and entitylib.EntityPosition({
						Range = SearchRange.Value,
						Wallcheck = false,
						Part = 'RootPart',
						Players = true,
						NPCs = false
					})
	
					if ent then
						local root, targetPos = entitylib.character.RootPart, ent.RootPart.Position
						rayCheck.FilterDescendantsInstances = {lplr.Character, gameCamera, ent.Character}
						rayCheck.CollisionGroup = root.CollisionGroup
	
						if flymod.Enabled or workspace:Raycast(targetPos, Vector3.new(0, -70, 0), rayCheck) then
							local factor, localPosition = 0, root.Position
							if ent ~= oldent then
								ang = math.deg(select(2, CFrame.lookAt(targetPos, localPosition):ToEulerAnglesYXZ()))
							end
							local yFactor = math.abs(localPosition.Y - targetPos.Y) * (YFactor.Value / 100)
							local entityPos = Vector3.new(targetPos.X, localPosition.Y, targetPos.Z)
							local newPos = entityPos + (CFrame.Angles(0, math.rad(ang), 0).LookVector * (StrafeRange.Value - yFactor))
							local startRay, endRay = entityPos, newPos
	
							if not wallcheck and workspace:Raycast(targetPos, (localPosition - targetPos), rayCheck) then
								startRay, endRay = entityPos + (CFrame.Angles(0, math.rad(ang), 0).LookVector * (entityPos - localPosition).Magnitude), entityPos
							end
	
							local ray = workspace:Blockcast(CFrame.new(startRay), Vector3.new(1, entitylib.character.HipHeight + (root.Size.Y / 2), 1), (endRay - startRay), rayCheck)
							if (localPosition - newPos).Magnitude < 3 or ray then
								factor = (8 - math.min((localPosition - newPos).Magnitude, 3))
								if ray then
									newPos = ray.Position + (ray.Normal * 1.5)
									factor = (localPosition - newPos).Magnitude > 3 and 0 or factor
								end
							end
	
							if not flymod.Enabled and not workspace:Raycast(newPos, Vector3.new(0, -70, 0), rayCheck) then
								newPos = entityPos
								factor = 40
							end
	
							ang += factor % 360
							vec = ((newPos - localPosition) * Vector3.new(1, 0, 1)).Unit
							vec = vec == vec and vec or Vector3.zero
							TargetStrafeVector = vec
						else
							ent = nil
						end
					end
	
					TargetStrafeVector = ent and vec or nil
					oldent = ent
					return old(self, vec, face)
				end
			else
				if module and old then
					module.moveFunction = old
				end
				TargetStrafeVector = nil
			end
		end
	})

	SearchRange = TargetStrafe:AddSlider({
		Name = 'Search Range',
		Min = 1,
		Max = 30,
		Default = 24,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	StrafeRange = TargetStrafe:AddSlider({
		Name = 'Strafe Range',
		Min = 1,
		Max = 30,
		Default = 18,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
	YFactor = TargetStrafe:AddSlider({
		Name = 'Y Factor',
		Min = 0,
		Max = 100,
		Default = 100,
		Suffix = '%'
	})
end)

run(function()
	local Shader
	local cacheLighting = {}

	local BlurEffect = Instance.new('BlurEffect')
	BlurEffect.Size = 6

	local ColorCorrectionEffect = Instance.new('ColorCorrectionEffect')
	ColorCorrectionEffect.Saturation = -0.4

	local SnowEffect = Instance.new("Part")
	SnowEffect.Size = vector.create(200, 1, 200)
	SnowEffect.Transparency = 1
	SnowEffect.Anchored = true


	local SnowParticle = Instance.new("ParticleEmitter")
	SnowParticle.EmissionDirection = "Bottom"
	SnowParticle.Rate = 20000
	SnowParticle.Lifetime = NumberRange.new(3.5, 3.5)
	SnowParticle.Speed = NumberRange.new(50, 50)
	SnowParticle.Texture = "rbxassetid://92367298778210"
	SnowParticle.Size = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.3),
		NumberSequenceKeypoint.new(1, 0.4)
	})
	SnowParticle.SpreadAngle = Vector2.new(70, 70)
	SnowParticle.Parent = SnowEffect
	SnowParticle:Clone().Parent = SnowEffect
	SnowParticle:Clone().Parent = SnowEffect
	local Time = {}
	Shader = Modern.Catalogs.Other:AddModule({
		Name = 'Shader',
		Function = function(callback)
			if callback then
				cacheLighting = {
					Lighting.Ambient;
					Lighting.Brightness;
					Lighting.ColorShift_Bottom;
					Lighting.ColorShift_Top;
					Lighting.EnvironmentDiffuseScale;
					Lighting.EnvironmentSpecularScale;
					Lighting.GlobalShadows;
					Lighting.OutdoorAmbient;
					Lighting.ShadowSoftness;
					Lighting.TimeOfDay;
				};
				Lighting.Ambient = Color3.fromRGB(94, 99, 188)
				Lighting.Brightness = 4
				Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
				Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
				Lighting.EnvironmentDiffuseScale = 1
				Lighting.EnvironmentSpecularScale = 1
				Lighting.GlobalShadows = true
				Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
				Lighting.ShadowSoftness = 3
				Lighting.TimeOfDay = (Time.Value or '00')..':30:00'
				SnowEffect.Parent = workspace
				Shader:Clean(RunService.RenderStepped:Connect(function()
					if entitylib.isAlive then
						SnowEffect.Position = entitylib.character.RootPart.Position + vector.create(0, 90, 0)
					end
				end))
				BlurEffect.Parent = Lighting
				ColorCorrectionEffect.Parent = Lighting
			else
				Lighting.Ambient = cacheLighting[1]
				Lighting.Brightness = cacheLighting[2]
				Lighting.ColorShift_Bottom = cacheLighting[3]
				Lighting.ColorShift_Top = cacheLighting[4]
				Lighting.EnvironmentDiffuseScale = cacheLighting[5]
				Lighting.EnvironmentSpecularScale = cacheLighting[6]
				Lighting.GlobalShadows = cacheLighting[7]
				Lighting.OutdoorAmbient = cacheLighting[8]
				Lighting.ShadowSoftness = cacheLighting[9]
				Lighting.TimeOfDay = cacheLighting[10]
				SnowEffect.Parent = nil
				BlurEffect.Parent = nil
				ColorCorrectionEffect.Parent = nil
			end
		end,
        Default = false
	})
	Time = Shader:AddSlider({
		Name = 'Time',
		Min = 0,
		Max = 24,
		Default = 12,
		Function = function(val)
			if Shader.Enabled then 
				Lighting.TimeOfDay = val..':00:00'
			end
		end
	})
end)

run(function()
    local AirJump
    local Velocity
    AirJump = Modern.Catalogs.Player:AddModule({
        Name = "AirJump",
        Function = function(callback)
            if callback then
				AirJump:Clean(UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if gameProcessed then return end
					if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
						while UserInputService:IsKeyDown(Enum.KeyCode.Space) do
							if entitylib.isAlive and lplr.Character.PrimaryPart then
								local PrimaryPart = lplr.Character.PrimaryPart
								PrimaryPart.Velocity = vector.create(PrimaryPart.Velocity.X, Velocity.Value, PrimaryPart.Velocity.Z)
							end
							wait()
						end
					end
				end))
				if UserInputService.TouchEnabled then
					local Jumping = false
					local JumpButton = lplr.PlayerGui:WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton")
					
					AirJump:Clean(JumpButton.MouseButton1Down:Connect(function()
						Jumping = true
					end))

					AirJump:Clean(JumpButton.MouseButton1Up:Connect(function()
						Jumping = false
					end))

					AirJump:Clean(RunService.RenderStepped:Connect(function()
						if Jumping and entitylib.isAlive and lplr.Character then
							local PrimaryPart = lplr.Character.PrimaryPart
							PrimaryPart.Velocity = vector.create(PrimaryPart.Velocity.X, Velocity.Value, PrimaryPart.Velocity.Z)
						end
					end))
				end
			end
        end
    })
    Velocity = AirJump:AddSlider({
        Name = 'Velocity',
        Min = 50,
        Max = 300,
        Default = 50
    })
end)


run(function()
	local Trails
	local Texture
	local Lifetime
	local Thickness
	local Particle
	local ParticleMain
	
	Trails = Modern.Catalogs.Render:AddModule({
		Name = 'Trails',
		Function = function(callback)
			if callback then
				ParticleMain = Instance.new("Part")
				ParticleMain.Size = vector.create(0, 0, 0)
				ParticleMain.Transparency = 0
				ParticleMain.CanCollide = false
				ParticleMain.Anchored = true
				Particle = Instance.new('ParticleEmitter')
				Particle.EmissionDirection = "Bottom"
				Particle.Rate = 5
				Particle.Lifetime = NumberRange.new(3.5, 3.5)
				Particle.Speed = NumberRange.new(0, 0)
				Particle.Texture = "rbxassetid://84083457957085"
				Particle.Size = NumberSequence.new({
					NumberSequenceKeypoint.new(0, Thickness.Value/5),
					NumberSequenceKeypoint.new(0.02, Thickness.Value),
					NumberSequenceKeypoint.new(1, 0)
				})
				Particle.SpreadAngle = Vector2.new(0, 0)
				Particle.Parent = ParticleMain
	
				Trails:Clean(Particle)
				Trails:Clean(ParticleMain)
				Trails:Clean(RunService.RenderStepped:Connect(function(ent)
					if entitylib.isAlive then
						ParticleMain.Position = entitylib.character.RootPart.Position - vector.create(0, 1, 0)
					end
				end))
				ParticleMain.Parent = workspace
			else
				Particle = nil
				ParticleMain = nil
			end
		end
	})
	Rate = Trails:AddSlider({
		Name = 'Rate',
		Min = 0,
		Max = 10,
		Default = 5,
		Decimal = 10,
		Function = function(val)
			if Particle then
				Particle.Rate = val
			end
		end
	})
	Lifetime = Trails:AddSlider({
		Name = 'Lifetime',
		Min = 1,
		Max = 5,
		Default = 3,
		Decimal = 10,
		Function = function(val)
			if Particle then
				Particle.Lifetime = NumberRange.new(val, val)
			end
		end,
		Suffix = function(val)
			return val == 1 and 'second' or 'seconds'
		end
	})
	Thickness = Trails:AddSlider({
		Name = 'Thickness',
		Min = 0,
		Max = 2,
		Default = 1,
		Decimal = 100,
		Function = function(val)
			if Particle then
				Particle.Size = NumberSequence.new({
					NumberSequenceKeypoint.new(0, val),
					NumberSequenceKeypoint.new(1, 0)
				})
			end
		end,
		Suffix = function(val)
			return val == 1 and 'stud' or 'studs'
		end
	})
end)
