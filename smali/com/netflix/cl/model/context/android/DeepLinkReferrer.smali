.class public Lcom/netflix/cl/model/context/android/DeepLinkReferrer;
.super Lcom/netflix/cl/model/context/CLContext;
.source ""


# instance fields
.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/netflix/cl/model/context/CLContext;-><init>()V

    const-string v0, "android.DeepLinkReferrer"

    .line 20
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/context/android/DeepLinkReferrer;->addContextType(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/netflix/cl/model/context/android/DeepLinkReferrer;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/netflix/cl/model/context/CLContext;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/netflix/cl/model/context/android/DeepLinkReferrer;->uri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
