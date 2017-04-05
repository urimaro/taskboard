require 'rails_helper'

describe Task do
  it "有効なファクトリを持つこと" do
    expect(build(:task)).to be_valid
  end

  it "タイトルは空白を許可しないこと" do
    expect(build(:task, title: '')).to be_invalid
    expect(build(:task, title: nil)).to be_invalid
  end

  it "ステータスは Todo/Doing/Done のみを許可すること" do
    expect(build(:task, status: 'Todo')).to be_valid
    expect(build(:task, status: 'Doing')).to be_valid
    expect(build(:task, status: 'Done')).to be_valid
  end

  it "無効なステータスを許可しないこと" do
    expect(build(:task, status: 'invalid')).to be_invalid
  end

  it "ステータスは先頭が大文字であること" do
    expect(build(:task, status: 'todo')).to be_invalid
    expect(build(:task, status: 'doing')).to be_invalid
    expect(build(:task, status: 'done')).to be_invalid
  end
end
