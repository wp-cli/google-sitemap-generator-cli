Feature: Generate sitemap

  Scenario: Manage sitemap via cli
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
      Error: 'google-sitemap' is not a registered wp command. See 'wp help' for available commands.
      """

    When I run `wp plugin activate google-sitemap`
    Then STDOUT should contain:
      """
      Plugin activated successfully.
      """

    When I run `wp plugin install https://github.com/wojsmol/google-sitemap-generator-cli/archive/test.zip --activate`
    Then STDOUT should contain:
      """
      Plugin installed successfully.
      """

     When I run `wp google-sitemap rebuild`
     Then STDOUT should contain:
      """
      Success: Sitemap rebuilt.
      """
