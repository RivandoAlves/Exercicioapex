/* Decimal rPes = 1000;
Decimal rFam = 2500;
Decimal gastoAlim = 600;
Decimal gastoDespe = 200;
System.debug('Porcentagem de gastos em relação a renda total: ' + percentual(rPes+rFam,gastoAlim+gastoDespe) + '%');

metodo: perDes;
@param: Decimal ganho, Decimal gasto;
return: Decimal;
resumo: retorna proporção de v2 baseado em v1;
*/
Decimal percentual(Decimal v1, Decimal v2){
    return (100*v2/v1).setScale(2);
}

List<String> alunos = New List<String>();
alunos.add ('Joao');
alunos.add ('Jose');
alunos.add ('Mario');
alunos.add ('Ana');
alunos.add ('Carlos');
alunos.add ('Leandro');
List<Decimal> rPesssoal = New List<Decimal>();
rPesssoal.add (1000);
rPesssoal.add (1500);
rPesssoal.add (500);
rPesssoal.add (900);
rPesssoal.add (2000);
rPesssoal.add (1300);
List<Decimal> rFamiliar = New List<Decimal>();
rFamiliar.add (3000);
rFamiliar.add (2500);
rFamiliar.add (2000);
rFamiliar.add (1000);
rFamiliar.add (500);
rFamiliar.add (1500);
List<Decimal> gastoAlimentacao = New List<Decimal>();
gastoAlimentacao.add (1000);
gastoAlimentacao.add (300);
gastoAlimentacao.add (100);
gastoAlimentacao.add (600);
gastoAlimentacao.add (500);
gastoAlimentacao.add (200);
List<Decimal> gastoDespesas = New List<Decimal>();
gastoDespesas.add (500);
gastoDespesas.add (300);
gastoDespesas.add (200);
gastoDespesas.add (100);
gastoDespesas.add (50);
gastoDespesas.add (350);


void exibirDados(){
    Integer qntAlunosAcimaDuz = 0;
    Integer qntAcimaRenda = 0;
    for (Integer i=0; i< alunos.size(); i++){
        if (gastoDespesas.get(i) > 200){
            qntAlunosAcimaDuz++;
        }
        if(rPesssoal.get(i)>rFamiliar.get(i)){
            qntAcimaRenda++;
        }
    }
    System.debug('Quantidade acima de 200: '+ qntAlunosAcimaDuz);
    System.debug('Percentual de alunos com gasto em demais despesas acima de R$ 200: ' + percentual(gastoDespesas.size(),qntAlunosAcimaDuz)+ '%');
    System.debug('Quantidade de alunos acima da renda familiar: ' + qntAcimaRenda );
    for(Integer i = 0; i < alunos.size(); i++){
        System.debug('Aluno: ' + alunos.get(i));
        System.debug('Porcentagem de gastos em relação a renda total: ' + 
                     percentual(rPesssoal.get(i)+rFamiliar.get(i),gastoAlimentacao.get(i)+gastoDespesas.get(i)) + '%');
        System.debug('----------------------------------');
	}
}
exibirDados();
