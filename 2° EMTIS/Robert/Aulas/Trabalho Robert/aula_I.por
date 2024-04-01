programa
{

	inclua biblioteca Calendario --> c
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tp 
	inclua biblioteca Arquivos --> a
	inclua biblioteca Util --> u
	//					Cadastro do Aluno					//
	inteiro cadastro = 0, opcao, idade_Aluno, ano_Aluno, turno_Aluno, turma_Aluno, nde_Aluno, opcao_2, arquivo_local, c, dado_3, contador = 0, tentativas, escolha_2
	cadeia ENTER, nome_Aluno[15], sobrenome_Aluno[15], datanas_Aluno[15], email_Aluno[15], address_Aluno[15], ori_data_Aluno, pai_Aluno[15], mae_Aluno[15], turno_Alunov[15], nde_Alunov[15], turma_Alunov[15], verificador
	//					Cálculos da média					//

	
	funcao inicio()
	{
		enquanto (verdadeiro){
			opcao = 0
			verificador = ""
			se (verificador == "" e cadastro == 0){
				limpa()
				escreva("1.Cadastrar aluno;")
				escreva("\n2.Sair do programa.")
				escreva("\nDigite sua opção: ")
				leia(opcao)
				enquanto (opcao > 2 ou opcao < 1){
					escreva("Digite novamente: ")
					leia(opcao)
				}
				}
				se (opcao == 1){
					limpa()
						escreva("Digite o primeiro nome do aluno: ")
						leia(nome_Aluno[cadastro])
						escreva("Digite o sobrenome do aluno: ")
						leia(sobrenome_Aluno[cadastro])
						escreva("Digite a data de nascimento  do aluno(DD/MM/AAAA): ")
						leia(datanas_Aluno[cadastro])
						escreva("Digite o e-mail governamental(Se não houver pressione enter): ")
						leia(email_Aluno[cadastro])
						se (email_Aluno[cadastro] == ""){
							email_Aluno[cadastro] = "Não registrado"	 
						}
						escreva("Digite o primeiro nome do pai do aluno(Se não houver pressione enter): ")
						leia(pai_Aluno[cadastro])
						se (pai_Aluno[cadastro] == ""){
							pai_Aluno[cadastro] = "Não registrado"
						}
						escreva("Digite o primeiro nome da mãe do aluno(Se não houver pressione enter): ")
						leia(mae_Aluno[cadastro])
						se (mae_Aluno[cadastro] == ""){
							mae_Aluno[cadastro] = "Não registrado"
						}
						limpa()
						escreva("Digite o Turno do aluno")
						escreva("\nDesabilitado - 1.Manhã\nDesabilitado - 2.Tarde\nDesabilitado - 3.Noite\n4.Integral\n")
						escreva("Opção: ")
						leia(turno_Aluno)
						enquanto (turno_Aluno > 4 ou turno_Aluno < 1){
							escreva("Digite novamente: ")
							leia(turno_Aluno)
						}
						se (turno_Aluno == 1){
							turno_Alunov[cadastro] = "Manhã"
						}
						se (turno_Aluno == 2){
							turno_Alunov[cadastro] = "Tarde"
						}
						se (turno_Aluno == 3){
							turno_Alunov[cadastro] = "Noite"
						}
						se (turno_Aluno == 4){
							turno_Alunov[cadastro] = "Integral"
						}
						limpa()
						se (turno_Aluno == 4){
						escreva("Digite o Nível de Ensino do aluno")
						escreva("\nDesabilitado - 1.1°Ano Ensino médio\n2.2°Ano Ensino médio\nDesabilitado - 3.3°Ano Ensino médio\n")
						escreva("Opção: ")
						leia(nde_Aluno)
						enquanto (nde_Aluno > 3 ou nde_Aluno < 1){
							escreva("Digite novamente: ")
							leia(nde_Aluno)
						}
						se (nde_Aluno == 1){
							nde_Alunov[cadastro] = "1°Ensino médio"
						}
						se (nde_Aluno == 2){
							nde_Alunov[cadastro] = "2°Ensino médio"
							limpa()
							escreva("Digite a Turma do aluno")
							escreva("\nDesabilitado - 1.Regular(EMTIR)\n2.Sistemas(EMTIS)\nDesabilitado - 3.Logística(EMTIL)\n")
							escreva("Opção: ")
							leia(turma_Aluno)
							enquanto (turma_Aluno > 3 ou turma_Aluno < 1){
								escreva("Digite novamente: ")
								leia(turma_Aluno)
							}
							se (turma_Aluno == 1){
								turma_Alunov[cadastro] = "Regular"
							}
							se (turma_Aluno == 2){
								turma_Alunov[cadastro] = "Sistemas"
							}
							se (turma_Aluno == 3){
								turma_Alunov[cadastro] = "Logística"
							}
						}
						se (nde_Aluno == 3){
							nde_Alunov[cadastro] = "3°Ensino médio"
						}
					limpa()
					escreva("Digite o Endereço do aluno(Se não houver pressione enter): ")
					leia(address_Aluno[cadastro])
					se (address_Aluno[cadastro] == ""){
							address_Aluno[cadastro] = "Não registrado"
						}
					limpa()
					escreva("Aluno registrado com sucesso!")
					u.aguarde(2000)
					verificador = nome_Aluno[0]
					cadastro = ++cadastro
					}
				}
				senao se (opcao == 2){
					limpa()
					escreva("Obrigado por usar nosso programa, volte sempre!")
					cadastro = cadastro + 1
					retorne
				}
			senao{
				limpa()
				escreva("1.Cadastrar aluno;")
				escreva("\n2.Alterar dado;")
				escreva("\n3.Mostrar aluno;")
				escreva("\n4.Excluir aluno;")
				escreva("\n5.Sair do programa.")
				escreva("\nDigite sua opção: ")
				leia(opcao)
				enquanto (opcao > 5 ou opcao < 1){
					escreva("Digite novamente: ")
					leia(opcao) 
				}
				se (opcao == 1){
					limpa()
						escreva("Digite o primeiro nome do aluno: ")
						leia(nome_Aluno[cadastro])
						escreva("Digite o sobrenome do aluno: ")
						leia(sobrenome_Aluno[cadastro])
						escreva("Digite a data de nascimento  do aluno(DD/MM/AAAA): ")
						leia(datanas_Aluno[cadastro])
						escreva("Digite o e-mail governamental(Se não houver pressione enter): ")
						leia(email_Aluno[cadastro])
						se (email_Aluno[cadastro] == ""){
							email_Aluno[cadastro] = "Não registrado"	 
						}
						escreva("Digite o primeiro nome do pai do aluno(Se não houver pressione enter): ")
						leia(pai_Aluno[cadastro])
						se (pai_Aluno[cadastro] == ""){
							pai_Aluno[cadastro] = "Não registrado"
						}
						escreva("Digite o primeiro nome da mãe do aluno(Se não houver pressione enter): ")
						leia(mae_Aluno[cadastro])
						se (mae_Aluno[cadastro] == ""){
							mae_Aluno[cadastro] = "Não registrado"
						}
						limpa()
						escreva("Digite o Turno do aluno")
						escreva("\nDesabilitado - 1.Manhã\nDesabilitado - 2.Tarde\nDesabilitado - 3.Noite\n4.Integral\n")
						escreva("Opção: ")
						leia(turno_Aluno)
						enquanto (turno_Aluno > 4 ou turno_Aluno < 1){
							escreva("Digite novamente: ")
							leia(turno_Aluno)
						}
						se (turno_Aluno == 1){
							turno_Alunov[cadastro] = "Manhã"
						}
						se (turno_Aluno == 2){
							turno_Alunov[cadastro] = "Tarde"
						}
						se (turno_Aluno == 3){
							turno_Alunov[cadastro] = "Noite"
						}
						se (turno_Aluno == 4){
							turno_Alunov[cadastro] = "Integral"
						}
						limpa()
						se (turno_Aluno == 4){
						escreva("Digite o Nível de Ensino do aluno")
						escreva("\nDesabilitado - 1.1°Ano Ensino médio\n2.2°Ano Ensino médio\nDesabilitado - 3.3°Ano Ensino médio\n")
						escreva("Opção: ")
						leia(nde_Aluno)
						enquanto (nde_Aluno > 3 ou nde_Aluno < 1){
							escreva("Digite novamente: ")
							leia(nde_Aluno)
						}
						se (nde_Aluno == 1){
							nde_Alunov[cadastro] = "1°Ensino médio"
						}
						se (nde_Aluno == 2){
							nde_Alunov[cadastro] = "2°Ensino médio"
							limpa()
							escreva("Digite a Turma do aluno")
							escreva("\nDesabilitado - 1.Regular(EMTIR)\n2.Sistemas(EMTIS)\nDesabilitado - 3.Logística(EMTIL)\n")
							escreva("Opção: ")
							leia(turma_Aluno)
							enquanto (turma_Aluno > 3 ou turma_Aluno < 1){
								escreva("Digite novamente: ")
								leia(turma_Aluno)
							}
							se (turma_Aluno == 1){
								turma_Alunov[cadastro] = "Regular"
							}
							se (turma_Aluno == 2){
								turma_Alunov[cadastro] = "Sistemas"
							}
							se (turma_Aluno == 3){
								turma_Alunov[cadastro] = "Logística"
							}
						}
						se (nde_Aluno == 3){
							nde_Alunov[cadastro] = "3°Ensino médio"
						}
					limpa()
					escreva("Digite o Endereço do aluno(Se não houver pressione enter): ")
					leia(address_Aluno[cadastro])
					se (address_Aluno[cadastro] == ""){
							address_Aluno[cadastro] = "Não registrado"
						}
					limpa()
					escreva("Aluno registrado com sucesso!")
					u.aguarde(2000)
					verificador = nome_Aluno[0]
					cadastro = ++cadastro
					}
				}
				se (opcao == 2){
					limpa()
					para(inteiro i=0; i < cadastro; i++){
						escreva(i+1,".",nome_Aluno[i]," ", sobrenome_Aluno[i],"\n")
					}
					escreva("Digite sua opção(para voltar digite 0): ")
					leia(opcao_2)
					se (opcao_2 == 0){
						
					}
					senao se (opcao_2 >= 1){
						limpa()
						opcao_2 = opcao_2 - 1 
						escreva("------------------Opcões do aluno------------------")
						escreva("\n1.Nome completo: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
						escreva("\n2.Data de nascimento: ", datanas_Aluno[opcao_2])
						escreva("\n3.E-mail governamental: ", email_Aluno[opcao_2])
						escreva("\n4.Responsáveis: ", pai_Aluno[opcao_2] ," e ", mae_Aluno[opcao_2] ,"")
						escreva("\n5.Turno: ", turno_Alunov[opcao_2])
						escreva("\n6.Nível de Ensino: ", nde_Alunov[opcao_2])
						escreva("\n7.Turma: ", turma_Alunov[opcao_2])
						escreva("\n8.Endereço: ", address_Aluno[opcao_2])
						escreva("\n--------------------------------------------------")
						escreva("\nQual dado deseja alterar: ")
						leia(dado_3) 
						enquanto (dado_3 > 8 ou dado_3 < 1){
							escreva("Digite novamente a opção: ")
							leia (dado_3)
							contador = contador + 1
							se (contador == 5){
								escreva("Excesso de tentativas digite ENTER para reiniciar")
								leia(ENTER)
								retorne 
							}
						}
						se (dado_3 == 1){
							limpa()
							escreva("Dado 'NOME' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'NOME'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo primeiro nome: ")
								leia(nome_Aluno[opcao_2])
								enquanto (nome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo primeiro nome: ")
									leia(nome_Aluno[opcao_2])
								}
								escreva("Digite o novo sobrenome: ")
								leia(sobrenome_Aluno[opcao_2])
								enquanto (sobrenome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo sobrenome: ")
									leia(sobrenome_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 2){
							limpa()
							escreva("Dado 'DATA DE NASCIMENTO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'DATA DE NASCIMENTO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite a nova data de nascimento(formato DD/MM/AAAA): ")
								leia(datanas_Aluno[opcao_2])
								enquanto (datanas_Aluno[opcao_2] == ""){
									escreva("Digite novamente a data de nascimento(formato DD/MM/AAAA): ")
									leia(datanas_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 3){
							limpa()
							escreva("Dado 'EMAIL' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'EMAIL'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo E-mail(se não houver pressione ENTER): ")
								leia(email_Aluno[opcao_2])
								se (email_Aluno[opcao_2] == ""){
									email_Aluno[opcao_2] = "Não registrado"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 4){
							limpa()
							escreva("Dado 'RESPONSÁVEIS' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'RESPONSÁVEIS'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo dado: ")
								leia(nome_Aluno[opcao_2])
								enquanto (nome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo dado: ")
									leia(nome_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 5){
							limpa()
							escreva("Dado 'TURNO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'TURNO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("1.Manhã\n2.Tarde\n3.Noite\n4.Integral\nOpção: ")
								leia(turno_Aluno)
								enquanto (turno_Aluno > 4 ou turno_Aluno < 1){
									escreva("Digite novamente a opção: ")
									leia(turno_Aluno)
								}
								se (turno_Aluno == 1){
									turno_Alunov[opcao_2] = "Manhã"
								}
								senao se (turno_Aluno == 2){
									turno_Alunov[opcao_2] = "Tarde"
								}
								senao se (turno_Aluno == 3){
									turno_Alunov[opcao_2] = "Noite"
								}
								senao se (turno_Aluno == 4){
									turno_Alunov[opcao_2] = "Integral"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 6){
							limpa()
							escreva("Dado 'NÍVEL DE ENSINO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'NÍVEL DE ENSINO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("")
								leia(nome_Aluno[opcao_2])
								enquanto (nome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo dado: ")
									leia(nome_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 7){
							limpa()
							escreva("Dado 'TURMA' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'TURMA'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("1.Regular\n2.Sistemas\n3.Logística\nOpção: ")
								leia(turma_Aluno)
								enquanto (turma_Aluno > 3 ou turma_Aluno < 1){
									escreva("Digite novamente a opção: ")
									leia(turma_Aluno)
								}
								se (turma_Aluno == 1){
									turma_Alunov[opcao_2] = "Regular"
								}
								se (turma_Aluno == 2){
									turma_Alunov[opcao_2] = "Sistemas"
								}
								se (turma_Aluno == 3){
									turma_Alunov[opcao_2] = "Logística"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 8){
							limpa()
							escreva("Dado 'ENDEREÇO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'ENDEREÇO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo endereço: ")
								leia(address_Aluno[opcao_2])
								se (address_Aluno[opcao_2] == ""){
									address_Aluno[opcao_2] = "Não registrado"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
					}
				}
				se (opcao == 3){
					limpa()
					para(inteiro i=0; i < cadastro; i++){
						escreva(i+1,".",nome_Aluno[i]," ", sobrenome_Aluno[i],"\n")
					}
					escreva("Digite sua opção(para voltar digite 0): ")
					leia(opcao_2)
					se (opcao_2 == 0){
						
					}
					senao se (opcao_2 >= 1){
						limpa()
						opcao_2 = opcao_2 - 1 
						escreva("------------------Opcões do aluno------------------")
						escreva("\nNome completo: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
						escreva("\nData de nascimento: ", datanas_Aluno[opcao_2])
						escreva("\nE-mail governamental: ", email_Aluno[opcao_2])
						escreva("\nResponsáveis: ", pai_Aluno[opcao_2] ," e ", mae_Aluno[opcao_2] ,"")
						escreva("\nTurno: ", turno_Alunov[opcao_2])
						escreva("\nNível de Ensino: ", nde_Alunov[opcao_2])
						escreva("\nTurma: ", turma_Alunov[opcao_2])
						escreva("\nEndereço: ", address_Aluno[opcao_2])
						escreva("\n--------------------------------------------------")
						escreva("\nPressione ENTER para retornar ")
						leia(ENTER)
					}
					
				}
				se (opcao == 4){
					limpa()
					para(inteiro i=0; i < cadastro; i++){
						escreva(i+1,".",nome_Aluno[i]," ", sobrenome_Aluno[i],"\n")
					}
					escreva("Digite sua opção para deletar(para voltar digite 0): ")
					leia(opcao_2)
					se (opcao_2 == 0){
						
					}
					senao se(opcao_2 <= cadastro){
						limpa()
						se (opcao_2 == 1){
							nome_Aluno[opcao_2] = ""
							address_Aluno[opcao_2] = ""
							datanas_Aluno[opcao_2] = ""
							email_Aluno[opcao_2] = ""
							mae_Aluno[opcao_2] = ""
							pai_Aluno[opcao_2] = ""
							sobrenome_Aluno[opcao_2] = ""
							turma_Alunov[opcao_2] = ""
							turno_Alunov[opcao_2] = ""
							escreva("Deletando informações.")
							u.aguarde(1000)
							limpa()
							escreva("Deletando informações..")
							u.aguarde(1000)
							limpa()
							escreva("Deletando informações...")
							u.aguarde(1000)
							limpa()
							escreva("Deletado com sucesso!")
							u.aguarde(1000)
							cadastro = cadastro - 1 
							opcao_2 = opcao_2 - 1
						}
						senao se(opcao_2 > 1){
							cadastro = cadastro - 1 
							opcao_2 = opcao_2 - 1
							nome_Aluno[opcao_2] = ""
							address_Aluno[opcao_2] = ""
							datanas_Aluno[opcao_2] = ""
							email_Aluno[opcao_2] = ""
							mae_Aluno[opcao_2] = ""
							pai_Aluno[opcao_2] = ""
							sobrenome_Aluno[opcao_2] = ""
							turma_Alunov[opcao_2] = ""
							turno_Alunov[opcao_2] = ""
							cadastro = cadastro - 1 
							escreva("Deletando informações.")
							u.aguarde(1000)
							limpa()
							escreva("Deletando informações..")
							u.aguarde(1000)
							limpa()
							escreva("Deletando informações...")
							u.aguarde(1000)
							limpa()
							escreva("Deletado com sucesso!")
							u.aguarde(1000)
							opcao_2 = opcao_2 - 1
						}
					}
				}
				se (opcao == 5){
					limpa()
					escreva("Obrigado por usar nosso programa, volte sempre!")
					retorne
				}
			}
		}
	}
}
/*	CÁLCULOS{
		*	ori_data_Aluno = datanas_Aluno
		*	datanas_Aluno = t.extrair_subtexto(datanas_Aluno, 6, 10)
		*	ano_Aluno = tp.cadeia_para_inteiro(datanas_Aluno, 10)
			idade_Aluno = c.ano_atual() - ano_Aluno	}*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 18530; 
 * @DOBRAMENTO-CODIGO = [40, 45, 50, 58, 62, 65, 68, 71, 80, 84, 108, 114, 124, 139, 175, 178, 181, 184, 193, 197, 207, 211, 214, 217, 200, 221, 227, 188, 143, 272, 313, 329, 306, 341, 356, 334, 384, 361, 396, 408, 411, 414, 417, 400, 424, 389, 436, 429, 464, 472, 489, 457, 501, 505, 516, 494, 237, 523, 615];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */