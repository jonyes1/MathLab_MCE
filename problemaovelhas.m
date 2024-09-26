%cruzam se 2 pastores com rebanhos com X e Y ovelhas, respetivamente
% X: podias-me dar-me uma das tuas ovelhas e ficava com o dobre das tuas;
% Y: podias-me dar-me uma tambem e ficavamos com o mesmo numero de ovelhas;


%1. resolver o sistema
%2. 2(x-1)=(y+1)    <=> 2x-y=3
%3. x+1=y-1         <=> x-y=-2

function [X,n]=problemaovelhas(A,b,tol)

     if det(A)==0
         return
     end

     D=diag(diag(A)); %[2,0;0,-1]
     L=tril(-A,-1); %[0,0;-1,0] -A troca para trocar os sinais e -1 para nao apanhar a diagonal
     U=triu(-A,1); %[0,1;0,0]
     M=(D-L)\U;
     N=(D-L)\b;

     rho=max(abs(eig(M))); %raio espetral
     if rho>=1 %metodo divergente
         return
     end

     X_anterior=zeros(size(A,1),1); %vetor da coluna
     %size(A,1) É o tamanho da linha de A
     %size(A,2) É o tamanho da coluna de A
     n=0;
     erro=1000;
     while erro>=tol
         X=MX_anterior+N;
         %erro=norm(X-X_anterior,2)/norm(X,2); % erro da 24;
         %erro=norm(AX-b,2);
         erro=norm(X-X_anterior,2); %erro 27
         n=n+1;
         X_anterior=X; %atualizar o ponto de partida 
     end
    fprintf('n=%d, erro=%d',n,erro)
end

%problemaovelhas([2,-1;1,-1],[3;-2],0.000000123)