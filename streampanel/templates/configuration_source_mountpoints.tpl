	{include "autodj_mountpoint_lang.tpl"}
	
	<fieldset id="autodj_tab">
		<legend>{="AutoDJ Settings"}</legend>
		<table class="table">
		<tr>
			<td width="130">{="Use autoDJ"}:</td>
			<td><select name="mountpoints_field[useautodj]" class="list_editor_field" size="1" id="useautodj"><option value="0">{="No"}</option><option value="1">{="Yes"}</option></select></td>
		</tr>
		<tr>
			<td>{="Audio encoder"}:&nbsp;</td>
			<td>
				<select name="mountpoints_field[sctencoder]" class="list_editor_field" size="1" id="sct2_encoder">
				<option value="aacp">{="AAC+"}</option>
				<option value="mp3">{="MP3"}</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>{="Bit rate"}:&nbsp;</td>
			<td>{bitrate_field name="mountpoints_field[sctbitrate]" size="1" class="list_editor_field mpbitrate" value=$config.maxbitrate} {$errors.maxbitrate|checkerror}</td>
		</tr>
		<tr>
			<td>{="Channels"}:&nbsp;</td>
			<td>
				<select name="mountpoints_field[sctchannels]" class="list_editor_field" size="1">
				<option value="2">{="Stereo"}</option>
				<option value="1">{="Mono"}</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>{="Sample rate"}:&nbsp;</td>
			<td>
				{* Note: You can add custom sample rates by simply appending them to *}
				{* this list, separated by commas as shown. *}
				{set $samplerates}8000,11025,22050,32000,44100,48000,88200,96000{/set}
				
				<select name="mountpoints_field[sctsamplerate]" class="list_editor_field" size="1">
				{loop $samplerate=$samplerates|explode:",":1000}
				<option value="{$samplerate}">{="%s Hz",$samplerate}</option>
				{/loop}
				</select>
			</td>
		</tr>
		<tr>
			<td>{="MP3 CBR/VBR mode"}:&nbsp;</td>
			<td>
				<select name="mountpoints_field[sctmp3mode]" class="list_editor_field" size="1">
				<option value="0">{="CBR"}</option>
				<option value="1">{="VBR High"}</option>
				<option value="2">{="VBR Medium-High"}</option>
				<option value="3">{="VBR Medium"}</option>
				<option value="4">{="VBR Medium-Low"}</option>
				<option value="5">{="VBR Low"}</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>{="Optimize for"}:&nbsp;</td>
			<td>
				<select name="mountpoints_field[sctmp3quality]" class="list_editor_field" size="1">
				<option value="0">{="Performance"}</option>
				<option value="1">{="Quality"}</option>
				</select>
			</td>
		</tr>
		</table>
	</fieldset>

<script language="javascript" type="text/javascript">
$(function(){
	$('#sct2_encoder').change(function(){
		var $this = $(this);
		var encoder = $this.getSelectedOption().val();
		if (encoder=='mp3' && ( $('#sct2_unlock_name').val()=='' || $('#sct2_unlock_code').val()=='' ) ) {
			$this.centovaTip({
				title: window.lang.sct2_mp3_title,
				content: window.lang.sct2_mp3_message,
				clicktoclose: true,
				delay: 0,
				tiptype: 'info',
				immediate: true,
				position: 'right'
			});
			window.centovacast.tabset.one_change(function(){
				if ($this) $this.centovaTip(false);
			});
		}
	});
})
</script>