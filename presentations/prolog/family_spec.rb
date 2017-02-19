require 'rspec'
require_relative 'family'

describe Family do
    let! :family {Family.new}
    before :each do
        family.add_parent('Harlan', 'Nila') # Nila and Felipe are siblings
        family.add_parent('Harlan', 'Felipe')

        family.add_parent('Roselle', 'Fergus') # Fergus has cousins Nila and Felipe

        family.add_parent('Gerald', 'Harlan') # Harlan and Roselle are siblings
        family.add_parent('Gerald', 'Roselle')
    end

    describe '#siblings' do
        it 'returns other people with a shared parent' do
            expect(family.siblings('Nila')).to include 'Felipe'
            expect(family.siblings('Felipe')).to include 'Nila'
            expect(family.siblings('Harlan')).to include 'Roselle'
            expect(family.siblings('Fergus')).to be_empty
        end
    end

    describe '#cousins' do
        it 'returns people with parents who are siblings' do
            expect(family.cousins('Fergus')).to match_array ['Nila', 'Felipe']
        end
    end
end

