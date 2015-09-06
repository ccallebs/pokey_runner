require 'pokey_runner/command'

describe PokeyRunner::Command do
  context 'when passed start' do
    subject { PokeyRunner::Command.parse!('start') }

    before do
      allow(PokeyRunner).to receive(:run!).and_return true
    end

    it 'begins running' do
      expect(PokeyRunner).to receive(:run!)
      subject
    end
  end

  context 'when passed s' do
    subject { PokeyRunner::Command.parse!('s') }

    before do
      allow(PokeyRunner).to receive(:run!).and_return true
    end

    it 'beings running' do
      expect(PokeyRunner).to receive(:run!)
      subject
    end
  end

  context 'when passed generate' do
    it 'adds hook' do

    end
  end

  context 'when passed g' do
    it 'adds hook' do

    end
  end

  context 'when passed help' do
    it 'prints documentation' do

    end
  end
end
