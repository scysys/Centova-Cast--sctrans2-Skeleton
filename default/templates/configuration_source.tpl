<table cellspacing="1" cellpadding="0" border="0">
<tr>
	<td width="140">{="Crossfade length"}:&nbsp;</td>
	<td colspan="3"><input type="text" name="config[crossfade]" size="5" maxlength="5" value="{$config.crossfade|htmlentities}" /> {$errors.crossfade|checkerror} {="second(s)"} ({="0 to disable"})</td>
</tr>
<tr>
	<td>{="Crossfade threshold"}:&nbsp;</td>
	<td><input type="text" name="config[sctransfadethreshold]" size="5" value="{$config.sctransfadethreshold|htmlentities}" /> {="second(s)"} {$errors.sctransfadethreshold|checkerror}</td>
</tr>

<tr><td colspan="4" style="font-size: 4px">&nbsp;</td></tr>

<tr>
	<td width="140">{="MP3 unlock name"}:&nbsp;</td>
	<td colspan="3"><input type="text" name="config[unlockkeyname]" id="sct2_unlock_name" size="30" maxlength="127" value="{$config.unlockkeyname|htmlentities}" /> {$errors.unlockkeyname|checkerror} {tip type="icon"}{="sc_trans v2 allows broadcasting in AAC+ format free of charge, but requires a license key to broadcast in MP3 format.  If you have purchased an MP3 broadcasting license key, enter the unlock name and code here."}{/tip}</td>
</tr>
<tr>
	<td>{="MP3 unlock code"}:&nbsp;</td>
	<td><input type="text" name="config[unlockkeycode]" id="sct2_unlock_code" size="30" maxlength="127" value="{$config.unlockkeycode|htmlentities}" /> {$errors.unlockkeycode|checkerror}</td>
</tr>
<tr><td></td><td class="info">{="Unlock code details and purchase information %savailable here%s.","<a style='color: #909090' href='http://wiki.winamp.com/wiki/SHOUTcast_DNAS_Transcoder_2#Registering_for_MP3_Stream_Encoding' target='_blank'>","</a>"}</td></tr>

<tr><td colspan="4" style="font-size: 4px">&nbsp;</td></tr>


<tr>
	<td width="140">{="ICQ"}:&nbsp;</td>
	<td><input type="text" name="config[sctransicq]" size="20" value="{$config.sctransicq|htmlentities}" /> {$errors.sctransicq|checkerror}</td>
	
	<td width="140" style="text-align: right">{="Apply replay gain"}:&nbsp;</td>
	<td>
		<select name="config[sctransapplyrpg]" size="1">
		<option value="0"{if $config.sctransapplyrpg==0} selected="selected"{/if}>{="No"}</option>
		<option value="1"{if $config.sctransapplyrpg>0} selected="selected"{/if}>{="Yes"}</option>
		</select> {$errors.sctransapplyrpg|checkerror}
	</td>
	
</tr>
<tr>
	<td width="60">{="AIM"}:&nbsp;</td>
	<td><input type="text" name="config[sctransaim]" size="20" value="{$config.sctransaim|htmlentities}" /> {$errors.sctransaim|checkerror}</td>
	
	<td width="140" style="text-align: right">{="Calculate replay gain"}:&nbsp;</td>
	<td>
		<select name="config[sctranscalcrpg]" size="1">
		<option value="0"{if $config.sctranscalcrpg==0} selected="selected"{/if}>{="No"}</option>
		<option value="1"{if $config.sctranscalcrpg>0} selected="selected"{/if}>{="Yes"}</option>
		</select> {$errors.sctranscalcrpg|checkerror}
	</td>
	
</tr>
<tr>
	<td width="140">{="IRC"}:&nbsp;</td>
	<td colspan="3"><input type="text" name="config[sctransirc]" size="20" value="{$config.sctransirc|htmlentities}" /> {$errors.sctransirc|checkerror}</td>
</tr>
</table>

<br />
{="Tip: Use the %sMount Points%s tab to configure settings for your individual autoDJ encoders.","<a href='#' onclick='go_mp_tab(); return false'>","</a>"}
