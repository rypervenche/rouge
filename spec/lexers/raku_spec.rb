# -*- coding: utf-8 -*- #

describe Rouge::Lexers::Raku do
  let(:subject) { Rouge::Lexers::Raku.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.raku'
      assert_guess :filename => 'foo.rakumod'
      assert_guess :filename => 'foo.rakudoc'
      assert_guess :filename => 'foo.rakutest'
      assert_guess :filename => 'foo.pl6'
      assert_guess :filename => 'foo.pm6'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-raku'
      assert_guess :mimetype => 'application/x-raku'
    end

    it 'guesses by source' do
      assert_guess :source => '#!/usr/bin/env raku'
    end
  end
end
