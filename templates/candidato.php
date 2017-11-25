<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Cadastro do Candidato</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../static/css/login.css">
	<link rel="stylesheet" type="text/css" href="../static/css/estilo.css">
</head>
<body>
	<?php include "cabecalho.php" ?>
	<div class ="caixa" id="cadastro_candidato">
		<a href="./cadastro_candidato.html">
			<img  class="imagem" src="../static/img/logo c_politco.png" alt="logo">
		</a>
		<form name="cadastro" action="cadasto_politico.php" method="post">
			<label class="l1">Nome</label><br>
			<input type="text" name="nNome"><br>
			<label class="l1">Sexo</label>
					<select class="l1" name="nSexo">
						<option value="selecione" selected="selected">Selecione</option>
						<option value="masculino">Masculino</option>
						<option value="feminino">Feminino</option>
					</select><br><br>
			<label class="l1">Profissão</label><br>
			<input type="text" name="nProfissao"><br>
			<label class="l1">Função</label>
					<select class="l1" name="nFuncao">
						<option value="selecione" selected="selected">Selecione</option>
						<option value="Vereador">Vereador</option>
						<option value="Prefeito">Prefeito</option>
						<option value="D.Estadual">D.Estadual</option>
						<option value="D.Federal">D.Federal</option>
						<option value="Governador">Governador</option>
						<option value="Senador">Senador</option>
						<option value="Presidente">Presidente</option>
				 	</select><br><br>
			<!--Deverá ter condição para definir os dados que serão exibidos Cidade ou Estado dependendo da Função-->
			<label class="l1">Cidade ou Estado de Atuação</label><br>
			<input type="text" name="nCid"><br>
			<label class="l1">Partido atual</label>
					<select class="l1" name="nPartido">
						<option value="selecione" selected="selected">Selecione</option>
						<option value="PT"">PT</option>
						<option value="PSDB">PSDB</option>
						<option value="REDE">REDE</option>
				  </select><br><br>
			<br>
			<br action="..\index.html">
			<input type="submit" class="bt" value="Cadastrar">
			<input type="reset" class="bt" value="Cancelar">
		</form>
		<br>
	</div>
	<footer class="footer" id="rodape">
		<p> Copyright &copy 2017 FlowTeam</p>
	</footer>
</body>
</html>