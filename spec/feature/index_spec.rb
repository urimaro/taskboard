require 'spec_helper'

describe 'loginページ' do
  before :each do
    visit '/'
    sleep 5
  end
  specify 'スイムレーンの表示' do
    expect(page).to have_selector('.swimlane h1', text: 'Todo')
    expect(page).to have_selector('.swimlane h1', text: 'Doing')
    expect(page).to have_selector('.swimlane h1', text: 'Done')
  end

  specify 'Todoの表示' do
    expect(page).to have_selector('#todo div.postit div', text: 'Todoのサンプル1')
    expect(page).to have_selector('#todo div.postit div', text: 'Todoのサンプル2')
  end

  specify 'Doingの表示' do
    expect(page).to have_selector('#doing div.postit div', text: 'Doingのサンプル1')
    expect(page).to have_selector('#doing div.postit div', text: 'Doingのサンプル2')
  end

  specify 'Doneの表示' do
    expect(page).to have_selector('#done div.postit div', text: 'Doneのサンプル1')
    expect(page).to have_selector('#done div.postit div', text: 'Doneのサンプル2')
  end
end
