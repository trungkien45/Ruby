require 'swagger_helper'

RSpec.describe 'controller_name', type: :request do

  path '/controller_name/action1' do

    post('action1 controller_name') do
      consumes 'application/json'
      parameter in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          model: { type: :string }
        },
        required: %w[name model]
      }
        
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/controller_name/action2' do

    post('action2 controller_name') do
      consumes 'application/json'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          car: {
            type: :object,
            properties:{
              name: { type: :string },
              model: { type: :string }  
            },
            required: %w[name model]
          }
        }
      }
      response(200, 'successful') do  
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
