<% if IncludeFormTag %>
<form $FormAttributes data-layout="{type: 'border'}">
<% end_if %>

<div class="cms-content-header north">
	<div>
		<h2>My Page Title</h2>
		<% if Fields.hasTabset %>
			<% with Fields.fieldByName('Root') %>
			<div class="cms-content-header-tabs">
				<ul>
				<% control Tabs %>
					<li><a href="#$id">$Title</a></li>
				<% end_control %>
				</ul>
				<% end_with %>
			</div>
		<% end_if %>
	
		<!-- <div class="cms-content-search">...</div> -->
	</div>
</div>

<!-- <div class="cms-content-tools west">
	$Left
</div> -->

<div class="cms-content-form center">
	
	<% if Message %>
	<p id="{$FormName}_error" class="message $MessageType">$Message</p>
	<% else %>
	<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
	<% end_if %>

	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %> 
		<% control Fields %>
			$FieldHolder
		<% end_control %>
		<div class="clear"><!-- --></div>
	</fieldset>
	
</div>

<div class="cms-content-actions south">
	<% if Actions %>
	<div class="Actions">
		<% control Actions %>
			$Field
		<% end_control %>
	</div>
	<% end_if %>
</div>

<% if IncludeFormTag %>
</form>
<% end_if %>