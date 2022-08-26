require 'rails_helper'

RSpec.describe TransactionsController, type: :request do
  let!(:transactions) {create_list(:transaction, 5)}
  let(:transaction) {create(:transaction)}
  let(:transaction_id){transactions.first.id}

  describe 'get /transactions' do
    before {get '/transactions'}
    it 'returns all the transactions' do
      expect(json).not_to be_empty
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'get /transactions/:id' do
    context 'when the record exist' do
      before {get "/transactions/#{transaction_id}"}
      it 'returns all the transactions' do
        expect(json).not_to be_empty
      end
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
    context 'when the record does not exist' do
      before {get "/transactions/20"}
      it 'returns not found message' do
        expect(response.body).to match(/Couldn't find Transaction with/)
      end
      it 'returns status code 200' do
        expect(response).to have_http_status(404)
      end
    end
  end

  describe 'put /transacrtion/:id' do
    context 'when the record exists' do
      let(:transaction) {create(:transaction)}
      let(:transaction_id){transaction.id}
      before {
        params ={"transaction":{
          "input_currency":"UGX"
        }}
        put "/transactions/#{transaction_id}", params: params
      }
      it 'should update the transaction' do
        expect(response.body).not_to be_empty
      end
    end
  end

end

