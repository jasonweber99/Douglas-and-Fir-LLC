﻿using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace MIVisitorCenter.Models
{
    public partial class MIVisitorCenterDbContext : DbContext
    {
        public MIVisitorCenterDbContext()
        {
        }

        public MIVisitorCenterDbContext(DbContextOptions<MIVisitorCenterDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Address> Addresses { get; set; }
        public virtual DbSet<Amenity> Amenities { get; set; }
        public virtual DbSet<Business> Businesses { get; set; }
        public virtual DbSet<BusinessCategory> BusinessCategories { get; set; }
        public virtual DbSet<BusinessEvent> BusinessEvents { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Component> Components { get; set; }
        public virtual DbSet<ComponentImage> ComponentImages { get; set; }
        public virtual DbSet<ComponentText> ComponentTexts { get; set; }
        public virtual DbSet<DiningSubcategory> DiningSubcategories { get; set; }
        public virtual DbSet<Event> Events { get; set; }
        public virtual DbSet<EventAddress> EventAddresses { get; set; }
        public virtual DbSet<Lodging> Lodgings { get; set; }
        public virtual DbSet<LodgingAmenity> LodgingAmenities { get; set; }
        public virtual DbSet<OperatingHour> OperatingHours { get; set; }
        public virtual DbSet<Page> Pages { get; set; }
        public virtual DbSet<PhotoCollection> PhotoCollections { get; set; }
        public virtual DbSet<RestaurantDiningSubcategory> RestaurantDiningSubcategories { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Name=MIVisitorCenterConnection");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Business>(entity =>
            {
                entity.HasOne(d => d.Address)
                    .WithMany(p => p.Businesses)
                    .HasForeignKey(d => d.AddressId)
                    .HasConstraintName("FK_AddressBusiness");
            });

            modelBuilder.Entity<BusinessCategory>(entity =>
            {
                entity.HasOne(d => d.Business)
                    .WithMany(p => p.BusinessCategories)
                    .HasForeignKey(d => d.BusinessId)
                    .HasConstraintName("FK_BusinessBusinessCategory");

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.BusinessCategories)
                    .HasForeignKey(d => d.CategoryId)
                    .HasConstraintName("FK_CategoryBusinessCategory");
            });

            modelBuilder.Entity<BusinessEvent>(entity =>
            {
                entity.HasOne(d => d.Business)
                    .WithMany(p => p.BusinessEvents)
                    .HasForeignKey(d => d.BusinessId)
                    .HasConstraintName("FK_BusinessBusinessEvent");

                entity.HasOne(d => d.Event)
                    .WithMany(p => p.BusinessEvents)
                    .HasForeignKey(d => d.EventId)
                    .HasConstraintName("FK_EventBusinessEvent");
            });

            modelBuilder.Entity<Component>(entity =>
            {
                entity.HasOne(d => d.Page)
                    .WithMany(p => p.Components)
                    .HasForeignKey(d => d.PageId)
                    .HasConstraintName("FK_PageComponent");
            });

            modelBuilder.Entity<ComponentImage>(entity =>
            {
                entity.HasOne(d => d.Component)
                    .WithMany(p => p.ComponentImages)
                    .HasForeignKey(d => d.ComponentId)
                    .HasConstraintName("FK_ComponentComponentImages");
            });

            modelBuilder.Entity<ComponentText>(entity =>
            {
                entity.HasOne(d => d.Component)
                    .WithOne(p => p.ComponentTexts)
                    .HasConstraintName("FK_ComponentComponentText");
            });

            modelBuilder.Entity<EventAddress>(entity =>
            {
                entity.HasOne(d => d.Address)
                    .WithMany(p => p.EventAddresses)
                    .HasForeignKey(d => d.AddressId)
                    .HasConstraintName("FK_AddressEventAddress");

                entity.HasOne(d => d.Event)
                    .WithMany(p => p.EventAddresses)
                    .HasForeignKey(d => d.EventId)
                    .HasConstraintName("FK_EventEventAddress");
            });

            modelBuilder.Entity<Lodging>(entity =>
            {
                entity.HasOne(d => d.Business)
                    .WithMany(p => p.Lodgings)
                    .HasForeignKey(d => d.BusinessId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_BusinessLodging");
            });

            modelBuilder.Entity<LodgingAmenity>(entity =>
            {
                entity.HasOne(d => d.Amenities)
                    .WithMany(p => p.LodgingAmenities)
                    .HasForeignKey(d => d.AmenitiesId)
                    .HasConstraintName("FK_AmenitiesLodgingAmenities");

                entity.HasOne(d => d.Lodging)
                    .WithMany(p => p.LodgingAmenities)
                    .HasForeignKey(d => d.LodgingId)
                    .HasConstraintName("FK_LodgingLodgingAmenities");
            });

            modelBuilder.Entity<OperatingHour>(entity =>
            {
                entity.HasOne(d => d.Business)
                    .WithMany(p => p.OperatingHours)
                    .HasForeignKey(d => d.BusinessId)
                    .HasConstraintName("FK_BusinessOperatingHours");
            });

            modelBuilder.Entity<PhotoCollection>(entity =>
            {
                entity.HasOne(d => d.Business)
                    .WithMany(p => p.PhotoCollections)
                    .HasForeignKey(d => d.BusinessId)
                    .HasConstraintName("FK_BusinessPhotoCollection");
            });

            modelBuilder.Entity<RestaurantDiningSubcategory>(entity =>
            {
                entity.HasOne(d => d.Business)
                    .WithMany(p => p.RestaurantDiningSubcategories)
                    .HasForeignKey(d => d.BusinessId)
                    .HasConstraintName("FK_Business_RestaurantDiningSubcategory");

                entity.HasOne(d => d.DiningSubcategory)
                    .WithMany(p => p.RestaurantDiningSubcategories)
                    .HasForeignKey(d => d.DiningSubcategoryId)
                    .HasConstraintName("FK_DiningSubcategory_RestaurantDiningSubcategory");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
