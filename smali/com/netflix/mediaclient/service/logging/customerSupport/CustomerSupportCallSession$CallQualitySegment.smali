.class public Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;
.super Ljava/lang/Object;
.source "CustomerSupportCallSession.java"


# static fields
.field private static final QUALITY:Ljava/lang/String; = "quality"

.field private static final SEGMENT_DURATION:Ljava/lang/String; = "segmentDuration"


# instance fields
.field public durationInMs:I

.field public quality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;


# direct methods
.method public constructor <init>(ILcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;->durationInMs:I

    .line 144
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;->quality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    .line 145
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    const-string/jumbo v1, "segmentDuration"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;->durationInMs:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v1, "quality"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;->quality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    return-object v0
.end method
