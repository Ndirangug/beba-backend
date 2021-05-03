<?php
   $fields = array("live"=> "0",
                    "oid"=> "112",
                    "inv"=> "112020102292999",
                    "ttl"=> $_GET['amount'],
                    "tel"=> $_GET['phone'],
                    "eml"=> $_GET['email'],
                    "vid"=> "demo",
                    "curr"=> "KES",
                    "p1"=> "airtel",
                    "p2"=> "020102292999",
                    "p3"=> "",
                    "p4"=> "900",
                    "cbk"=> $_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"],
                    "cst"=> "1",
                    "crl"=> "2"
                    );
    
    $datastring =  $fields['live'].$fields['oid'].$fields['inv'].$fields['ttl'].$fields['tel'].$fields['eml'].$fields['vid'].$fields['curr'].$fields['p1'].$fields['p2'].$fields['p3'].$fields['p4'].$fields['cbk'].$fields['cst'].$fields['crl'];
    $hashkey ="demoCHANGED";

   
    $generated_hash = hash_hmac('sha1',$datastring , $hashkey);

?>

<head><style>.loader {
            animation:spin 1s infinite linear;
            border:solid 2vmin transparent;
            border-radius:50%;
            border-right-color:#09f;
            border-top-color:#09f;
            box-sizing:border-box;
            height:20vmin;
            left:calc(50% - 10vmin);
            position:fixed;
            top:calc(50% - 10vmin);
            width:20vmin;
            z-index:1;
            &:before {
              animation:spin 2s infinite linear;
              border:solid 2vmin transparent;
              border-radius:50%;
              border-right-color:#3cf;
              border-top-color:#3cf;
              box-sizing:border-box;
              content:"";
              height:16vmin;
              left:0;
              position:absolute;
              top:0;
              width:16vmin;
            }
            &:after {
              animation:spin 3s infinite linear;
              border:solid 2vmin transparent;
              border-radius:50%;
              border-right-color:#6ff;
              border-top-color:#6ff;
              box-sizing:border-box;
              content:"";
              height:12vmin;
              left:2vmin;
              position:absolute;
              top:2vmin;
              width:12vmin;
            }
          }
          
          @keyframes spin {
            100% {
              transform:rotate(360deg);
            }
          }</style></head>

<div class="loader"/>
<FORM name="ipay" style="display:none;" action="https://payments.ipayafrica.com/v3/ke">
<?php  
                 foreach ($fields as $key => $value) {
                     echo $key;
                     echo ' :<input name="'.$key.'" type="text" value="'.$value.'"></br>';
                 }
?>
        
<INPUT name="hsh" type="text" value="<?php echo $generated_hash ?>"/>
<button type="submit">  Lipa  </button>
            
</FORM>

<script>window.onload = function(){document.forms['ipay'].submit();}</script>

       