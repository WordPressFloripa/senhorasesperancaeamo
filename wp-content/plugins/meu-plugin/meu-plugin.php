<?php
/*
Plugin Name: Meu Plugin Lindo
Description: Adiciona o Google analytics usando o wp_head.
Author: Felipe Figueiredo
Version: 1.0
*/

/* ADICIONA NO HEADER */

add_action( 'wp_head', 'google_scripts' );
function google_scripts(){
  ?>
  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-145149358-1"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-145149358-1');
  </script>
  <?php
}
