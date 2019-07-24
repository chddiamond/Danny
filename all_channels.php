 <?php
include("_db.php");
 $sql = 'SELECT c.*  
        FROM channels c 
        LEFT JOIN channel_groupings g on c.channel_grouping_id_fk = g.channel_grouping_id 
        ORDER BY channel_grouping_sort_order, CASE
					WHEN group_rank  = 0 THEN 999999
					ELSE group_rank
					END, group_rank, code
					LIMIT 25';
					$result = mysqli_query( $connection, $sql );
					$z = 1;
					while ( $row = mysqli_fetch_array( $result ) ) {
          echo '<div class="each-channel channel_'.$z.'">
								<input type="checkbox" name="channels[]" id="top25check' . $row[ 'channel_id' ] . '" value="' . $row[ 'channel_id' ] . '" >
								<label for="top25check' . $row[ 'channel_id' ] . '" data-channelname="'.$row['name'].'" data-location="Top 25">
										<span>';
										
										if($row[ 'icon' ] ==''  )
										{
											$src = 'https://test.mybundle.tv/assets/images/logos/channels/'.$logo_color.'/'.strtolower(str_replace (" ","_",($row[ 'name' ]))).'_'.$logo_color.'.png';
	
											if($try_to_get_icons == 1)
											{
												if (@getimagesize($src)) {
													echo '<img class="channel-icon" src="'.$src .'">';
													$update = 'UPDATE channels SET icon = "'.strtolower(str_replace (" ","_",($row[ 'name' ]))).'" WHERE channel_id = '.$row['channel_id'].'';
													$update_result = mysqli_query( $connection, $update );
												}
												else
												{
													echo '<img class="channel-icon placeholder" alt="' . $row[ 'name' ] . '" title="' . $row[ 'name' ] . '"  src="https://via.placeholder.com/64X64?text=' . $row[ 'name' ] . '">';
											
												}
											}
											else
											{
												echo '<img class="channel-icon placeholder"  alt="' . $row[ 'name' ] . '" title="' . $row[ 'name' ] . '" src="https://via.placeholder.com/64X64?text=' . $row[ 'name' ] . '">';
											}
												
										}
										else
										{
											echo '<img class="channel-icon actual" alt="' . $row[ 'name' ] . '" title="' . $row[ 'name' ] . '" src="/assets/images/logos/channels/'.$logo_color.'/'.$row['icon'].'_'.$logo_color.'.png">';
											echo '<img class="channel-icon selected" alt="' . $row[ 'name' ] . '" title="' . $row[ 'name' ] . '" src="/assets/images/logos/channels/color/'.$row['icon'].'_color.png">';
										}
										
										echo '</span>
									</label>
							</div>';
						$z++;
          }
          ?>
