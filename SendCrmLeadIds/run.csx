#r "Microsoft.ServiceBus.dll"
#r "System.Runtime.Serialization.dll"
#r "System.Transactions.dll"

#r "Newtonsoft.Json.dll"

using System;
using System.Net;
using Newtonsoft.Json;
using System.Text;

using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;
using System.Transactions;
using System.Runtime.Serialization;

[DataContract]
    public class CrmLeadIdList
    {
        //[DataMember]
        //[JsonProperty(PropertyName = "@odata.context")]
        //public string odata_context;
        //

        [DataMember]
        public CrmLeadId[] ids;
    }

    [DataContract]
    public class CrmLeadId
    {

      [DataMember]
      public string leadid;

      [DataMember]
      public string lookers_refno;

      //[DataMember]
      //[JsonProperty(PropertyName = "@odata.etag")]
      //public string odata_etag;

      //[DataMember]
      //public string ItemInternalId;

      //[DataMember]
      //public string lookers_manufacturerleadid;

      //[DataMember]
      //public ulong? lookers_inboundchannel;

      //[DataMember]
      //public ulong? lookers_source;

      //[DataMember]
      //public ulong? lookers_newused;

      //[DataMember]
      //public string lookers_vehicleregistration;

      //[DataMember]
      //public string lookers_daterequired;

      //[DataMember]
      //public string lookers_dateclosed;

    }

public static async Task<object> Run(HttpRequestMessage req, TraceWriter log)
{
    log.Info($"Webhook was triggered!");

    string jsonContent = await req.Content.ReadAsStringAsync();
    dynamic data = JsonConvert.DeserializeObject(jsonContent, typeof(CrmLeadId[]));

    //if (data[0].first == null || data[0].last == null)
    //{
    //    return req.CreateResponse(HttpStatusCode.BadRequest, new
    //    {
    //        error = "Please pass first/last properties in the input object"
    //    });
    //}

    var connectionString = "Endpoint=sb://asbmanheim.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=MtY3HBXgDHf6kwrSmRzamic0tUhExyTZDU4twulub5M=";
    var queueName = "crmleadid";
    var client = QueueClient.CreateFromConnectionString(connectionString, queueName);
    

    //var m1 = new BrokeredMessage(data[0].first);
    int index = 0;
    while (index < data.Length)
    {
        using (var scope = new TransactionScope())
        {
        for (int i=0;i<100;i++)
        {
            if (index < data.Length)
            {
                var messageStream = new MemoryStream(Encoding.UTF8.GetBytes(JsonConvert.SerializeObject(data[i])));
                var message = new BrokeredMessage(messageStream, true);
                message.ContentType = "application/json";
                client.Send(message);
            //client.Send(new BrokeredMessage(JsonConvert.SerializeObject(data[i])));
            }
            index +=1;
        }
        scope.Complete();
        }
    }
    //using (var scope = new TransactionScope())
    //{
    //    foreach (ShortLead l in data.value)
    //    {
     //       client.Send(new BrokeredMessage(JsonConvert.SerializeObject(l)));
    //    }
     //   //client.Send(new BrokeredMessage(data[0].last));
     //   //throw new Exception("2 not 3");
     //   //client.Send(new BrokeredMessage(myQueueItem[2]));
     //   scope.Complete();    
    //}

    var lastid = (data.Length > 0) ? data[data.Length-1].lookers_refno : "0";
    return req.CreateResponse(HttpStatusCode.OK, new
    {
        //greeting = $"Hello {data[0].first} {data[0].last}!"
        Count = data.Length,
        LastId = lastid
        
    });
}
