require 'spec_helper'

describe 'loginページ' do
  specify 'スイムレーンの表示' do
    visit '/'
    expect(page).to have_selector('.swimlane h1', text: 'Todo')
    expect(page).to have_selector('.swimlane h1', text: 'Doing')
    expect(page).to have_selector('.swimlane h1', text: 'Done')
  end

  specify 'Todoの表示' do
    visit '/'
    expect(page).to have_selector('div', text: 'Todoのサンプル1')
  end
end
