<{include file ="header.tpl"}>
<{include file ="navibar.tpl"}>
<{include file ="sidebar.tpl"}>
<!-- START 以上内容不需更改，保证该TPL页内的标签匹配即可 -->

<{$osadmin_action_alert}>
<{$osadmin_quick_note}>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">请修改账号资料</a></li>
    </ul>	
	
	<div id="myTabContent" class="tab-content">
		  <div class="tab-pane active in" id="home">

           <form id="tab" method="post" action="" autocomplete="off">
				
				<label>登录名 <span class="label label-info">不可修改</span></label>
				<input type="text" name="user_name" value="<{$user.user_name}>" class="input-xlarge" readonly="true">
				<label>密码 <span class="label label-important">如不修改请留空</span></label>
				<input type="password" name="password" value="" class="input-xlarge">
				<label>姓名</label>
				<input type="text" name="real_name" value="<{$user.real_name}>" class="input-xlarge">
				<label>手机</label>
				<input type="text" name="mobile" value="<{$user.mobile}>" class="input-xlarge">
				<label>邮件</label>
				<input type="text" name="email" value="<{$user.email}>"  class="input-xlarge">
				<label>描述</label>
				<textarea name="user_desc" rows="3" class="input-xlarge"><{$user.user_desc}></textarea>
				<label>账号组</label>
				
					
				<{html_options name=user_group id="DropDownTimezone" class="input-xlarge" options=$group_options selected=$user.user_group}>
				
			<div class="btn-toolbar">
				<button type="submit" class="btn btn-primary"><strong>提交</strong></button>
				<div class="btn-group"></div>
			</div>
			</form>
        </div>
    </div>

	<!---操作的确认层，相当于javascript:confirm函数--->
<{$osadmin_action_confirm}>
</div>	
<!-- END 以下内容不需更改，请保证该TPL页内的标签匹配即可 -->
<{ include file="footer.tpl" }>