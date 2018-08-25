<?php
class Google_Sitemap_Generator_Command extends WP_CLI_Command {

	/**
	 * Re-generate the sitemap.
	 */
	public function rebuild() {
		do_action( 'sm_rebuild' );

		WP_CLI::success( 'Sitemap rebuilt.' );
	}
}
