.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerSetVolume.java"


# static fields
.field private static final PROPERTY_previous:Ljava/lang/String; = "previous"

.field public static final PROPERTY_volume:Ljava/lang/String; = "volume"


# instance fields
.field private mPrevious:Ljava/lang/Integer;

.field private mVolume:I

.field private mXid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "PLAYER_SET_VOLUME"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mXid:Ljava/lang/String;

    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mVolume:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->createObj()V

    return-void
.end method

.method private createObj()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mXid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "volume"

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mVolume:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mPrevious:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "previous"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->mPrevious:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->messageName()Ljava/lang/String;

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
