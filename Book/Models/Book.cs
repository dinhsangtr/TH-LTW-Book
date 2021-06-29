namespace Book.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Book")]
    public partial class Book
    {

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã sách")]
        [Required(ErrorMessage = "ID không được để trống")]
        public int ID { get; set; }


        [Display(Name = "Tên sách")]
        [Required(ErrorMessage = "Tên sách không được để trống")]
        [StringLength(100, ErrorMessage = "Tên sách không được quá 100 ký tự.")]
        public string Title { get; set; }


        [Display(Name = "Mô tả")]
        [Required(ErrorMessage = "Mô tả không được để trống")]
        [StringLength(255)]
        public string Description { get; set; }


        [Display(Name = "Tác giả")]
        [Required(ErrorMessage = "Tên tác giả không được để trống")]
        [StringLength(30, ErrorMessage = "Tên sách không được quá 30 ký tự.")]
        public string Author { get; set; }


        [Display(Name = "Hình ảnh")]
        [Required(ErrorMessage = "Hình ảnh không được để trống")]
        [StringLength(255)]
        public string Images { get; set; }


        [Display(Name = "Giá")]
        [Required(ErrorMessage = "Giá không được để trống")]
        [Range(1000, 1000000, ErrorMessage = "Giá sách nằm trong khoảng từ 1.000 - 1.000.000")]
        public int Price { get; set; }
    }
}
