.class Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;
.super Ljava/lang/Object;
.source "AccountKeyMap.java"


# instance fields
.field private mKceKeyId:Ljava/lang/String;

.field private mKchKeyId:Ljava/lang/String;

.field private mKeySetId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyIds from JSON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "keySetId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKeySetId:Ljava/lang/String;

    .line 160
    const-string/jumbo v1, "kceKeyId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKceKeyId:Ljava/lang/String;

    .line 161
    const-string/jumbo v1, "kchKeyId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKchKeyId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t turn JSON to KeyIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKeySetId:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKceKeyId:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKchKeyId:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public getKceKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKceKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKchKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKchKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKeySetId:Ljava/lang/String;

    return-object v0
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 177
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 179
    :try_start_0
    const-string/jumbo v0, "keySetId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKeySetId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "kceKeyId"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKceKeyId:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "kchKeyId"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->mKchKeyId:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can\'t turn KeyIds toJSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
