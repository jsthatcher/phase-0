require_relative "my_solution"


# PERSON 4: DELETE MATCHING DATA
describe 'PERSON 4: my_array_deletion_method!' do
  let(:i_want_pets) { ["I", "want", 3, "pets", "but", "only", "have", 2 ] }
  it "deletes all words that contain an 'a'" do
    expect(my_array_deletion_method!(i_want_pets, "a")).to eq ["I", 3, "pets", "but", "only", 2 ]
  end

  it "operates destructively" do
     expect(my_array_deletion_method!(i_want_pets, "o").object_id).to eq(i_want_pets.object_id)
  end

end

=begin
describe 'PERSON 4: my_hash_deletion_method!' do

  let(:my_family_pets_ages) {{"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}}

  it "deletes an animal based on name" do
    expect(my_hash_deletion_method!(my_family_pets_ages, "George")).to eq({"Evi" => 6, "Hoobie" => 3, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3})
  end

  it "operates destructively" do
     expect(my_hash_deletion_method!(my_family_pets_ages, "George").object_id).to eq(my_family_pets_ages.object_id)
  end

end
=end

