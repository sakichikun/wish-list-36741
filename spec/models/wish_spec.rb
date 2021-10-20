require 'rails_helper'

RSpec.describe Wish, type: :model do
  before do
    @wish = FactoryBot.build(:wish)
  end

  describe 'Bucket Listの保存' do
    context 'Bucket Listが投稿できる場合' do
      it 'title,due_time,state_id,imageが存在していれば投稿できる' do
        expect(@wish).to be_valid
      end

      it 'imageが空でも投稿できる' do
        @wish.image = nil
        expect(@wish).to be_valid
      end
    end

    context 'Bucket Listが投稿できない場合' do
      it 'titleが空では投稿できない' do
        @wish.title = ''
        @wish.valid?
        expect(@wish.errors.full_messages).to include("Title can't be blank")
      end

      it 'due_timeが空では投稿できない' do
        @wish.due_time = ''
        @wish.valid?
        expect(@wish.errors.full_messages).to include("Due time can't be blank")
      end

      it 'state_idに1が選択されている場合は投稿できない' do
        @wish.state_id = '1'
        @wish.valid?
        expect(@wish.errors.full_messages).to include("State can't be blank")
      end

      it 'userが紐付いていなければ投稿できない' do
        @wish.user = nil
        @wish.valid?
        expect(@wish.errors.full_messages).to include('User must exist')
      end
    end
  end
end
