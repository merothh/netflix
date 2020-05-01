.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerChangeMetaData.java"


# static fields
.field private static final PROPERTY_catalogId:Ljava/lang/String; = "catalogId"

.field private static final PROPERTY_episodeId:Ljava/lang/String; = "episodeId"

.field private static final PROPERTY_type:Ljava/lang/String; = "type"


# instance fields
.field private mCatalogId:Ljava/lang/String;

.field private mEpisodeId:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "META_DATA_CHANGED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mCatalogId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mEpisodeId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mType:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->createObj()V

    .line 22
    return-void
.end method

.method private createObj()V
    .locals 4

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "catalogId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mCatalogId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "episodeId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mEpisodeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->messageName()Ljava/lang/String;

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
