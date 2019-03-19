require "application_system_test_case"

class BlocksTest < ApplicationSystemTestCase
  setup do
    @block = blocks(:one)
  end

  test "visiting the index" do
    visit blocks_url
    assert_selector "h1", text: "Blocks"
  end

  test "creating a Block" do
    visit blocks_url
    click_on "New Block"

    fill_in "Block content wrapper", with: @block.block_content_wrapper
    fill_in "Block style", with: @block.block_style
    fill_in "Block type", with: @block.block_type
    fill_in "Block width", with: @block.block_width
    fill_in "Content", with: @block.content
    fill_in "Title", with: @block.title
    fill_in "Work", with: @block.work_id
    click_on "Create Block"

    assert_text "Block was successfully created"
    click_on "Back"
  end

  test "updating a Block" do
    visit blocks_url
    click_on "Edit", match: :first

    fill_in "Block content wrapper", with: @block.block_content_wrapper
    fill_in "Block style", with: @block.block_style
    fill_in "Block type", with: @block.block_type
    fill_in "Block width", with: @block.block_width
    fill_in "Content", with: @block.content
    fill_in "Title", with: @block.title
    fill_in "Work", with: @block.work_id
    click_on "Update Block"

    assert_text "Block was successfully updated"
    click_on "Back"
  end

  test "destroying a Block" do
    visit blocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Block was successfully destroyed"
  end
end
