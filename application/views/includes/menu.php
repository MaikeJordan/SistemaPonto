
<ul class="nav nav-tabs">
  <?php
  	$active1 = '';
	$active2 = ''; 
	$active3 = '';
	$active4 = '';   
  	if($active == 'create')
		$active1 = 'active';
	
	if($active == 'retreive')
		$active2 = 'active';
	
	if($active == 'update')
		$active3 = 'active';
	
	if($active == 'delete')
		$active4 = 'active';
  ?>
  <li role="presentation" class="<?php echo $active1 ?>"><?php echo anchor('CadastroFuncionario/create', 'Create') ?></li>
  <li role="presentation" class="<?php echo $active2 ?>"><?php echo anchor('CadastroFuncionario/retrieve', 'Retrieve') ?></li>
  <li role="presentation" class="<?php echo $active3 ?>"><?php echo anchor('CadastroFuncionario/update', 'Update') ?></li>
  <li role="presentation" class="<?php echo $active4 ?>"><?php echo anchor('CadastroFuncionario/delete', 'Delete') ?></li>
</ul>
