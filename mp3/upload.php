<?php
	session_start();
	include("config.php");

	if(!isset($_SESSION['u_id']))
	{
		header('location:index.php');
	}
	$sql=mysql_query("select * from baihatmoi");
	$row=mysql_fetch_array($sql);
		if(isset($_POST['up']))
		{
			$tenbaihat=$_POST['tenbaihat'];
			$casy=$_POST['casy'];
			$theloai=$_POST['theloai'];
			$file_name=$_FILES['upload']['name'];
			$extent_file="mp3";
			$pattern='#.+\.(mp3)$#i';
			if(preg_match($pattern,$file_name)==1)
			{
				$file_type=true;
			}
			else
			{
				$file_type=false;
			}
			if($file_type==true)
			{
				$source=$_FILES['upload']['tmp_name'];
				$dest='nhac/'.$_FILES['upload']['name'];
				if(copy($source,$dest)==false)
				{
					$flag=true;
					$update=mysql_query("insert into baihatmoi(tenbaihat,casy,theloai,duongdan) values('$tenbaihat','$casy','$theloai','$dest')");
					if($update)
					{
						echo "Bài hát của bạn đã được đăng và chờ Admin duyệt. <a href='index.php'>Trang chủ</a><br />Lưu ý: bài hát của bạn sẽ không hiển thị nếu Admin chưa duyệt Bài hát bạn đăng.";
					}
					else
					{
						echo "Đăng nhạc thất bại!Trở về <a href='./?mod=upload'>Upload</a>";
					}
				}
				else
				{
					$flag=false;
					echo "Đăng nhạc thất bại!Trở về <a href='./?mod=upload'>Upload</a>";
				}
			}
			else
			echo "Kiểu File không hợp lệ. Quay lại <a href='./?mod=upload'>Upload</a>";
		}
		else
		{

?>
<div id="dangky_thanhvien">
	<div class="content-block album">
		<h2 class="content-block-title"> Upload - Tải nhạc lên</h2>
	</div>
	<div class="thongtin_dangky">
		<div style="padding: 10px;">
			<form name="form1" method="post" enctype="multipart/form-data" action="">
				<table width="825" height="201" border="0">
					<tr>
						<td width="301" align="center" valign="top">
						<p>
							<input class="btup" type="file" name="upload" id="upload">
						</p>
						<table width="277" border="0">
						  <tr>
						    <td width="89" height="30" align="right"><b>Tên bài hát:</b></td>
						    <td width="172"><label for="tenbaihat"></label>
					        <input type="text" name="tenbaihat" id="tenbaihat" height="100px"/></td>
					      </tr>
						  <tr>
						    <td height="30" align="right"><b>Ca sỹ:</b></td>
						    <td><label for="casy"></label>
					        <input type="text" name="casy" id="casy" /></td>
					      </tr>
						  <tr>
						    <td height="30" align="right"><b>Thể loại:</b></td>
						    <td><label for="theloai"></label>
						      <select name="theloai">
										<?php
											$luachon=mysql_query("select * from theloai");
											while($row=mysql_fetch_array($luachon))
											{
										?>
											<option> <?php echo $row['noidung']?></option>
										<?php
											}
										?>
								</select>
							</td>
					      </tr>
						  </table>
						<p> 
							<input class="btup" type="submit" name="up" value="Upload">
						</p>
						</td>
						  <td width="36" valign="top">&nbsp;</td>
						<td width="474" valign="top">
						</td>
					</tr>
				</table>
			</form>
		</div>			       
	</div>
</div>
<?php 
 }?>