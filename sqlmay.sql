drop table if exists tclasse;
drop table if exists transports;
drop table if exists transportsc;
drop table if exists manufacturers;


create table tclasse (
    id_tclasse serial
                   constraint id_classe_pk
                   primary key ,
                   tclasse_name varchar
);

create table transports (
    id_transport serial
                   constraint id_transports_pk
                   primary key ,
                   transport_name varchar,
                   transport_type varchar,
                   model varchar,
                   cost_in_credits int,
                   length int,
                   max_atmosphering_speed int,
                   crew int,
                   passengers int,
                   cargo_capacity int,
                   consumables int,

                   id_tclasse int
                   constraint id_tclasse_fk
                   references tclasse
                   on delete cascade
);

create table transportsc (
    id_transport serial
                   constraint id_transports_pk
                   primary key ,
                   hyperdrive_rating decimal(2,1),
                   mglt int

);

create table manufacturers (
    id_manufacturer serial
                   constraint id_manufacturer_pk
                   primary key ,
                   manufacturer_name varchar
);
