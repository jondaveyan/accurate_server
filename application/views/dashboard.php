<?php $this->load->view('header'); ?>
<div id="container">
	<a href="welcome"><button class="btn btn-default">Հետ</button></a>
	<a href="debts"><button class="btn btn-default">Պարտքերի աղյուսակ</button></a>
	<a href="getproduct"><button class="btn btn-default">Ներմուծում</button></a><br><br>
	<div id="products_table">
		<table>
		<thead>
			<tr>
				<th style="vertical-align: middle; width: 360px;">Ապրանքի անուն</th>
				<th style="vertical-align: middle; width: 30px;">Քան.</th>
				<th style="vertical-align: middle; width: 30px;">Վաճ.</th>
				<th style="vertical-align: middle; width: 30px;">Պահ.</th>
				<!-- <th style="vertical-align: middle; width: 30px;">Ջրդ.</th>
				<th style="vertical-align: middle; width: 30px;">Վն.</th> -->
				<th style="vertical-align: middle; width: 30px;">Վարձ.</th>
				<th style="vertical-align: middle; width: 30px;">Գույք.</th>
				<?php
				$i = 0;
				$class = '';
				foreach($clients as $key => $client)
				{
					if($i == 0)
					{
						$class = 'klass-erik';
					}
					else
					{
						$class = '';
					}
					echo '<th style="width: 30px;" data-client_id="'.$client_ids[$key].'" data-toggle="modal" data-target="#myModal" class="clickable '.$class.' client_info verticalTableHeader"><div>'.$client.'</div></th>';
					$i++;
				}
				/*foreach($clients_with_debt as $key => $value)
				{
					echo '<th style="width: 30px;" data-client_id="'.$value->id.'" data-toggle="modal" data-target="#myModal" class="clickable client_info verticalTableHeader"><div>'.$value->name.'</div></th>';
				}*/
				echo '</tr></thead><tbody>';
				foreach($products as $key => $product)
				{
					echo '<tr><td data-toggle="modal" data-target="#myModal" class="clickable product_info" data-product_id="'.$product->id.'">'.$product->name.'</td>';
					echo '<td>'.($product->quantity+$product->new_quantity).'</td>';
					echo '<td>'.$product->sold_quantity.'</td>';
					echo '<td>'.($product->quantity+$product->new_quantity-$product->daily_order).'</td>';
					/*echo '<td>'.$product->useless_quantity.'</td>';
					echo '<td>'.$product->bad_quantity.'</td>';*/
					echo '<td data-id="'.$product->id.'" class="clickable daily_order">'.$product->daily_order.'</td>';
					echo '<td></td>';
					if(isset($res[$product->name]))
					{
						foreach($clients as $k => $client)
						{
							if(isset($res[$product->name][$client]))
							{
								echo '<td data-client_id="'.$client_ids[$k].'" data-product_id="'.$product->id.'"data-toggle="modal" data-target="#myModal" class="clickable product_client_info">'.$res[$product->name][$client].'</td>';
							}
							else
							{
								echo '<td data-client_id="'.$client_ids[$k].'" data-product_id="'.$product->id.'"data-toggle="modal" data-target="#myModal" class="clickable product_client_info"></td>';
							}
						}
					}
					else
					{
						foreach($clients as $k => $client)
						{
							echo '<td data-client_id="'.$client_ids[$k].'" data-product_id="'.$product->id.'"data-toggle="modal" data-target="#myModal" class="clickable product_client_info"></td>';
						}
					}
					/*for($i = 0; $i<count($clients_with_debt); $i++)
						echo '<td></td>';*/
					echo '</tr>';
				}
			?>
			</tbody>
		</table>
	</div>

</div>
<?php $this->load->view('footer'); ?>
