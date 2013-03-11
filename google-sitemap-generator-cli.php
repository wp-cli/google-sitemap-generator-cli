<?php
/*
Plugin Name: Google Sitemap Generator CLI
Version: 1.0
Description: A CLI interface for the Google Sitemap Generator plugin
Author: WP-CLI Team
Author URI: http://github.com/wp-cli
Plugin URI: http://github.com/wp-cli/google-sitemap-generator-cli
License: MIT
*/

function google_sitemap_generator_cli_init() {
	if ( !class_exists( 'GoogleSitemapGeneratorLoader' ) )
		return;

	if ( defined('WP_CLI') && WP_CLI ) {
		include dirname(__FILE__) . '/sitemap-cli.php';
	}
}
add_action( 'plugins_loaded', 'google_sitemap_generator_cli_init' );

