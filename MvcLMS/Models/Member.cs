namespace MvcLMS.Models
{
    public class Member
    {
        public int MemberID { get; set; }
        public string MemberFName { get; set; }

        public string MemberLName { get; set; }

        public string MemberEmail { get; set; }

        public string MemberPassword { get; set; }

        public int AddressNumber { get; set; }

        public string? AddressName { get; set; }

        public string AddressStreetName { get; set; }

        public string City { get; set; }

    }
}