<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Chart using codeigniter and morris.js</title>
    
  </head>
  <body>
    <h2>Chart using Codeigniter and Morris.js</h2>
 
    <div id="graph"></div>
 
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script>
        Morris.Bar({
          element: 'graph',
          data: <?php echo $data;?>,
          xkey: 'year',
          ykeys: ['nik', 'sale', 'profit'],
          labels: ['Purchase', 'Sale', 'Profit']
        });
    </script>
  </body>
</html>