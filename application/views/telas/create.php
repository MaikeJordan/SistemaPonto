<?php
echo "<br />";
if (validation_errors() != NULL) {
    ?>

    <br />
    <div class="alert alert-danger" role="alert"> 
        <?php echo validation_errors(); ?>
    </div>
    <?php
}
if ($this->session->flashdata('cadastrook')):
    echo '<div class="alert alert-success" role="alert"> 
				<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
				' . $this->session->flashdata('cadastrook') .
    '</div>';
endif;
echo form_open('CadastroFuncionario/create');
?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Cadastro de Funcionário </h3>
    </div>
    <div class="panel-body">
        <?php
        echo form_label('Nome Completo (*)') . "<br />";
        echo form_input(array('id' => 'nome', 'name' => 'nome', 'class' => 'form-control', 'placeholder' => 'Nome'), set_value('nome')) . "<br />";
        echo form_label('CPF (*)') . "<br />";
        echo form_input(array('id' => 'cpf', 'name' => 'cpf', 'class' => 'form-control', 'placeholder' => 'CPF'), set_value('cpf')) . "<br />";
        echo form_label('Identidade (*)') . "<br />";
        echo form_input(array('id' => 'identidade', 'name' => 'identidade', 'class' => 'form-control', 'placeholder' => 'Identidade'), set_value('identidade')) . "<br />"; 	
        echo form_label('Salário (*)') . "<br />";
        echo form_input(array('id' => 'salario', 'name' => 'salario', 'class' => 'form-control', 'placeholder' => 'Salário'), set_value('salario')) . "<br />";
        echo form_label('Email (*)') . "<br />";
        echo form_input(array('name' => 'email', 'class' => 'form-control', 'placeholder' => 'Email'), set_value('email')) . "<br />";
        echo form_label('Login (*)') . "<br />";
        echo form_input(array('name' => 'login', 'class' => 'form-control', 'placeholder' => 'Login'), set_value('login')) . "<br />";
        echo form_label("Senha (*)") . "<br />";
        echo form_password(array('name' => 'senha', 'class' => 'form-control', 'placeholder' => 'Senha'), set_value('senha')) . "<br />";
        echo form_label("Repita a senha (*)") . "<br />";
        echo form_password(array('name' => 'senha2', 'class' => 'form-control', 'placeholder' => 'Senha'), set_value('senha2')) . "<br /> <br />";
        echo form_submit(array('name' => 'cadastrar', 'class' => 'btn btn-primary'), 'Cadastrar') . "<br />";

        echo form_close();
        ?>
    </div>
</div>

<?php

