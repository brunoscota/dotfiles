// https://github.com/mbrt/gmailctl#configuration

// My imports
local lib = import 'gmailctl.libsonnet';

// locals are variables that can be used in the rest of the file
local me = 'brunoscota@gmail.com';
local toMe = { to: me };

local labels = [
  { name: 'Fatura do Cartão' },
  { name: 'Faculdade' },
];

local spam = {
  or: [
    { from:'offers@godaddy.com' },{ from:'promociones@correodirect.com' },{ from:'CourtneyseismologyDempsey@hughesengines.com' },{ from:'yaniyorum.ben@hotmail.com' },
    { from:'annwatson64748@yahoo.com' },{ from:'AdamnightdressCox@execplacement.com' },{ from:'BeaurecurredBarron@medicinenet.com' },{ from:'TerencebutyricWong@adobe.com' },
    { from:'KittyGodwin13@mediaserv.net' },{ from:'editoraabril@abrildirect.com.br' },{ from:'msilsva@ubbi.com.br' },{ from:'info@hi5.com' },{ from: 'info@robocore.net' },
    { from:'Announcements@tradepubs.nl00.net' },{ from:'newsletter@host2k.com.br' },{ from:'intimaonline@direitopenalvirtual.com.br' },{ from:'dominiosenlinea1@gmail.com' },
    { from:'revistaexame@abrildirect.com.br' },{ from:'claro3g@claro3g.com.br' },{ from:'vmware-code@vmwebapp.com' },{ from:'florenciosud@hotmail.com' },
    { from:'majon@islively.com' },{ from:'revistainfo@abrildirect.com.br' },{ from:'empregos@smtp12.manager.com.br' },{ from:'info@abraweb.com.br' }, { from:'hello@mail.plex.tv' },
    { from:'lojaabril@abrildirect.com.br' },{ from:'AliarmisticeJohns@keirsey.com' },{ from:'contato@meadiciona.com' },{ from:'satvayurvedadf@gmail.com' },
    { from:'noreply@yagbu.net' },{ from:'no-reply@talktomechuck.net' },{ from:'news@ibexpert.com' },{ from:'donotreply@community.upwork.com' }, { from: 'team@bit.dev' },
    { from:'news@palitoman.com.br' },{ from:'dontstayvirgin@movielol.org' },{ from:'videolarcom@zmd.videolar.com' },{ from:'support@100webspace.com' },{ from: 'no-reply@your.audacy.com' },
    { from:'novidades@mercadolivreofertas.com.br' },{ from:'empregos@smtp10.manager.com.br' },{ from:'ingresso@ingresso.com.br' },{ from:'arbsoft@gmail.com' },
    { from:'member-3801061@shtyle.fm' },{ from:'administracao@g-sat.net' },{ from:'help-subscriber@phpclasses.org' },{ from:'NoReply@communityhub.microsoft.com' },
    { from:'shoulder@news.shoulder.com.br' },{ from:'reply@e.thenorthface.com' },{ from:'ubuntu-hardened@lists.ubuntu.com' },{ from: '@relacionamento.eqi-investimentos.com' },
    { from:'transacional@toroemail.toroinvestimentos.com.br' },{ from:'mail@mg.baselime.io' },{ from:'no-reply@e.udemymail.com'},{ from:'mmartan@inf.mmartan.com.br' },
    { from: 'promotions@kto.com'},{ from: 'no-reply@folhadespaulo.com.br'},{ from: 'Coursera@m.learn.coursera.org'},{ from: 'avianca@newsletter.avianca.com' },
    { from: 'contato@globoplaymkt.globo.com' },{ from: 'Microsoftstore@microsoftstore.microsoft.com' }, { from: 'no-reply@abya.com'}, { from: 'email.mkt@agilize.com.br'},
    { from: 'tagitau.ofertas@itau.com.br'}, {from: 'hello@news.invoicesimple.com'}, { from: 'serviceteam@emails.myus.com'}, { from: 'roberta@colnaghi.com.br'},
    { from: 'marketing@news.shoulder.com.br'}, { from: 'noreply@info.mail.amadeus.com'}, { from: 'ubuntu-hardened-request@lists.ubuntu.com'}, { from: 'movida@emkt.movida.com.br'},
    { from: 'quero.comprar@madeiramadeira.com.br'}
  ],
};

// Here we set our rules
local rules = [
  { filter: spam, actions: { delete: true } },
  { filter: { or: [ { from: 'faturadigital@itau.com.br' }, { from: 'faturadigital@itaupersonnalite.com.br' }, { from: 'faturaporemail@santander.com.br' }, { from: 'fatura@xpi.com.br' } ] }, actions: { archive: true, labels: ['Fatura do Cartão'] } },
];

// Here is where we define our configuration and apply the rules
{
  version: 'v1alpha3',
  author: {
    name: 'Bruno Scota de Carvalho',
    email: me,
  },
  labels: labels,
  rules: rules
}
