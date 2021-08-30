<!-- BEGIN: main -->
<div class="nv-fullbg">
    <form method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
		<!-- BEGIN: cats -->
		<div class="form-group textar">
			<div class="input-group">
				<span class="input-group-addon">
					<em class="fa fa-folder-open fa-lg fa-horizon">
					</em>
				</span>
				<select class="form-control" name="fcat">
					<!-- BEGIN: select_option_loop -->
					<option value="{SELECTVALUE}">
						{SELECTNAME}
					</option>
					<!-- END: select_option_loop -->
				</select>
			</div>
		</div>
		<!-- END: cats -->
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<em class="fa fa-file-text fa-lg fa-horizon">
					</em>
				</span>
				<input type="text" maxlength="255" class="form-control required" value="{CONTENT.ftitle}" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_title}" />
			</div>
		</div>
		<!-- BEGIN: iguest -->
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><em class="fa fa-user fa-lg fa-horizon"></em></span>
				<input type="text" maxlength="100" value="" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
                <span class="input-group-addon pointer" title="{GLANG.loginsubmit}" onclick="return loginForm('');"><em class="fa fa-sign-in fa-lg"></em></span>
            </div>
		</div>
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<em class="fa fa-envelope fa-lg fa-horizon"></em>
				</span>
				<input type="email" maxlength="60" value="" name="femail" class="form-control required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_email}" />
			</div>
		</div>
		<!-- END: iguest -->
		<!-- BEGIN: iuser -->
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<em class="fa fa-user fa-lg fa-horizon">
					</em>
				</span>
				<input type="text" maxlength="100" value="{CONTENT.fname}" name="fname" class="form-control required disabled" disabled="disabled" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_fullname}" />
			</div>
		</div>
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<em class="fa fa-envelope fa-fix fa-lg fa-horizon"></em>
				</span>
				<input type="email" maxlength="60" value="{CONTENT.femail}" name="femail" class="form-control" placeholder="{LANG.email}" />
			</div>
		</div>
		<!-- END: iuser -->
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<em class="fa fa-phone fa-lg fa-horizon"></em>
				</span>
                <input type="text" maxlength="60" value="{CONTENT.fphone}" name="fphone" class="form-control required" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_phone}" />
            </div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<em class="fa fa-home fa-lg fa-horizon"></em>
				</span>
                <input type="text" maxlength="60" value="{CONTENT.faddress}" name="faddress" class="form-control" placeholder="{LANG.address}" />
            </div>
        </div>
		<div class="form-group">
		<div class="input-group">
		    <span class="input-group-addon">
					<em class="fa fa-calendar fa-lg fa-horizon"></em>
		    </span>
			<input class="form-control" type="text" name="checkin" placeholder="{LANG.checkin}" id="checkin" value="{CONTENT.checkin}"  oninvalid="setCustomValidity( nv_digits )" oninput="setCustomValidity('')" />
		</div>
	    </div>
		<div class="form-group textar">
            <div>
    			<textarea cols="8" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_content}"></textarea>
            </div>
		</div>
        <!-- BEGIN: sendcopy -->
        <div class="form-group">
            <label><input type="checkbox" name="sendcopy" value="1" checked="checked" /><span>{LANG.sendcopy}</span></label>
        </div>
        <!-- END: sendcopy -->
        <!-- BEGIN: captcha -->
		<div class="form-group textar">
            <div class="middle text-right clearfix">
			    <div class="col-md-11 col-sm-11 col-xs-11">
                <img width="{GFX_WIDTH}" height="{GFX_HEIGHT}" title="{LANG.captcha}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}" class="captchaImg display-inline-block">
                </div>
				<div class="col-md-2 col-sm-2 col-xs-2">
				<em onclick="change_captcha('.fcode');" title="{GLANG.captcharefresh}" class="fa fa-pointer fa-refresh margin-left margin-right"></em>
                </div>
				<div class="col-md-11 col-sm-11 col-xs-11">
				<input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control display-inline-block" style="width:100px;" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" data-mess="{LANG.error_captcha}"/>
                </div>
		    </div>
		</div>
        <!-- END: captcha -->
        <!-- BEGIN: recaptcha -->
        <div class="form-group">
            <div class="middle text-center clearfix">
                <div class="nv-recaptcha-default"><div id="{RECAPTCHA_ELEMENT}"></div></div>
                <script type="text/javascript">
                nv_recaptcha_elements.push({
                    id: "{RECAPTCHA_ELEMENT}",
                    btn: $('[type="submit"]', $('#{RECAPTCHA_ELEMENT}').parent().parent().parent().parent())
                })
                </script>
            </div>
        </div>
        <!-- END: recaptcha -->
		<div class="text-center form-group">
			<input type="hidden" name="checkss" value="{CHECKSS}" />
			<input type="button" value="{LANG.reset}" class="btn btn-default" onclick="nv_validReset(this.form);return!1;" />
			<input type="submit" value="{LANG.sendcontact}" name="btsend" class="btn btn-primary" />
		</div>
	</form>
    <div class="contact-result alert"></div>
</div>
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript">
	$("#checkin").datepicker({
		dateFormat : "dd/mm/yy",
		changeMonth : true,
		changeYear : true,
		showOtherMonths : true,
	});

</script>
<!-- END: main -->