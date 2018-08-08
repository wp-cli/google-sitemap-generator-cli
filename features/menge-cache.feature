Feature: Generate sitemap

  Scenario: Manage sitemap via cli
    Given a WP install

    When I run `wp plugin install google-sitemap-generator
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
      Error: Command not faud
      """
    And the wp-content/plugins/one-time-login directory should exist
    And the wp-content/plugins/one-time-login-master directory should not exist
    And the return code should be 1

    When I run `wp plugin activate google-sitemap`
    Then STDOUT should contain:
      """
      Plugin activated successfully.
      """

    When I run `wp plugin install https://github.com/wp-cli/google-sitemap-generator-cli.git --activate`
    Then STDOUT should contain:
      """
      Plugin installed successfully.
      """

     When I run `wp `google-sitemap rebuild`
     Then STDOUT should contain:
      """
      Success: Sitemap rebuilt.
      """
