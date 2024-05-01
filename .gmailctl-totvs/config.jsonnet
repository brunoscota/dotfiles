// https://github.com/mbrt/gmailctl#configuration

// My imports
local lib = import 'gmailctl.libsonnet';

// locals are variables that can be used in the rest of the file
local author = 'Bruno Scota de Carvalho';
local me = 'bruno.scota@totvs.com.br';
local toMe = { to: me };

local labels = [
  { name: 'Areas' },
  { name: 'Areas/Engenharia Coorporativa'},
  { name: 'Areas/Segurança da Informação' },
  { name: 'Areas/Universidade'},
  { name: 'Areas/RH'},
  { name: 'Areas/SupplySRE'},
  { name: 'Boletim TOTVS'},
  { name: 'Sistemas' },
  { name: 'Sistemas/DataDog' },
  { name: 'Sistemas/Azure DevOps' },
  { name: 'Sistemas/StatusPage' },
  { name: 'Sistemas/JIRA'},
  { name: 'Sindppd' },
];

local spam = {
  or: [
    { from: 'daily@updates.miro.com' }, { from: 'no-reply@reply.hashicorp.com' },
  ]
};

local rules = [
    { filter: { from: 'TOTVS.ENGCOMUNICACAO@totvs.com.br' }, actions: { archive: true, labels: ['Areas/Engenharia Coorporativa'] } },
    { filter: { from: 'seginf@totvs.com.br' }, actions: { archive: true, labels: ['Areas/Segurança da Informação'] } },
    { filter: { from: 'sre-supply@totvs.com.br' }, actions: { archive: true, labels: ['Areas/SupplySRE'] } },
    { filter: { from: 'universidade@totvs.com.br' }, actions: { archive: true, labels: ['Areas/Universidade'] } },
    { filter: { from: 'totvs.rh@totvs.com.br' }, actions: { archive: true, labels: ['Areas/RH'] } },
    { filter: { from: '@dtdg.co' }, actions: { archive: true, labels: ['Sistemas/DataDog'] } },
    { filter: { from: 'donotreply.jira@totvs.com.br' }, actions: { archive: true, labels: ['Sistemas/JIRA'] } },
    { filter: { from: 'azuredevops@microsoft.com' }, actions: { archive: true, labels: ['Sistemas/Azure DevOps'] } },
    { filter: { from: '@instatus.com' }, actions: { archive: true, labels: ['Sistemas/StatusPage'] } },
    { filter: { from: 'imprensa@sindppd-rs.org.br' }, actions: { archive: true, labels: ['Sindppd'] } },
    { filter: { from: 'totvsligados@totvs.com.br' }, actions: { archive: true, labels: ['Boletim TOTVS'] } },
    { filter: { from: 'consultoria.segmentos.comunica@totvs.com.br' }, actions: { delete: true } },

    { filter: spam, actions: { delete: true } },
  ];


// The final configuration object
{
  version: 'v1alpha3',
  author: {
    name: author,
    email: me,
  },
  labels: labels,
  rules: rules,
}
