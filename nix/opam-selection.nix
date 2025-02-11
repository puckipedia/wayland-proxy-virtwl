### This file is generated by opam2nix.

self:
let
    lib = self.lib;
    pkgs = self.pkgs;
    repoPath = self.repoPath;
    repos = 
    {
      opam-repository = 
      rec {
        fetch = 
        {
          owner = "ocaml";
          repo = "opam-repository";
          rev = "eb733d35a0a83a2635d25cd85e905661d145aead";
          sha256 = "0hysvfkwqfy82qlyi6qnh5pxl6gk6rj74lqncfvhs8nr9jl6bq4f";
        };
        src = (pkgs.fetchFromGitHub) fetch;
      };
    };
    selection = self.selection;
in
{
  format-version = 4;
  ocaml-version = "5.0.0";
  repos = repos;
  selection = 
  {
    base = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        dune-configurator = selection.dune-configurator;
        ocaml = selection.ocaml;
        sexplib0 = selection.sexplib0;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0gx21y0rnza0dqj3i1fdblf9n3cd56awyd9md3dd8v41f1fvqi97";
        package = "packages/base/base.v0.15.1";
      };
      pname = "base";
      src = pkgs.fetchurl 
      {
        sha256 = "050syrp6v00gn50d6xvwv6a36zsk4zmahymgllxpw9paf4qk0pkm";
        url = "https://github.com/janestreet/base/archive/refs/tags/v0.15.1.tar.gz";
      };
      version = "v0.15.1";
    };
    base-bytes = 
    {
      opamInputs = 
      {
        ocaml = selection.ocaml;
        ocamlfind = selection.ocamlfind;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0a68lmbf68jgm1i3b59j2sc3ha9yhv4678f9mfwwvczw88prq7l3";
        package = "packages/base-bytes/base-bytes.base";
      };
      pname = "base-bytes";
      src = null;
      version = "base";
    };
    base-threads = 
    {
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1c4bpyh61ampjgk5yh3inrgcpf1z1xv0pshn54ycmpn4dyzv0p2x";
        package = "packages/base-threads/base-threads.base";
      };
      pname = "base-threads";
      src = null;
      version = "base";
    };
    base-unix = 
    {
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0mpsvb7684g723ylngryh15aqxg3blb7hgmq2fsqjyppr36iyzwg";
        package = "packages/base-unix/base-unix.base";
      };
      pname = "base-unix";
      src = null;
      version = "base";
    };
    cmdliner = 
    {
      opamInputs = {
                     ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0q1n1rg7pg34h75k02dmfpcwnhcih1hxaiifzi99ac9yhz6k4wg4";
        package = "packages/cmdliner/cmdliner.1.2.0";
      };
      pname = "cmdliner";
      src = pkgs.fetchurl 
      {
        sha256 = "0y00vnlk3nim8bh4gvimdpg71gp22z3b35sfyvb4yf98j1c11vdg";
        url = "https://erratique.ch/software/cmdliner/releases/cmdliner-1.2.0.tbz";
      };
      version = "1.2.0";
    };
    conf-pkg-config = 
    {
      buildInputs = [ (pkgs.pkgconfig) ];
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1rli6809glz5g9xwp4wsjidc39za4n58xcpkamy6fymfnqha225n";
        package = "packages/conf-pkg-config/conf-pkg-config.2";
      };
      pname = "conf-pkg-config";
      src = null;
      version = "2";
    };
    cppo = 
    {
      opamInputs = 
      {
        base-unix = selection.base-unix;
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:19i6yqv9lq09v3xw1sfqayh40sihhd4hfyvk9dwz1m5dv1g63xlp";
        package = "packages/cppo/cppo.1.6.9";
      };
      pname = "cppo";
      src = pkgs.fetchurl 
      {
        sha256 = "0sm2vn5y7w7fyrwkv7f86y4nvs5vsrqy1x2nidy0lcqxq62ns0qn";
        url = "https://github.com/ocaml-community/cppo/archive/v1.6.9.tar.gz";
      };
      version = "1.6.9";
    };
    csexp = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:01lc95kz13gpki4xazyh6n20kv1g9inyb5myv240wl2n9v50z8fl";
        package = "packages/csexp/csexp.1.5.1";
      };
      pname = "csexp";
      src = pkgs.fetchurl 
      {
        sha256 = "00mc19f89pxpmjl62862ya5kjcfrl8rjzvs00j05h2m9bw3f81fn";
        url = "https://github.com/ocaml-dune/csexp/releases/download/1.5.1/csexp-1.5.1.tbz";
      };
      version = "1.5.1";
    };
    cstruct = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        fmt = selection.fmt;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0r6dag0mhrs61gyh6pcf888s5npmgwj9rxag1d6a700p866cza7q";
        package = "packages/cstruct/cstruct.6.2.0";
      };
      pname = "cstruct";
      src = pkgs.fetchurl 
      {
        sha256 = "0qiyy1h7qsy90hdl01qdsg4rv61f3d5sp8wg2i4q63jqj8rhfy4s";
        url = "https://github.com/mirage/ocaml-cstruct/releases/download/v6.2.0/cstruct-6.2.0.tbz";
      };
      version = "6.2.0";
    };
    cstruct-lwt = 
    {
      opamInputs = 
      {
        base-unix = selection.base-unix;
        cstruct = selection.cstruct;
        dune = selection.dune;
        lwt = selection.lwt;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:14cq0dnnz3bsw00m559501wyfgy7fsj0qyb1mlv304wmhj1j2c1v";
        package = "packages/cstruct-lwt/cstruct-lwt.6.2.0";
      };
      pname = "cstruct-lwt";
      src = pkgs.fetchurl 
      {
        sha256 = "0qiyy1h7qsy90hdl01qdsg4rv61f3d5sp8wg2i4q63jqj8rhfy4s";
        url = "https://github.com/mirage/ocaml-cstruct/releases/download/v6.2.0/cstruct-6.2.0.tbz";
      };
      version = "6.2.0";
    };
    dune = 
    {
      opamInputs = 
      {
        base-threads = selection.base-threads;
        base-unix = selection.base-unix;
        ocaml = selection.ocaml or null;
        ocamlfind-secondary = selection.ocamlfind-secondary or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1dmd0vj55mjz2f5z6rifpqvq76pph3209xkiy67skh52daz80gds";
        package = "packages/dune/dune.3.7.1";
      };
      pname = "dune";
      src = pkgs.fetchurl 
      {
        sha256 = "1hsl3j8wpxs2mpbr4x3ikf1vhynj2785256nh2ns52019kqkiz5d";
        url = "https://github.com/ocaml/dune/releases/download/3.7.1/dune-3.7.1.tbz";
      };
      version = "3.7.1";
    };
    dune-configurator = 
    {
      opamInputs = 
      {
        base-unix = selection.base-unix;
        csexp = selection.csexp;
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0dsn0s563pb0abl1g45x7hl8l2dbdmfn567zvp5bc3l7z54k28b0";
        package = "packages/dune-configurator/dune-configurator.3.7.1";
      };
      pname = "dune-configurator";
      src = pkgs.fetchurl 
      {
        sha256 = "1hsl3j8wpxs2mpbr4x3ikf1vhynj2785256nh2ns52019kqkiz5d";
        url = "https://github.com/ocaml/dune/releases/download/3.7.1/dune-3.7.1.tbz";
      };
      version = "3.7.1";
    };
    fmt = 
    {
      opamInputs = 
      {
        base-unix = selection.base-unix or null;
        cmdliner = selection.cmdliner or null;
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
        topkg = selection.topkg;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1czh5i3i4mkf9xfasji3v7n821qmnnandlklh67ali0x87brldny";
        package = "packages/fmt/fmt.0.9.0";
      };
      pname = "fmt";
      src = pkgs.fetchurl 
      {
        sha256 = "0q8j2in2473xh7k4hfgnppv9qy77f2ih89yp6yhpbp92ba021yzi";
        url = "https://erratique.ch/software/fmt/releases/fmt-0.9.0.tbz";
      };
      version = "0.9.0";
    };
    logs = 
    {
      opamInputs = 
      {
        base-threads = selection.base-threads or null;
        cmdliner = selection.cmdliner or null;
        fmt = selection.fmt or null;
        js_of_ocaml = selection.js_of_ocaml or null;
        lwt = selection.lwt or null;
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
        topkg = selection.topkg;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0pys6d25bghrwvwd4gflib2yyp5fvdy0rkivbdyli5dmp5j35a3n";
        package = "packages/logs/logs.0.7.0";
      };
      pname = "logs";
      src = pkgs.fetchurl 
      {
        sha256 = "1jnmd675wmsmdwyb5mx5b0ac66g4c6gpv5s4mrx2j6pb0wla1x46";
        url = "https://erratique.ch/software/logs/releases/logs-0.7.0.tbz";
      };
      version = "0.7.0";
    };
    lwt = 
    {
      opamInputs = 
      {
        base-threads = selection.base-threads or null;
        base-unix = selection.base-unix or null;
        conf-libev = selection.conf-libev or null;
        cppo = selection.cppo;
        dune = selection.dune;
        dune-configurator = selection.dune-configurator;
        ocaml = selection.ocaml;
        ocplib-endian = selection.ocplib-endian;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0y6rif2d9ggd7mwv4hipawn8jjfn4vdk57i6zld2izqpj6f6m9kc";
        package = "packages/lwt/lwt.5.6.1";
      };
      pname = "lwt";
      src = pkgs.fetchurl 
      {
        sha256 = "1837iagnba58018ag82c9lwaby01c031547n08jjyj8q5q6lfjgb";
        url = "https://github.com/ocsigen/lwt/archive/5.6.1.tar.gz";
      };
      version = "5.6.1";
    };
    num = 
    {
      opamInputs = 
      {
        ocaml = selection.ocaml;
        ocamlfind = selection.ocamlfind;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0sz340iwmhl52zv76lx4r21d1c1s8hpjpcb60c3fwikhfcwx2573";
        package = "packages/num/num.1.4";
      };
      pname = "num";
      src = pkgs.fetchurl 
      {
        sha256 = "090gl27g84r3s2b12vgkz8fp269jqlrhx4lpg7008yviisv8hl01";
        url = "https://github.com/ocaml/num/archive/v1.4.tar.gz";
      };
      version = "1.4";
    };
    ocaml = 
    {
      opamInputs = 
      {
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
        ocaml-config = selection.ocaml-config;
        ocaml-system = selection.ocaml-system or null;
        ocaml-variants = selection.ocaml-variants or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:114f8w7d5gp7wjnn3q2pyclxj724kwv39nnqch7vk3d2hvnqvlpj";
        package = "packages/ocaml/ocaml.5.0.0";
      };
      pname = "ocaml";
      src = null;
      version = "5.0.0";
    };
    ocaml-base-compiler = 
    {
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1i7c2vwfkpjcifg4wr7iamiaw8cibkqx8jha25wj5bmn3ppwxjfh";
        package = "packages/ocaml-base-compiler/ocaml-base-compiler.5.0.0";
      };
      pname = "ocaml-base-compiler";
      src = pkgs.fetchurl 
      {
        sha256 = "0nwyg8vsj139ypx983xyqh2mjbnjp6800bn6wswzr0lvl45kvykj";
        url = "https://github.com/ocaml/ocaml/archive/5.0.0.tar.gz";
      };
      version = "5.0.0";
    };
    ocaml-compiler-libs = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1blynia10j8vyj559kcvc7ic69zq6qjjn092fcsjzfw6czd8ya2c";
        package = "packages/ocaml-compiler-libs/ocaml-compiler-libs.v0.12.4";
      };
      pname = "ocaml-compiler-libs";
      src = pkgs.fetchurl 
      {
        sha256 = "0q3pl20pkx410gw9g4m26qq6dmzi9qan2dqlga6c2ifc6pnckjaf";
        url = "https://github.com/janestreet/ocaml-compiler-libs/releases/download/v0.12.4/ocaml-compiler-libs-v0.12.4.tbz";
      };
      version = "v0.12.4";
    };
    ocaml-config = 
    {
      opamInputs = 
      {
        dkml-base-compiler = selection.dkml-base-compiler or null;
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-variants = selection.ocaml-variants or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1z5qp2nx4aryinqrg2cx008la63n8ajjpsgyrwkv8ny3wdz9d5fb";
        package = "packages/ocaml-config/ocaml-config.3";
      };
      pname = "ocaml-config";
      src = null;
      version = "3";
    };
    ocamlbuild = 
    {
      opamInputs = {
                     ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0l3lc0z5bzlmsndqv8ylwwzq0p2idzkbwmrrsfkngxh3kls2c5xy";
        package = "packages/ocamlbuild/ocamlbuild.0.14.2";
      };
      pname = "ocamlbuild";
      src = pkgs.fetchurl 
      {
        sha256 = "1ccihx2jnk3nsprx2w2kckqqq0bd0skq9i9sm01cg53p0fvdmlk2";
        url = "https://github.com/ocaml/ocamlbuild/archive/refs/tags/0.14.2.tar.gz";
      };
      version = "0.14.2";
    };
    ocamlfind = 
    {
      opamInputs = 
      {
        graphics = selection.graphics or null;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1qs30vvj6mbrrgaxy54kw8zqqghxaywygyhspzhpdkwkl98j3y76";
        package = "packages/ocamlfind/ocamlfind.1.9.6";
      };
      pname = "ocamlfind";
      src = pkgs.fetchurl 
      {
        sha256 = "18ih56m5z13z5zla7wdrin4y1bdz7pwpjn7znmnn0sz1k8krdy9d";
        url = "http://download.camlcity.org/download/findlib-1.9.6.tar.gz";
      };
      version = "1.9.6";
    };
    ocplib-endian = 
    {
      opamInputs = 
      {
        base-bytes = selection.base-bytes;
        cppo = selection.cppo;
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1jldvb471gyhkrzwfvqg722l3a8dc37hhhyas66skjzfmqyi2pnh";
        package = "packages/ocplib-endian/ocplib-endian.1.2";
      };
      pname = "ocplib-endian";
      src = pkgs.fetchurl 
      {
        sha256 = "085kskr0cxcnv2d62n3jq1r273p7giisy56zfl26mm7amvl79blp";
        url = "https://github.com/OCamlPro/ocplib-endian/archive/refs/tags/1.2.tar.gz";
      };
      version = "1.2";
    };
    parsexp = 
    {
      opamInputs = 
      {
        base = selection.base;
        dune = selection.dune;
        ocaml = selection.ocaml;
        sexplib0 = selection.sexplib0;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0iplx26dvqbnp03ivh18gvak7l7khnklw2gfvr6yi3nmkdpgvvn2";
        package = "packages/parsexp/parsexp.v0.15.0";
      };
      pname = "parsexp";
      src = pkgs.fetchurl 
      {
        sha256 = "14yi8dnmpkp52i44aa2knw7m6ib8s285j0k3i240qz5c28mr1vni";
        url = "https://ocaml.janestreet.com/ocaml-core/v0.15/files/parsexp-v0.15.0.tar.gz";
      };
      version = "v0.15.0";
    };
    ppx_cstruct = 
    {
      opamInputs = 
      {
        cstruct = selection.cstruct;
        dune = selection.dune;
        ocaml = selection.ocaml;
        ppxlib = selection.ppxlib;
        sexplib = selection.sexplib;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1hwdmjf47dhy6mziksbyfc7d3v19k4mshrlbvi32glkjgriqzf91";
        package = "packages/ppx_cstruct/ppx_cstruct.6.2.0";
      };
      pname = "ppx_cstruct";
      src = pkgs.fetchurl 
      {
        sha256 = "0qiyy1h7qsy90hdl01qdsg4rv61f3d5sp8wg2i4q63jqj8rhfy4s";
        url = "https://github.com/mirage/ocaml-cstruct/releases/download/v6.2.0/cstruct-6.2.0.tbz";
      };
      version = "6.2.0";
    };
    ppx_derivers = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1hj1ina0n7pgz16mrvijczapw75pd0hif0i18dpw7d1fyg2qr8py";
        package = "packages/ppx_derivers/ppx_derivers.1.2.1";
      };
      pname = "ppx_derivers";
      src = pkgs.fetchurl 
      {
        sha256 = "159vqy616ni18mn0dlv8c2y4h7mb4hahwjn53yrr59yyhzhmwndn";
        url = "https://github.com/ocaml-ppx/ppx_derivers/archive/1.2.1.tar.gz";
      };
      version = "1.2.1";
    };
    ppxlib = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
        ocaml-compiler-libs = selection.ocaml-compiler-libs;
        ppx_derivers = selection.ppx_derivers;
        sexplib0 = selection.sexplib0;
        stdlib-shims = selection.stdlib-shims;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1m9fbly59c9s1g7wfjrk71g4aljrkasm1zlxdqhphx0kqy2m2034";
        package = "packages/ppxlib/ppxlib.0.29.1";
      };
      pname = "ppxlib";
      src = pkgs.fetchurl 
      {
        sha256 = "0yfxwmkcgrn8j0m8dsklm7d979119f0jszrfc6kdnks1f23qrsn8";
        url = "https://github.com/ocaml-ppx/ppxlib/releases/download/0.29.1/ppxlib-0.29.1.tbz";
      };
      version = "0.29.1";
    };
    sexplib = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        num = selection.num;
        ocaml = selection.ocaml;
        parsexp = selection.parsexp;
        sexplib0 = selection.sexplib0;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0n3j8px5f2vab0d47p6zm4daymfq7w7n4kfgplprf56gd9w3irvb";
        package = "packages/sexplib/sexplib.v0.15.1";
      };
      pname = "sexplib";
      src = pkgs.fetchurl 
      {
        sha256 = "1g5wxlwrs50r3kgfyqqm608iw0yfrj4ra7s43z05imwj1llpvnkm";
        url = "https://github.com/janestreet/sexplib/archive/refs/tags/v0.15.1.tar.gz";
      };
      version = "v0.15.1";
    };
    sexplib0 = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1yg5rknfbx67wrs3gampx3jmcw9si38n90cj4kg5626k41nmhsc0";
        package = "packages/sexplib0/sexplib0.v0.15.1";
      };
      pname = "sexplib0";
      src = pkgs.fetchurl 
      {
        sha256 = "1cv78931di97av82khqwmx5s51mrn9d2b82z0si88gxwndz83kg8";
        url = "https://github.com/janestreet/sexplib0/archive/refs/tags/v0.15.1.tar.gz";
      };
      version = "v0.15.1";
    };
    stdlib-shims = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1hwyzzcx7clz4p58fj3n6frq2srbxdmhmxxd6n6mpw9gj2vs6yiw";
        package = "packages/stdlib-shims/stdlib-shims.0.3.0";
      };
      pname = "stdlib-shims";
      src = pkgs.fetchurl 
      {
        sha256 = "0jnqsv6pqp5b5g7lcjwgd75zqqvcwcl5a32zi03zg1kvj79p5gxs";
        url = "https://github.com/ocaml/stdlib-shims/releases/download/0.3.0/stdlib-shims-0.3.0.tbz";
      };
      version = "0.3.0";
    };
    topkg = 
    {
      opamInputs = 
      {
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1411142m653308lj3nlgbv2wvww2i5hyfdgz94l2b3ga3qdp7szc";
        package = "packages/topkg/topkg.1.0.7";
      };
      pname = "topkg";
      src = pkgs.fetchurl 
      {
        sha256 = "06dya9n5im3dbqqv4l6yssi8siw111c1hp94n5y14vddyg9jmhjz";
        url = "https://erratique.ch/software/topkg/releases/topkg-1.0.7.tbz";
      };
      version = "1.0.7";
    };
    wayland = 
    {
      opamInputs = 
      {
        cmdliner = selection.cmdliner;
        cstruct = selection.cstruct;
        dune = selection.dune;
        fmt = selection.fmt;
        logs = selection.logs;
        lwt = selection.lwt;
        ocaml = selection.ocaml;
        xmlm = selection.xmlm;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1i1qbwa8crc8ijma73i51ns9a4r78a9q68dx5zk55h9i66aq8ygi";
        package = "packages/wayland/wayland.1.1";
      };
      pname = "wayland";
      src = pkgs.fetchurl 
      {
        sha256 = "0b7czgh08i6xcx3fsz6vd19sfyngwi0i27jdzg8cnjgrgwnagv6d";
        url = "https://github.com/talex5/ocaml-wayland/releases/download/v1.1/wayland-1.1.tbz";
      };
      version = "1.1";
    };
    wayland-proxy-virtwl = 
    {
      buildInputs = [ (pkgs.libdrm) ];
      opamInputs = 
      {
        cmdliner = selection.cmdliner;
        conf-pkg-config = selection.conf-pkg-config;
        cstruct = selection.cstruct;
        cstruct-lwt = selection.cstruct-lwt;
        dune = selection.dune;
        fmt = selection.fmt;
        logs = selection.logs;
        ocaml = selection.ocaml;
        ppx_cstruct = selection.ppx_cstruct;
        wayland = selection.wayland;
      };
      opamSrc = "wayland-proxy-virtwl.opam";
      pname = "wayland-proxy-virtwl";
      src = self.directSrc "wayland-proxy-virtwl";
      version = "development";
    };
    xmlm = 
    {
      opamInputs = 
      {
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
        topkg = selection.topkg;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:09kj1rmn4m4agrgr23g65p47nqyp6mqqpws66jsk8z664p2h8wjn";
        package = "packages/xmlm/xmlm.1.4.0";
      };
      pname = "xmlm";
      src = pkgs.fetchurl 
      {
        sha256 = "1ynrjba3wm3axscvggrfijfgsznmphhxnkffqch67l9xiqjm44h9";
        url = "https://erratique.ch/software/xmlm/releases/xmlm-1.4.0.tbz";
      };
      version = "1.4.0";
    };
  };
}

