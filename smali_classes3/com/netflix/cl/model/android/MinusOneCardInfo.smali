.class public Lcom/netflix/cl/model/android/MinusOneCardInfo;
.super Lcom/netflix/cl/model/Data;
.source ""


# instance fields
.field private cardType:Lcom/netflix/cl/model/android/MinusOneCardType;

.field private listName:Ljava/lang/String;

.field private videoImpressions:[Lcom/netflix/cl/model/android/MinusOneVideoInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/android/MinusOneCardType;Ljava/lang/String;[Lcom/netflix/cl/model/android/MinusOneVideoInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/netflix/cl/model/Data;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netflix/cl/model/android/MinusOneCardInfo;->cardType:Lcom/netflix/cl/model/android/MinusOneCardType;

    .line 24
    iput-object p2, p0, Lcom/netflix/cl/model/android/MinusOneCardInfo;->listName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/netflix/cl/model/android/MinusOneCardInfo;->videoImpressions:[Lcom/netflix/cl/model/android/MinusOneVideoInfo;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/netflix/cl/model/android/MinusOneCardInfo;->cardType:Lcom/netflix/cl/model/android/MinusOneCardType;

    const-string v2, "cardType"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v1, p0, Lcom/netflix/cl/model/android/MinusOneCardInfo;->listName:Ljava/lang/String;

    const-string v2, "listName"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    iget-object v1, p0, Lcom/netflix/cl/model/android/MinusOneCardInfo;->videoImpressions:[Lcom/netflix/cl/model/android/MinusOneVideoInfo;

    const-string v2, "videoImpressions"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
