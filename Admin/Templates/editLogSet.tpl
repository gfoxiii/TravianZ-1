<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       editLogSet.tpl                                              ##
##  Developed by:  ronix                                                       ##
##  License:       TravianZ Project                                            ##
##  Copyright:     TravianZ (c) 2010-2014. All rights reserved.                ##
##                                                                             ##
#################################################################################
if (!isset($_SESSION)) {
 session_start();
}
if($_SESSION['access'] < 9) die(ACCESS_DENIED_ADMIN);
?>
<h2><center><?php echo SERV_CONFIG ?></center></h2>
	<form action="../GameEngine/Admin/Mods/editLogSet.php" method="POST">
		<input type="hidden" name="id" id="id" value="<?php echo $_SESSION['id']; ?>">
			<br />
			<table id="profile" cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<th colspan="2"><?php echo EDIT_LOG_SETT ?></th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td width="50%"><?php echo CONF_LOG_BUILD ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_BUILD_TOOLTIP ?></span></em></td>
					<td width="50%">
						<select name="log_build">
							<option value="true" <?php if (LOG_BUILD==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_BUILD==false) echo "selected";?>>No</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><?php echo CONF_LOG_TECHNOLOGY ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_TECHNOLOGY_TOOLTIP ?></span></em></td>
					<td>
						<select name="log_tech">
							<option value="true" <?php if (LOG_TECH==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_TECH==false) echo "selected";?>>No</option>
						</select>
					</td>	
				</tr>
				<tr>
					<td><?php echo CONF_LOG_LOGIN ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_LOGIN_TOOLTIP ?></span></em></td>
					<td>
						<select name="log_login">
							<option value="true" <?php if (LOG_LOGIN==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_LOGIN==false) echo "selected";?>>No</option>
						</select>
					</td>	
				</tr>
				<tr>
					<td><?php echo CONF_LOG_GOLD ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_GOLD_TOOLTIP ?></span></em></td>
					<td>
						<select name="log_gold_fin">
							<option value="true" <?php if (LOG_GOLD_FIN==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_GOLD_FIN==false) echo "selected";?>>No</option>
						</select>
					</td>	
				</tr>
				<tr>
					<td><?php echo CONF_LOG_ADMIN ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_ADMIN_TOOLTIP ?></span></em></td>
					<td>
						<select name="log_admin">
							<option value="true" <?php if (LOG_ADMIN==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_ADMIN==false) echo "selected";?>>No</option>
						</select>
					</td>	
				</tr>
				<tr>
					<td><?php echo CONF_LOG_WAR ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_WAR_TOOLTIP ?></span></em></td>
					<td>
						<select name="log_war">
							<option value="true" <?php if (LOG_WAR==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_WAR==false) echo "selected";?>>No</option>
						</select>
					</td>	
				</tr>				
				<tr>
					<td><?php echo CONF_LOG_MARKET ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_MARKET_TOOLTIP ?></span></em></td>
					<td>
						<select name="log_market">
							<option value="true" <?php if (LOG_MARKET==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_MARKET==false) echo "selected";?>>No</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><?php echo CONF_LOG_ILLEGAL ?> <em class="tooltip">?<span class="classic"><?php echo CONF_LOG_ILLEGAL_TOOLTIP ?></span></em></td>
					<td>
						<select name="log_illegal">
							<option value="true" <?php if (LOG_ILLEGAL==true) echo "selected";?>>Yes</option>
							<option value="false" <?php if (LOG_ILLEGAL==false) echo "selected";?>>No</option>
						</select>
					</td>
				</tr>
				<tr>
	
				</tbody>
			</table>
			<br />
			<table width="100%">
				<tr><td align="left"><a href="../Admin/admin.php?p=config"><< <?php echo EDIT_BACK ?></a></td>
					<td align="right"><input type="image" border="0" src="../img/admin/b/ok1.gif"></td>
				</tr>
			</table>
		</form>
