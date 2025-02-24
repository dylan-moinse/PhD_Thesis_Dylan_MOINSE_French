# Utilisation de .latexmkrc (latexmkrc.00)

@default_files = ('main.tex');

set_tex_cmds( '-synctex=-1 --shell-escape %O %S' );

#$latex = 'latex -interaction=nonstopmode -shell-escape -synctex=-1';
#$pdflatex = 'pdflatex -interaction=nonstopmode -shell-escape -synctex=-1';
$pdflatex = 'lualatex -interaction=nonstopmode -shell-escape -synctex=-1' ;
$pdf_mode = 1;        # tex -> pdf
$pdf_mode = 2;        # tex -> ps -> pdf
$pdf_mode = 4;	      # luatex
$pdf_previewer = 'start xdg-open';

$bibtex_use = 2;

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
#  if ( $silent ) {
#    system ("makeglossaries -q $_[0]");
#  }
#  else {
    system ("makeglossaries $_[0]");
#  };
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';

## Index
#  https://geekographie.maieul.net/79
#$makeindex = "makeindex";
#$makeindex = "splitindex";
#$makeindex = 'makeindex %S; splitindex %S;';

#############
@ist = glob("*.ist");
if (scalar(@ist) > 0) {
    $makeindex = "makeindex -s $ist[0] %O -o %D %S";
}

# Removing extra files
$clean_ext .= "bbl nav out snm mtc* run.xml fls maf tex~ report ilg idx bbl~ mst loc synctex";

#Cf. docs
# https://mg.readthedocs.io/latexmk.html
# https://tex.stackexchange.com/questions/1226/how-to-make-latexmk-use-makeglossaries
do './gitinfo2-latexmk/gitinfo2.pm';

# $out_dir = 'output';
add_cus_dep('mp', '1', 0, 'mpost');
sub mpost {
    my $file = $_[0];
    my ($name, $path) =  fileparse( $file );
    pushd( $path );
    my $return = system "mpost $name" ;
    popd();
    return $return;
}

