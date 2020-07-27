require 'application_system_test_case'

class SitesTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit root_url

    assert_selector 'h4', text: 'About Me'
    assert_selector 'a.nav-link.active', text: 'About Me', count: 0
    assert_selector 'a.nav-link ', text: 'About Me'
    scroll_to find('section.about-me')
    assert_selector 'a.nav-link.active', text: 'About Me'
  end
end
