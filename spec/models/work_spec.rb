require 'rails_helper'

RSpec.describe Work, type: :model do
  before do
    @work = FactoryBot.build(:work)
  end

  describe 'ワーク投稿機能' do
    context '投稿できる場合' do
      it 'すべての値が正しく入力されていれば投稿できる' do
        expect(@work).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'automatic_thoughtが空では投稿できない' do
        @work.automatic_thought = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Automatic thought can't be blank")
      end
      it 'cognitive_distortion_idが空では投稿できない' do
        @work.cognitive_distortion_id = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Cognitive distortion can't be blank")
      end
      it 'rational_thoughtが空では投稿できない' do
        @work.rational_thought = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Rational thought can't be blank")
      end
    end
  end
end
