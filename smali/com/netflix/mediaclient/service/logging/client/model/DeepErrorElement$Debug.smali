.class public Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;
.super Ljava/lang/Object;
.source "DeepErrorElement.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final STACKTRACE:Ljava/lang/String; = "stackTrace"


# instance fields
.field private message:Lorg/json/JSONObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private stackTrace:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stackTrace"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    if-nez p0, :cond_0

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 237
    const-string/jumbo v2, "stackTrace"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    .line 238
    const-string/jumbo v2, "message"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    move-object v0, v1

    .line 240
    goto :goto_0
.end method


# virtual methods
.method public getMessage()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    .line 205
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 222
    const-string/jumbo v1, "stackTrace"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 225
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Debug [stackTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->message:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
