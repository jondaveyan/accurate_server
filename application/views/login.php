<?php $this->load->view('header'); ?>
<div class="container">
    <form method="POST" action="welcome/login">
        Username:
        <input name="username" class="form-control" type="text" />
        Password:
        <input name="password" class="form-control" type="password" />
        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
        <input type="submit" value="Login" />
    </form>
</div>
<?php $this->load->view('footer'); ?>