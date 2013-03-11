<?php

class GoogleSitemapGeneratorCommand extends WP_CLI_Command {

	/**
	 * Re-generate the sitemap.
	 */
	function rebuild() {
		do_action( 'sm_rebuild' );

		WP_CLI::success( 'Sitemap rebuilt.' );
	}
}

WP_CLI::add_command( 'google-sitemap', 'GoogleSitemapGeneratorCommand' );

