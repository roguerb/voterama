require 'spec_helper'

describe RankedList do
  describe ".rank" do
    let(:list) { [] }

    context "when passed a callable object" do
      let(:ranker) { double("ranker") }
      before { allow(ranker).to receive(:call) }

      it "calls call on the ranker" do
        RankedList.rank(list, ranker)
        expect(ranker).to have_received(:call).with(list)
      end
    end

    context "when passed a symbol" do
      let(:ranker) { stub_const('RankedList::StubbyRanker', double) }
      before { allow(ranker).to receive(:call) }

      it "finds the correct ranker class" do
        RankedList.rank(list, :stubby)
        expect(ranker).to have_received(:call).with(list)
      end
    end
  end
end
