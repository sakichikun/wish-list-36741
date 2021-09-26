require 'rails_helper'

RSpec.describe Wish, type: :model do
  before do
    @wish = FactoryBot.build(:wish)
  end

  describe 'Bucket Listの保存' do
    context 'Bucket Listが投稿できる場合' do
      it 'titleを投稿できる' do
        expect(@wish).to be_valid
      end
    end

    context 'Bucket Listが投稿できない場合' do
      it 'titleが空では投稿できない' do
        @wish.title = ''
        @wish.valid?
        expect(@wish.errors.full_messages).to include("Title can't be blank")
      end

      it 'userが紐付いていなければ投稿できない' do
        @wish.user = nil
        @wish.valid?
        expect(@wish.errors.full_messages).to include('User must exist')
      end
    end
  end
end
