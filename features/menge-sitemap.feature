Feature: Generate sitemap

  Scenario: Manage sitemap via CLI
    Given a WP install

    When I run `wp plugin install google-sitemap-generator`
    Then STDOUT should contain:
      """
      Downloading install
      """
    And STDOUT should contain:
      """
      Plugin installed successfully.
      """
    And the wp-content/plugins/google-sitemap-generator directory should exist

    When I try `wp google-sitemap rebuild`
    Then STDERR should contain:
      """
      Error: Google Sitemap Generator needs to be enabled to use its WP-CLI commands.
      """

    When I run `wp plugin activate google-sitemap-generator`
    And I run `wp google-sitemap rebuild`
    Then STDOUT should contain:
      """
      Success: Sitemap rebuilt.
      """
