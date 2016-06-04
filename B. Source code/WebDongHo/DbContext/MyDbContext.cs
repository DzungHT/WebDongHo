namespace WebDongHo.DbContext
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MyDbContext : DbContext
    {
        public MyDbContext()
            : base("name=MyDbContext")
        {
        }

        public virtual DbSet<Hinhanh> Hinhanhs { get; set; }
        public virtual DbSet<Loaiday> Loaidays { get; set; }
        public virtual DbSet<LoaiSP> LoaiSPs { get; set; }
        public virtual DbSet<Loaitintuc> Loaitintucs { get; set; }
        public virtual DbSet<Loaivo> Loaivoes { get; set; }
        public virtual DbSet<Nangluong> Nangluongs { get; set; }
        public virtual DbSet<Nhanhieu> Nhanhieux { get; set; }
        public virtual DbSet<Sanpham> Sanphams { get; set; }
        public virtual DbSet<Tintuc> Tintucs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Hinhanh>()
                .Property(e => e.Url)
                .IsFixedLength();

            modelBuilder.Entity<Loaiday>()
                .HasMany(e => e.Sanphams)
                .WithRequired(e => e.Loaiday)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiSP>()
                .HasMany(e => e.Sanphams)
                .WithRequired(e => e.LoaiSP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Loaitintuc>()
                .HasMany(e => e.Tintucs)
                .WithRequired(e => e.Loaitintuc)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Loaivo>()
                .HasMany(e => e.Sanphams)
                .WithRequired(e => e.Loaivo)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Nangluong>()
                .HasMany(e => e.Sanphams)
                .WithRequired(e => e.Nangluong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Nhanhieu>()
                .HasMany(e => e.Sanphams)
                .WithRequired(e => e.Nhanhieu)
                .WillCascadeOnDelete(false);
        }
    }
}
