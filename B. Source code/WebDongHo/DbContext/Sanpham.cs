namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;
    [Table("Sanpham")]
    public partial class Sanpham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sanpham()
        {
            Hinhanhs = new HashSet<Hinhanh>();
        }

        public int SanphamID { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name ="Tên sản phẩm")]
        public string Ten { get; set; }

        [Required]
        [AllowHtml]
        [Display(Name ="Mô tả")]
        public string Mota { get; set; }

        [Display(Name = "Giá cũ")]
        public int Giagoc { get; set; }

        [Display(Name = "Giá mới")]
        public int Giaban { get; set; }

        [Display(Name = "Loại sản phẩm")]
        public int LoaiSPID { get; set; }

        [Display(Name = "Nhãn hiệu")]
        public int NhanhieuID { get; set; }

        [Display(Name = "Năng lượng")]
        public int NangluongID { get; set; }

        [Display(Name = "Loại dây")]
        public int LoaidayID { get; set; }

        [Display(Name = "Loại vỏ")]
        public int LoaivoID { get; set; }

        [Display(Name = "Số lượng")]
        public int Soluong { get; set; }

        [Display(Name = "Khuyến mãi")]
        public float Khuyenmai { get; set; }

        [Display(Name = "Là sản phẩm nổi bật")]
        public bool IsNoibat { get; set; }

        [Display(Name = "Hiển thị trên trang chủ")]
        public bool HienthiTrangChu { get; set; }

        [Display(Name = "Cho phép hiển thị")]
        public bool Hienthi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hinhanh> Hinhanhs { get; set; }

        public virtual Loaiday Loaiday { get; set; }

        public virtual LoaiSP LoaiSP { get; set; }

        public virtual Loaivo Loaivo { get; set; }

        public virtual Nangluong Nangluong { get; set; }

        public virtual Nhanhieu Nhanhieu { get; set; }
    }
}
