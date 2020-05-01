.class public Lcom/netflix/cl/model/context/VoiceInput;
.super Lcom/netflix/cl/model/context/UserInput;
.source ""


# instance fields
.field private phrase:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Lcom/netflix/cl/model/context/UserInput;-><init>(Ljava/lang/Float;)V

    const-string p2, "VoiceInput"

    .line 22
    invoke-virtual {p0, p2}, Lcom/netflix/cl/model/context/VoiceInput;->addContextType(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/cl/model/context/VoiceInput;->phrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/netflix/cl/model/context/UserInput;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/netflix/cl/model/context/VoiceInput;->phrase:Ljava/lang/String;

    const-string v2, "phrase"

    invoke-static {v0, v2, v1}, Lcom/netflix/cl/util/ExtCLUtils;->addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method
