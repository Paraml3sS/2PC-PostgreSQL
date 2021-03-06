﻿using System;

namespace HotelCompany.Application
{
    public class BookHotelRequest
    {
        public Guid TransactionId { get; set; }
        public int Id { get; set; }
        public string ClientName { get; set; }
        public string HotelName { get; set; }
        public DateTime Arrival { get; set; }
        public DateTime Departure { get; set; }
    }
}