namespace theCoffeeHouse.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietGioHang")]
    public partial class ChiTietGioHang
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int maChiTietGioHang { get; set; }

        public int? maSanPham { get; set; }

        public int? soLuong { get; set; }

        public double? donGia { get; set; }

        public int? maGioHang { get; set; }

        public virtual SanPham SanPham { get; set; }

        public virtual GioHang GioHang { get; set; }
    }
}
