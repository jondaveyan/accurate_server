<?php $this->load->view('header'); ?>

<div class="container">
    <form method="POST" action="<?php echo base_url('welcome/login'); ?>">
        
        <label for="dbselect">Բազա</label>
        <select id="dbselect" name="database">
            <option value="new">Նորմալ</option>
            <option value="old">Արխիվ</option>
        </select>
        Username:
        <input name="username" class="form-control" type="text" />
        Password:
        <input name="password" class="form-control" type="password" />
        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>" />
        <input type="submit" value="Login" />
    </form>
</div>
<?php $this->load->view('footer'); ?>
