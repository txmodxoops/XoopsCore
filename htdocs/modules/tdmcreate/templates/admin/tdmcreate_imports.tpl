<{include file="admin:system/admin_navigation.tpl"}>
<{include file="admin:system/admin_tips.tpl"}>
<{include file="admin:system/admin_buttons.tpl"}>
<{if $imports_count|default:false}>
	<table width='100%' cellspacing='1' class='outer'>
		<thead>
			<tr>
				<th class='txtcenter'><{translate key="ID"}></th>
				<th class='txtcenter'><{translate key="IMPORT_MID"}></th>
				<th class='txtcenter'><{translate key="IMPORT_NAME"}></th>
				<th class='txtcenter'><{translate key="IMPORT_TABLES_NUMBER"}></th>
				<th class='txtcenter'><{translate key="IMPORT_FIELDS_NUMBER"}></th>
				<th class='txtcenter'><{translate key="ACTION"}></th>
			</tr>
		</thead>
		<tbody>
			<{foreach item=import from=$imports}>
				<tr class="<{cycle values='even,odd'}>">
					<td class='txtcenter'><{$import.id}></td>
					<td class='txtcenter'><{$import.mid}></td>
					<td class='txtcenter'><{$import.name}></td>					
					<td class='txtcenter'><{$import.nbtables}></td>
					<td class='txtcenter'><{$import.nbfields}></td>
					<td class='xo-actions txtcenter width6'>
						<a href='import.php?op=edit&amp;id=<{$import.id}>' title='<{translate key="A_EDIT"}>'>
							<img src="<{xoAdminIcons 'edit.png'}>" alt='<{translate key="A_EDIT"}>' /></a>
						<a href='import.php?op=delete&amp;id=<{$import.id}>' title='<{translate key="A_DELETE"}>'>
							<img src="<{xoAdminIcons 'delete.png'}>" alt='<{translate key="A_DELETE"}>' /></a>
					</td>
				</tr>
			<{/foreach}>
		</tbody>
	</table><br />
	<{if $pagenav != ''}>
		<{$pagenav}>	   
	<{/if}>	
<{/if}>
<!-- Display form (add,edit) -->
<{if $error_message}>
<div class="alert alert-error">
    <strong><{$error_message}></strong>
</div>
<{/if}>
<{$form|default:''}>