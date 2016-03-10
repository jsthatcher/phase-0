i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |x|
    if x.include?(thing_to_delete)
      source.delete(x)
    end
  end
  source
end



=begin
def my_hash_deletion_method!(source, thing_to_delete)
  source.each do |x,y|
    if x.include?(thing_to_delete)
      source.delete(x)
    end
  end
  source
end
=end
