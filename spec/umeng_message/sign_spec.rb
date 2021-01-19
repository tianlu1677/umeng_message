require 'spec_helper'
module UmengMessage
  describe Sign do
    let(:sign) do
      UmengMessage::Sign.generate('ios', UmengMessage::Subject::PUSH_URL, {type: 'boardcast'})
    end
    it 'generate a sign' do
      expect(sign).to eq '39c427075b808ec33cb7a9f5294879f6'
    end
  end
end
