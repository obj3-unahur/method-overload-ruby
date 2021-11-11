require_relative '../src/implementacion'

describe "Implementacion Suite" do
  it "Creacion Implementacion correcta" do
    implementacion = Implementacion.new([Integer, Integer]) do |n1, n2|
      n1 * n2
    end
    expect(implementacion).not_to be(nil)
  end

  it "Creacion Implementacion incorrecta falla" do
    expect {
      Implementacion.new [Integer, Integer] do |n|
        n * n
      end
    }.to raise_exception(StandardError)
  end

  it "Distancia total" do
    implementacion = Implementacion.new([Numeric, String, Object]) do |_, _, _|
    end
    expect(implementacion.distancia_total(1.0, "Hola", "Mundo!")).to eq(7)
  end
end