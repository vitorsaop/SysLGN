unit utlConstantes;

interface

  const
    ctCadGeral       = 'ID_CADGERAL';
    ctClasse         = 'ID_CLASSE';
    ctFuncoes        = 'ID_FUNCAO';
    ctAtividade      = 'ID_ATIVIDADE';
    ctAgenciaFin     = 'ID_AGENCIAFIN';
    ctAlunos         = 'ID_ALUNO';
    ctOficios        = 'ID_LGN';
    ctCadVeiculos    = 'ID_VEICULO';
    ctCadTipoViagem  = 'ID_TIPOVIAGEM';
    ctCadTipoVeiculo = 'ID_TIPOVEICULO';
    ctImplementos    = 'ID_IMPLEMENTO';
    ctCombustivel    = 'ID_COMBUSTIVEL';


    //pesquisa de cadastros..
    SQLCadGeral = 'SELECT '+
              'AI, ID_CADGERAL, NOME, CPF, RG, ID_USP, '+
              'FLAGDOCENTE, FLAGFUNCIONARIO, FLAGOUTROS, FLAGALUNO, STATUS '+
              'FROM '+
              'CAD_GERAL '+
              'WHERE '+
              '(NOME LIKE :pBUSCAR) ';

    //pesquisa de atividades...
    SQLCadAtiv  = 'SELECT '+
                  'AI, ID_ATIVIDADE, NOME, TIPO '+
                  'FROM '+
                  'CAD_ATIVIDADES '+
                  'WHERE '+
                  '(NOME LIKE :pBUSCAR) ';

    //pesquisa de veiculos...
    SQLCadVeiculos  = 'SELECT '+
                     'AI, ID_VEICULO, NOME '+
                     'FROM '+
                     'CAD_VEICULOS '+
                     'WHERE '+
                     '(NOME LIKE :pBUSCAR) ';

    //pesquisa de agencia fin..
    SQLCadAgencia  = 'SELECT '+
                     'AI, ID_AGENCIAFIN, NOME '+
                     'FROM '+
                     'CAD_AGENCIAFINANCIADORA '+
                     'WHERE '+
                     '(NOME LIKE :pBUSCAR) ';

    //pesquisa de ausencias
    SQLCadAusencias = 'SELECT '+
                      'AI, ID_CADGERAL, TIPO, DATAINI, DATAFIM, OBS '+
                      'FROM '+
                      'FUNCIONARIOS_AUSENCIAS ';

    //pesuisar tipo de viagens....
    SQLCadTipoViagem = 'SELECT '+
                       'AI, ID_TIPOVIAGEM, NOME, CUSTOKM '+
                       'FROM '+
                       'CAD_TIPOVIAGEM '+
                        'WHERE '+
                        '(NOME LIKE :pBUSCAR)';

    //pesquisar tipo de veiculos
    SQLCadTipoVeiculos = 'SELECT '+
                        'AI, ID_TIPOVEICULO, TIPO, CUSTO '+
                        'FROM '+
                        'CAD_TIPOVEICULOS '+
                        'WHERE '+
                        '(TIPO LIKE :pBUSCAR)';

    //pesquisa de implementos..
    SQLCadImplementos  = 'SELECT '+
                         'AI, ID_IMPLEMENTO, IMPLEMENTO, CUSTO '+
                         'FROM '+
                         'CAD_IMPLEMENTOS '+
                         'WHERE '+
                         '(IMPLEMENTO LIKE :pBUSCAR) ';

    //pesquisa de combustivel...
    SQLCadCombustivel  = 'SELECT '+
                         'AI, ID_COMBUSTIVEL, COMBUSTIVEL '+
                         'FROM '+
                         'CAD_COMBUSTIVEL '+
                         'WHERE '+
                         '(COMBUSTIVEL LIKE :pBUSCAR) ';


    //Relatorio de Despesas..
    SQLVeiculoDespesas = 'SELECT '+
	                      'A.AI as ID, ID_DOCENTE, C.NOME, NOME_VEICULO, DATAAGENDAINI, DATAAGENDAFIM, '+
                        'KMSAIDA, KMRETORNO, KMSALDO, CUSTOTOTALKM, CUSTOTOTALCOMBUSTIVEL, '+
                        'CUSTOTOTALGERAL '+
                        'FROM '+
                      	'AGENDA A '+
                        'INNER JOIN '+
                      	'CAD_GERAL C '+
                        'ON '+
                        ' (ID_DOCENTE = C.AI) ';

    SQLTratorDespesas  = 'SELECT '+
                         'ATR.AI as ID, ID_DOCENTE, C.NOME, NOME_VEICULO, DATAAGENDAINI, DATAAGENDAFIM, '+
                         'HORASAIDA, HORACHEGADA, HORATOTAL, 0, CUSTOTOTALCOMBUSTIVEL, '+
                         'CUSTOTOTALCOMBUSTIVEL as CUSTOTOTALGERAL '+
                         'FROM '+
                         'AGENDA_TRATORES ATR '+
                         'INNER JOIN '+
                         'CAD_GERAL C '+
                         'ON '+
                         '(ID_DOCENTE = C.AI) ';

    SQLCombustivel     = 'SELECT '+
	                       'CA.AI as ID, ID_DOCENTE, C.NOME, "***COMBUSTIVEL AVULSO***", DATAUSO AS DATAAGENDAINI, DATAUSO AS DATAAGENDAFIM, '+
                         '0, 0, 0, 0, CUSTOTOTALGERAL, CUSTOTOTALGERAL '+
                         'FROM '+
                         'COMBUSTIVEL_AVULSO CA '+
                         'INNER JOIN '+
                         'CAD_GERAL C '+
                         'ON '+
	                       '(ID_DOCENTE = C.AI) ';
    //Relatorio de Despesas..



implementation

end.
