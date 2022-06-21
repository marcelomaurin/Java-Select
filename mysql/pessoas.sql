use sampledb;

create table pessoas (
	idpessoa int auto-increment not null,
	nome var(40) not null,
	sexo var(1) not null default "M",
	dtNasc date not null
);