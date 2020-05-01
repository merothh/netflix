.class public Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;
.super Lcom/netflix/cl/model/event/discrete/MeasurementReported;
.source ""


# instance fields
.field private data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Lcom/netflix/cl/model/event/discrete/MeasurementReported;-><init>(Ljava/lang/Long;)V

    const-string p2, "PerformanceTraceReported"

    .line 22
    invoke-virtual {p0, p2}, Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;->addContextType(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;->data:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/netflix/cl/model/event/discrete/MeasurementReported;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;->data:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addJsonToJson(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-object v0
.end method
