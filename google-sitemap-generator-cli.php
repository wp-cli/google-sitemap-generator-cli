<?php
if ( ! class_exists( 'WP_CLI' ) ) {
	return;
}
$autoload = __DIR__ . '/vendor/autoload.php';
if ( file_exists( $autoload ) ) {
	require_once $autoload;
}

WP_CLI::add_command(
	'google-sitemap', 'Google_Sitemap_Generator_Command', array(
		'before_invoke' => function() {
			if ( ! function_exists( 'GoogleSitemapGeneratorLoader' ) ) {
				WP_CLI::error( 'Google Sitemap Generator needs to be enabled to use its WP-CLI commands.' );
			}
		},
	)
);
