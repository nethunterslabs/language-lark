describe "Lark Grammar Files", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-lark")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.lark")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.lark"
