.class public Lcom/netflix/cl/model/context/android/PartnerInput;
.super Lcom/netflix/cl/model/context/UserInput;
.source ""


# instance fields
.field private channelId:Ljava/lang/String;

.field private source:Lcom/netflix/cl/model/android/PartnerInputSource;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/android/PartnerInputSource;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 23
    invoke-direct {p0, p3}, Lcom/netflix/cl/model/context/UserInput;-><init>(Ljava/lang/Float;)V

    const-string p3, "android.PartnerInput"

    .line 24
    invoke-virtual {p0, p3}, Lcom/netflix/cl/model/context/android/PartnerInput;->addContextType(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/netflix/cl/model/context/android/PartnerInput;->source:Lcom/netflix/cl/model/android/PartnerInputSource;

    .line 26
    iput-object p2, p0, Lcom/netflix/cl/model/context/android/PartnerInput;->channelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 35
    invoke-super {p0}, Lcom/netflix/cl/model/context/UserInput;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/netflix/cl/model/context/android/PartnerInput;->source:Lcom/netflix/cl/model/android/PartnerInputSource;

    const-string v2, "source"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v1, p0, Lcom/netflix/cl/model/context/android/PartnerInput;->channelId:Ljava/lang/String;

    const-string v2, "channelId"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
