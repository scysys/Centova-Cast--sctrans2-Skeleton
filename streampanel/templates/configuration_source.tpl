<div class="m-portlet m-portlet--mobile m-portlet--rounded m-portlet--head-solid-bg">
<div class="m-portlet__head sp-box-table">
<div class="m-portlet__head-caption">
<div class="m-portlet__head-title">
<h3 class="m-portlet__head-text sp-box-table"> {="AutoDJ: Extra"} </h3>
</div>
</div>
</div>
<div class="m-portlet__body">

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Crossfade length"}</span>
</div>
<input type="text" name="config[crossfade]" class="form-control" maxlength="5" value="{$config.crossfade|htmlentities}" /> {$errors.crossfade|checkerror}
<div class="input-group-append">
<span class="input-group-text">{="second(s)"} ({="0 to disable"})</span>
</div>
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Crossfade threshold"}</span>
</div>
<input type="text" name="config[sctransfadethreshold]" class="form-control" value="{$config.sctransfadethreshold|htmlentities}" /> {$errors.sctransfadethreshold|checkerror}
<div class="input-group-append">
<span class="input-group-text">{="second(s)"}</span>
</div>
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="MP3 unlock name"}</span>
</div>
<input disabled="disabled" type="text" name="config[unlockkeyname]" id="sct2_unlock_name" class="form-control" maxlength="127" value="{$config.unlockkeyname|htmlentities}" /> {$errors.unlockkeyname|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">>{="MP3 unlock code"}</span>
</div>
<input disabled="disabled" type="text" name="config[unlockkeycode]" id="sct2_unlock_code" class="form-control" maxlength="127" value="{$config.unlockkeycode|htmlentities}" /> {$errors.unlockkeycode|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">>{="ICQ"}</span>
</div>
<input type="text" name="config[sctransicq]" class="form-control" value="{$config.sctransicq|htmlentities}" /> {$errors.sctransicq|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">>{="AIM"}</span>
</div>
<input type="text" name="config[sctransaim]" class="form-control" value="{$config.sctransaim|htmlentities}" /> {$errors.sctransaim|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">>{="IRC"}</span>
</div>
<input type="text" name="config[sctransirc]" class="form-control" value="{$config.sctransirc|htmlentities}" /> {$errors.sctransirc|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">>{="Apply replay gain"}</span>
</div>
<select name="config[sctransapplyrpg]" class="form-control">
<option value="0"{if $config.sctransapplyrpg==0} selected="selected"{/if}>{="No"}</option>
<option value="1"{if $config.sctransapplyrpg>0} selected="selected"{/if}>{="Yes"}</option>
</select> {$errors.sctransapplyrpg|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">>{="Calculate replay gain"}</span>
</div>
<select name="config[sctranscalcrpg]" class="form-control">
<option value="0"{if $config.sctranscalcrpg==0} selected="selected"{/if}>{="No"}</option>
<option value="1"{if $config.sctranscalcrpg>0} selected="selected"{/if}>{="Yes"}</option>
</select> {$errors.sctranscalcrpg|checkerror}
</div>

<p>{="Tip: Use the %sMount Points%s tab to configure settings for your individual autoDJ encoders.","<a href='#' onclick='go_mp_tab(); return false'>","</a>"}</p>

</div>
</div>
