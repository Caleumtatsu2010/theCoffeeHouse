namespace theCoffeeHouse.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhoHang")]
    public partial class KhoHang
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Required(ErrorMessage = "Mã sản phẩm không được để trống")]
        [DisplayName("Mã Sản Phẩm")]
        public int maSanPham { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Tên sản phẩm không được để trống")]
        public string tenSanPham { get; set; }

        [Required(ErrorMessage = "Số lượng tồn không được để trống")]
        public int? soLuongTon { get; set; }

        [Required(ErrorMessage = "Giá nhập không được để trống")]
        public double? giaNhap { get; set; }

        [StringLength(1000)]
        public string ghiChu { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
