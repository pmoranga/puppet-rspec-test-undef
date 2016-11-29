require 'spec_helper'

describe 'test', :type => :class do
  context 'defaults' do
    context 'When fact is desired undef ' do

      describe 'using :undef' do
        let :facts do
          {
            :fact1 => :undef
          }
        end
        it { is_expected.to contain_class('test') }
      end
      describe 'using nil' do
        let :facts do
          {
            :fact1 => nil
          }
        end
        it { is_expected.to contain_class('test') }
      end

    end
  end

end
