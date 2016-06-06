namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiSP")]
    public partial class LoaiSP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiSP()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        public int LoaiSPID { get; set; }

        [Required]
        [StringLength(50)]

        [Display(Name = "Tên loại sản phẩm")]
        public string Ten { get; set; }

        [Display(Name = "Thứ tự hiển thị")]
        public int? Thutu { get; set; }

        [Display(Name = "Hiển thị")]
        public bool Hienthi { get; set; }

        
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanphams { get; set; }
    }
}
