namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Dathang")]
    public partial class Dathang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Dathang()
        {
            Chitietdathangs = new HashSet<Chitietdathang>();
        }

        public int DathangID { get; set; }

        public DateTime? Ngaydat { get; set; }

        [StringLength(50)]
        public string Hoten { get; set; }

        [StringLength(150)]
        public string Diachi { get; set; }

        [StringLength(11)]
        public string SDT { get; set; }

        public bool? Trangthai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Chitietdathang> Chitietdathangs { get; set; }
    }
}
