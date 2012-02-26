<?php
	define('IN_ECS', true);
	require(dirname(__FILE__) . '/includes/init.php');
 

	include_once(ROOT_PATH . 'includes/fckeditor/fckeditor.php'); // 包含 html editor 类文件

	if($_POST['submit'])
	{
		$FCKvalue = $_POST[goods_desc];
		$sql = "select * from ecs_myconfig where name = 'myindex'";
		$result = mysql_query($sql);
		$num =  mysql_num_rows($result);
		if($num == 0)
		{
			$sql = "insert into ecs_myconfig set name = 'myindex', value = '$FCKvalue'";
		}
		else
		{
			$sql = "update ecs_myconfig set value = '$FCKvalue' where name = 'myindex'";
		}
		$query = mysql_query($sql);
		if($query)
		{
			echo "<script>alert('保存成功！')</script>";			
			echo "<script>self.location='myindex.php'</script>";			
			exit;
		}
	}

	if($_POST['submit2'])
	{
		$FCKvalue = $_POST['index_top'];
		$sql = "select * from ecs_myconfig where name = 'myindex2'";
		$result = mysql_query($sql);
		$num =  mysql_num_rows($result);
		if($num == 0)
		{
			$sql = "insert into ecs_myconfig set name = 'myindex2', value = '$FCKvalue'";
		}
		else
		{
			$sql = "update ecs_myconfig set value = '$FCKvalue' where name = 'myindex2'";
		}
		$query = mysql_query($sql);
		if($query)
		{
			echo "<script>alert('保存成功！')</script>";			
			echo "<script>self.location='myindex.php'</script>";			
			exit;
		}
	}

	/*提取首页自定义区域内容*/
	$sql = "select * from ecs_myconfig where name = 'myindex'";
	$result = mysql_query($sql);
	$lin = mysql_fetch_array($result);


	/* 创建 html editor */
    create_html_editor('goods_desc', $lin[1]);

	/*提取首页top内容 2009-9-20*/
	$sql = "select * from ecs_myconfig where name = 'myindex2'";
	$result = mysql_query($sql);
	$lin = mysql_fetch_array($result);

	/* 创建 html editor 2009-9-20*/
	create_html_editor2('index_top', $lin[1]);

	$smarty->display('myindex.htm');

?>
