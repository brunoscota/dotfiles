// https://github.com/mbrt/gmailctl#configuration

// My imports
local lib = import 'gmailctl.libsonnet';

// locals are variables that can be used in the rest of the file
local me = 'brunoscota@gmail.com';
local toMe = { to: me };
local spam = {
  or: [
    { from: 'offers@godaddy.com' },{ from: 'promociones@correodirect.com' },{ from: 'CourtneyseismologyDempsey@hughesengines.com' },{ from: 'yaniyorum.ben@hotmail.com' },
    { from: 'annwatson64748@yahoo.com' },{ from: 'AdamnightdressCox@execplacement.com' },{ from: 'BeaurecurredBarron@medicinenet.com' },{ from: 'TerencebutyricWong@adobe.com' },
    { from: 'KittyGodwin13@mediaserv.net' },{ from: 'editoraabril@abrildirect.com.br' },{ from: 'msilsva@ubbi.com.br' },{ from: 'info@hi5.com' },
    { from: 'Announcements@tradepubs.nl00.net' },{ from: 'newsletter@host2k.com.br' },{ from: 'intimaonline@direitopenalvirtual.com.br' },{ from: 'dominiosenlinea1@gmail.com' },
    { from: 'revistaexame@abrildirect.com.br' },{ from: 'claro3g@claro3g.com.br' },{ from: 'vmware-code@vmwebapp.com' },{ from: 'florenciosud@hotmail.com' },
    { from: 'majon@islively.com' },{ from: 'revistainfo@abrildirect.com.br' },{ from: 'empregos@smtp12.manager.com.br' },{ from: 'info@abraweb.com.br' },
    { from: 'lojaabril@abrildirect.com.br' },{ from: 'AliarmisticeJohns@keirsey.com' },{ from: 'contato@meadiciona.com' },{ from: 'satvayurvedadf@gmail.com' },
    { from: 'noreply@yagbu.net' },{ from: 'no-reply@talktomechuck.net' },{ from: 'news@ibexpert.com' },{ from: 'donotreply@community.upwork.com' },
    { from: 'news@palitoman.com.br' },{ from: 'dontstayvirgin@movielol.org' },{ from: 'videolarcom@zmd.videolar.com' },{ from: 'support@100webspace.com' },
    { from: 'novidades@mercadolivreofertas.com.br' },{ from: 'empregos@smtp10.manager.com.br' },{ from: 'ingresso@ingresso.com.br' },{ from: 'arbsoft@gmail.com' },
    { from: 'member-3801061@shtyle.fm' },{ from: 'administracao@g-sat.net' },{ from: 'help-subscriber@phpclasses.org' },{ from: 'NoReply@communityhub.microsoft.com' },
  ],
};

// Here we set our rules
local rules = [
  {
    filter: spam,
    actions: { delete: true },
  },
  {
    filter: { or: [ { from: 'faturadigital@itaupersonnalite.com.br' }, { from: 'faturaporemail@santander.com.br' } ] },
    actions: { labels: ['Fatura do Cartão'] },
  }
];

// Here is where we define our configuration and apply the rules
{
  version: 'v1alpha3',
  author: {
    name: 'Bruno Scota de Carvalho',
    email: me,
  },
  rules: rules
}
