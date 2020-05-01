.class public abstract Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;
.super Lo/kS;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lo/kS;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->a:J

    .line 73
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;

    .line 74
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    iget-object p2, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v0, "intent"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iget-object p2, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string p3, "controllerUI"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string p2, "controllerNative"

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string p2, "targetType"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "subIntent"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "xid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "extraInfo"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "mdxintent"

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;)V
    .locals 3

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "result"

    const-string v2, "PRE-EMPTED"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "preEmptedBy"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v0, "completedTime"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->i()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public f()Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->b:Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob$IntentType;

    return-object v0
.end method

.method public g()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "firstImpressionTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "result"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "completedTime"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected i()J
    .locals 4

    .line 176
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 177
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/logging/intents/MdxIntentLogblob;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
