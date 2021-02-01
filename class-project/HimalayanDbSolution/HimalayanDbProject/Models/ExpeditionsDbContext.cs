using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace HimalayanDbProject.Models
{
    public partial class ExpeditionsDbContext : DbContext
    {
        public ExpeditionsDbContext()
        {
        }

        public ExpeditionsDbContext(DbContextOptions<ExpeditionsDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<BlogPost> BlogPosts { get; set; }
        public virtual DbSet<Expedition> Expeditions { get; set; }
        public virtual DbSet<ExpeditionMember> ExpeditionMembers { get; set; }
        public virtual DbSet<Member> Members { get; set; }
        public virtual DbSet<Nationality> Nationalities { get; set; }
        public virtual DbSet<Peak> Peaks { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<TrekkingAgency> TrekkingAgencies { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Name=ExpeditionsLocalDb");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<BlogPost>(entity =>
            {
                entity.HasOne(d => d.Author)
                    .WithMany(p => p.BlogPosts)
                    .HasForeignKey(d => d.AuthorId)
                    .HasConstraintName("FK_UserBlogPost");
            });

            modelBuilder.Entity<Expedition>(entity =>
            {
                entity.HasOne(d => d.Creator)
                    .WithMany(p => p.Expeditions)
                    .HasForeignKey(d => d.CreatorId)
                    .HasConstraintName("FK_UserExpedition");

                entity.HasOne(d => d.Peak)
                    .WithMany(p => p.Expeditions)
                    .HasForeignKey(d => d.PeakId)
                    .HasConstraintName("FK_PeakExpedition");

                entity.HasOne(d => d.TrekkingAgency)
                    .WithMany(p => p.Expeditions)
                    .HasForeignKey(d => d.TrekkingAgencyId)
                    .HasConstraintName("FK_TrekkingAgencyExpedition");
            });

            modelBuilder.Entity<ExpeditionMember>(entity =>
            {
                entity.HasOne(d => d.Expedition)
                    .WithMany(p => p.ExpeditionMembers)
                    .HasForeignKey(d => d.ExpeditionId)
                    .HasConstraintName("FK_ExpeditionExpeditionMember");

                entity.HasOne(d => d.Member)
                    .WithMany(p => p.ExpeditionMembers)
                    .HasForeignKey(d => d.MemberId)
                    .HasConstraintName("FK_MemberExpeditionMember");

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.ExpeditionMembers)
                    .HasForeignKey(d => d.RoleId)
                    .HasConstraintName("FK_RoleExpeditionMember");
            });

            modelBuilder.Entity<Member>(entity =>
            {
                entity.HasOne(d => d.Nationality)
                    .WithMany(p => p.Members)
                    .HasForeignKey(d => d.NationalityId)
                    .HasConstraintName("FK_NationalityMember");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
