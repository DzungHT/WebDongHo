namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Account")]
    public partial class Account
    {
        public int AccountID { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name ="Tên tài khoản")]
        public string Username { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Mật khẩu")]
        public string Password { get; set; }

        [StringLength(50)]
        [Display(Name = "Họ tên")]
        public string Hoten { get; set; }

        [Display(Name = "Ngày sinh")]
        public DateTime? Ngaysinh { get; set; }

        [Display(Name = "Giới tính")]
        public bool? Gioitinh { get; set; }

        [StringLength(50)]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [StringLength(20)]
        [Display(Name = "Số điện thoại")]
        public string SDT { get; set; }

        [StringLength(100)]
        [Display(Name = "Địa chỉ")]
        public string Diachi { get; set; }

        [Display(Name = "Nhóm quyền người dùng")]
        public int? Role { get; set; }

        [Display(Name = "Trạng thái tài khoản")]
        public int? Trangthai { get; set; }
    }
}
