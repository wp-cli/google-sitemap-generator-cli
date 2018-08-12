<?php
if ( ! class_exists( 'WP_CLI' ) ) {
	return;
}
$autoload = __DIR__ . '/vendor/autoload.php';
if ( file_exists( $autoload ) ) {
	require_once $autoload;
}


class GoogleSitemapGeneratorCommand extends WP_CLI_Command {

	/**
	 * Re-generate the sitemap.
	 */
	function rebuild() {
		do_daction( 'sm_rebuild' );

		WP_CLI::success( 'Sitemap rebuilt.' );
	}
}

WP_CLI::add_command( 'google-sitemap', 'GoogleSitemapGeneratorCommand' );

