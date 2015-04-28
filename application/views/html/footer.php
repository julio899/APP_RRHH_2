<div class="modal" id="consultar_anticipo_por_mes">
  <div class="modal-dialog">
    <div class="modal-content">
	
	<form action="<?php 
  
if($this->session->userdata('tipo')=='A'){echo base_url().index_page().'/administrador/acumulado_mensual'; }
if($this->session->userdata('tipo')=='C'){echo base_url().index_page().'/consultor/acumulado_mensual'; }
  ?>" method="post" class="form-horizontal">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Consultar Anticipos por Mes</h4>
      </div>
      <div class="modal-body">
						
  			<fieldset>
    			<legend>INDIQUE EL MES Y A&Ntilde;O</legend>
			    <div class="form-group">
			      <label for="mes" class="col-lg-6 control-label">Mes</label>
			      <div class="col-lg-6">
			        <!-- <input type="text" class="form-control" id="mes" placeholder="MM">-->
			        <select name="mes" class="form-control" id="mes" required>
                        <option value="1">01 - Enero </option>
                        <option value="2">02 - Febrero </option>
                        <option value="3">03 - Marzo </option>
                        <option value="4">04 - Abril </option>
                        <option value="5">05 - Mayo </option>
                        <option value="6">06 - Junio </option>
                        <option value="7">07 - Julio </option>
                        <option value="8">08 - Agosto </option>
                        <option value="9">09 - Septiembre </option>
                        <option value="10">10 - Octubre </option>
                        <option value="11">11 - Noviembre </option>
                        <option value="12">12 - Diciembre </option>
                     </select>
			      </div>


			      <label for="year" class="col-lg-6 control-label">A&ntilde;o</label>
			      <div class="col-lg-6">
			        <input type="number" name="year" class="form-control" id="year" placeholder="AAAA" min="1970" max="2020" required>
			      </div>

			    </div>
			</fieldset>

      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        <button type="submit" class="btn btn-primary">Confirmar</button>
      </div>
	</form>
    </div>
  </div>
</div>
 <!--FIN de MODAL-->

<div class="container">
	<div class="row-fluid">
		<div class="col-md-8"></div>
		<div class="col-md-4"><pre> Realizado por Julio Vinachi</pre></div>
	</div>
</div>

<script>
$('#consulta_mensual').click(function(e){
	e.preventDefault();
	$('#consultar_anticipo_por_mes').modal();
});
</script>
</html>