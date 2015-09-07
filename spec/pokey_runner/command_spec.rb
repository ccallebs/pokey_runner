require 'pokey_runner/command'
require 'generators/generate/hook_generator'

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
    subject { PokeyRunner::Command.parse!('generate') }

    before do
      allow(PokeyRunner::Generators::HookGenerator).to receive(:add_hook).and_return true
    end

    it 'adds hook' do
      expect(PokeyRunner::Generators::HookGenerator).to receive(:add_hook)
      subject
    end
  end

  context 'when passed g' do
    subject { PokeyRunner::Command.parse!('g') }

    before do
      allow(PokeyRunner::Generators::HookGenerator).to receive(:add_hook).and_return true
    end

    it 'adds hook' do
      expect(PokeyRunner::Generators::HookGenerator).to receive(:add_hook)
      subject
    end
  end

  context 'when passed help' do
    subject { PokeyRunner::Command.parse!('help') }

    it 'prints documentation' do
    end
  end
end
