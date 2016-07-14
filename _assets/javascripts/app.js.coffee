#= require bootstrap
#= require magnific-popup
#= require config
#= require blog

$('.gallery').magnificPopup({
  type: 'image',
  delegate: 'a',
  tClose: 'Fechar (Esc)',
  tLoading: 'Carregando...',
  gallery:{
    tPrev:'Voltar (Seta esquerda)',
    tNext: 'Avançar (Seta direita)',
    tCounter:'%curr% de %total%',
    enabled:true
  },
  image:{
    tError: '<a href="%url%">Imagem</a> não pode ser carregada.'
  }
});
