﻿// <auto-generated />
using System;
using Elevator.API.Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace Elevator.API.Migrations
{
    [DbContext(typeof(ApplicationContext))]
    [Migration("20220520050413__InitialCreate")]
    partial class _InitialCreate
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 63)
                .HasAnnotation("ProductVersion", "5.0.17")
                .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn);

            modelBuilder.Entity("Elevator.API.Models.Lift", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<int>("ActFloor")
                        .HasColumnType("integer");

                    b.Property<string>("Adress")
                        .HasColumnType("text");

                    b.Property<int>("NumOfBasements")
                        .HasColumnType("integer");

                    b.Property<int>("NumOfFloors")
                        .HasColumnType("integer");

                    b.HasKey("Id");

                    b.ToTable("Elevator");
                });
#pragma warning restore 612, 618
        }
    }
}
