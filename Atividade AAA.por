programa
{
	inclua biblioteca Arquivos --> a
	
	//Função para imprimir linhas na tela
	funcao imp_Tela(cadeia separa, inteiro qtd) {
    		inteiro contador
    		para(contador=0;contador<qtd;contador++) {
      		escreva(separa)
    		}
  	}

	//Funçãp para verificação de usuário e senha
	funcao logico autenticacao_senha(cadeia usuario_digitado, cadeia usuario_correto, cadeia senha_digitada, cadeia senha_correta) {
		se (usuario_digitado == usuario_correto e senha_digitada == senha_correta) {
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}

	//Função para verificação do token de acesso
	funcao logico autenticacao_token(cadeia token_digitado, cadeia token_correto) {
		se (token_digitado == token_correto) {
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}

	funcao log_servidor_accounting(cadeia nome_arquivo, cadeia texto_log, cadeia status) {
		inteiro arquivo = a.abrir_arquivo(nome_arquivo, a.MODO_ACRESCENTAR)
    		a.escrever_linha(texto_log + status, arquivo)
    		a.fechar_arquivo(arquivo)
	}

	funcao login_gerente() {
		cadeia usuario, senha, usuario_correto = "adm", senha_correta = "adm164", token, token_auth = "164"
    		
    		limpa()
    		imp_Tela("#",50)
    		escreva("\n Login Gerente do Banco Inter\n")
    		imp_Tela("-",50)
    		escreva("\nDigite o nome de usuário: ")
    		leia(usuario)
    		escreva("\nDigite a senha: ")
    		leia(senha)
    		imp_Tela("#",50)

		se (autenticacao_senha(usuario, usuario_correto, senha, senha_correta)) {
			escreva("\n\nDigite o token de autenticação: ")
    			leia(token)
    			imp_Tela("#",50)
    			se (autenticacao_token(token, token_auth)) {
    				escreva("\nAcesso permitido!")

    				log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha + " | " + "Token digitado: " + token, " - Login Permitido")

    				tela_gerente()
    			} senao {
    				escreva("Acesso negado!")

				log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha + " | " + "Token digitado: " + token, " - Token Negado")
    				
    				menu_principal()
    			}
		} senao {
			escreva("Acesso negado!")

			log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha, " - Usuário e Senha negados")
			
			menu_principal()
		}
	}

	funcao login_cliente() {
		cadeia usuario, senha, usuario_correto = "cliente", senha_correta = "cliente122", token, token_auth = "122"
    		
    		limpa()
    		imp_Tela("#",50)
    		escreva("\n Login Gerente do Banco Inter\n")
    		imp_Tela("-",50)
    		escreva("\nDigite o nome de usuário: ")
    		leia(usuario)
    		escreva("\nDigite a senha: ")
    		leia(senha)
    		imp_Tela("#",50)

		se (autenticacao_senha(usuario, usuario_correto, senha, senha_correta)) {
			escreva("\n\nDigite o token de autenticação: ")
    			leia(token)
    			imp_Tela("#",50)
    			se (autenticacao_token(token, token_auth)) {
    				escreva("\nAcesso permitido!")

    				log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha + " | " + "Token digitado: " + token, " - Login Permitido")

    				tela_cliente()
    			} senao {
    				escreva("Acesso negado!")

				log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha + " | " + "Token digitado: " + token, " - Token Negado")
    				
    				menu_principal()
    			}
		} senao {
			escreva("Acesso negado!")

			log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha, " - Usuário e Senha negados")
			
			menu_principal()
		}
	}

	funcao login_tecnico() {
		cadeia usuario, senha, usuario_correto = "tech", senha_correta = "tech123", token, token_auth = "123"
    		
    		limpa()
    		imp_Tela("#",50)
    		escreva("\n Login Gerente do Banco Inter\n")
    		imp_Tela("-",50)
    		escreva("\nDigite o nome de usuário: ")
    		leia(usuario)
    		escreva("\nDigite a senha: ")
    		leia(senha)
    		imp_Tela("#",50)

		se (autenticacao_senha(usuario, usuario_correto, senha, senha_correta)) {
			escreva("\n\nDigite o token de autenticação: ")
    			leia(token)
    			imp_Tela("#",50)
    			se (autenticacao_token(token, token_auth)) {
    				escreva("\nAcesso permitido!")

    				log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha + " | " + "Token digitado: " + token, " - Login Permitido")

    				tela_tecnico()
    			} senao {
    				escreva("Acesso negado!")

				log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha + " | " + "Token digitado: " + token, " - Token Negado")
    				
    				menu_principal()
    			}
		} senao {
			escreva("Acesso negado!")

			log_servidor_accounting("servidor_accounting.txt", "Nome de usuário digitado: " + usuario + " | " + "Senha Digitada: " + senha, " - Usuário e Senha negados")
			
			menu_principal()
		}
	}
	
	funcao menu_principal() {
    		inteiro opcao
    		
    		limpa()
    		imp_Tela("#",50)
    		escreva("\n Login Banco Inter\n")
    		imp_Tela("-",50)
    		escreva("\n1 - Gerente\n2 - Cliente\n3 - Técnico\n4 - Sair")
    		leia(opcao)
    		imp_Tela("#",50)

		escolha (opcao) {
			caso 1: 
				login_gerente()
				pare
			caso 2:
				login_cliente()
				pare
			caso 3:
				limpa()
				login_tecnico()
				pare
			caso 4:
				pare
		}
	}

	funcao tela_gerente() {
		inteiro opcao
		
    		imp_Tela("#",50)
    		escreva("\n Gerência do Banco Inter\n")
    		imp_Tela("-",50)
    		escreva("\n1 - Ver senha do cofre\n2 - Ver saldo do banco\n3 - Limpar tela\n4 - Sair")
    		escreva("\nO que você deseja fazer: ")
    		leia(opcao)

		escolha (opcao) {
			caso 1: 
				escreva("A senha do cofre é: 3487fdhaGDFSG4f3%&wsf!@gfd*?ASe\n")
				log_servidor_accounting("servidor_accounting.txt", "O usuário adm verificou a senha do cofre", " VERIFICAÇÃO NECESSÁRIA")
				tela_gerente()
				pare
			caso 2:
				escreva("O saldo do banco é de R$ 103.892.129.807,00\n")
				log_servidor_accounting("servidor_accounting.txt", "O usuário adm verificou o saldo do banco", " VERIFICAÇÃO NECESSÁRIA")
				tela_gerente()
				pare
			caso 3:
				limpa()
				tela_gerente()
				pare
			caso 4:
				menu_principal()
				pare
		}
    		
	}

	funcao tela_cliente() {
		inteiro opcao
		
    		imp_Tela("#",50)
    		escreva("\n Bem vindo à sua conta do Banco Inter\n")
    		imp_Tela("-",50)
    		escreva("\n1 - Ver seu saldo\n2 - Ver seus investimentos\n3 - Limpar tela\n4 - Sair")
    		escreva("\nO que você deseja fazer: ")
    		leia(opcao)

		escolha (opcao) {
			caso 1: 
				escreva("Seu saldo: R$ 17254,98\n")
				log_servidor_accounting("servidor_accounting.txt", "O usuário cliente verificou seu saldo bancário", " OK")
				tela_cliente()
				pare
			caso 2:
				escreva("CDB: 897,78\nTesouro Direto: 1982,12\n")
				log_servidor_accounting("servidor_accounting.txt", "O usuário cliente verificou sua lista de investimentos", " OK")
				tela_cliente()
				pare
			caso 3:
				limpa()
				tela_cliente()
				pare
			caso 4:
				menu_principal()
				pare
		}
    		
	}

	funcao tela_tecnico() {
		inteiro opcao
		
    		imp_Tela("#",50)
    		escreva("\n Gerenciamento Técnico do Banco Inter\n")
    		imp_Tela("-",50)
    		escreva("\n1 - Listar usuários do sistema\n2 - Verificar vulnerabilidades no sistema\n3 - Limpar tela\n4 - Sair")
    		escreva("\nO que você deseja fazer: ")
    		leia(opcao)

		escolha (opcao) {
			caso 1: 
				escreva("Usuário: adm | Senha: adm164\nUsuário: cliente | Senha: cliente122\nUsuário: tech | Senha: tech123")
				log_servidor_accounting("servidor_accounting.txt", "O usuário tech verificou a lista de usuários", " OK")
				tela_tecnico()
				pare
			caso 2:
				escreva("NENHUMA VULNERABILIDADE ENCONTRADA\n")
				log_servidor_accounting("servidor_accounting.txt", "O usuário tech verificou se havia alguma vulnerabilidade", " OK")
				tela_tecnico()
				pare
			caso 3:
				limpa()
				tela_tecnico()
				pare
			caso 4:
				menu_principal()
				pare
		}
    		
	}
		
	funcao inicio()
	{
		menu_principal()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */