.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerResume.java"


# instance fields
.field private mXid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "PLAYER_RESUME"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;->mXid:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;->createObj()V

    .line 33
    return-void
.end method

.method private createObj()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;->mXid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createObj failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
