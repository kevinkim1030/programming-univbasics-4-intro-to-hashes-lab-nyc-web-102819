def new_hash
  new_hash = {}
end

def my_hash
  my_hash = {name: "Kevin"}
end

def pioneer
  pioneer = {name: "Grace Hopper"}
end

def id_generator
  id_generator = {id: 9}
end

def my_hash_creator(key, value)
  my_hash_creator = {key=> value}
end


def read_from_hash(hash, key)
    read_from_hash = {
      :name => "Steve",
      'name' => "Tzvi"
      :age => 31
    }
    return read_from_hash[key]

  # return the correct value using the hash and key parameters
end

def update_counting_hash(hash, key)
  update_counting_hash = {"hello" => 1}
  # given a hash and a key as parameters, return an updated hash
  # if the provided key is not present in the hash, add it and assign it to the value of 1
  # if the provided key is present, increment its value by 1
end


describe "updating data in a hash" do
  describe "update_counting_hash" do
    it "accepts a hash and key as parameters" do
      expect{ update_counting_hash({},'hello') }.to_not raise_error
    end

    it "if key is not present, returns a hash with the provided key assigned to the value of 1" do
      expect(update_counting_hash({},'hello')).to eq({'hello' => 1})
      expect(update_counting_hash({total: 5},:age)).to eq({total: 5, age: 1})
    end

    it "if key is present, returns a hash where the key's value is incremented by 1" do
      expect(update_counting_hash({count: 5},:count)).to eq({count: 6})
      expect(update_counting_hash({'number' => 1, 'amount' => 50},'number')).to eq({'number' => 2, 'amount' => 50})
    end
  end

end

