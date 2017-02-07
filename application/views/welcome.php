<?php $this->load->view('header'); ?>
<div id="container">
    <h1>Պահեստի շարժ</h1>

    <div id="body">
        <a href="<?php echo base_url('products'); ?>"><button class="btn btn-default">Ապրանքներ</button></a>
        <a href="<?php echo base_url('clients'); ?>"><button class="btn btn-default">Կլիենտներ</button></a>
        <a href="<?php echo base_url('orders'); ?>"><button class="btn btn-default">Գործարքներ</button></a>
        <a href="<?php echo base_url('payment'); ?>"><button class="btn btn-default">Վճարում</button></a>
        <a href="<?php echo base_url('giveback'); ?>"><button class="btn btn-default">Ապրանքի վերադարձ</button></a>
        <a href="<?php echo base_url('dashboard'); ?>"><button class="btn btn-info">Աղյուսակ</button></a>
    </div>
</div>
<?php $this->load->view('footer'); ?>