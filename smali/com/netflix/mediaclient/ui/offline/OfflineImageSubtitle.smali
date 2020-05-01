.class public Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;
.super Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;
.source "OfflineImageSubtitle.java"


# static fields
.field protected static final ATTR_MASTER_INDEX_OFFSET:Ljava/lang/String; = "masterIndexOffset"

.field protected static final ATTR_MASTER_INDEX_SIZE:Ljava/lang/String; = "masterIndexSize"

.field public static final IMPL_VALUE:I = 0x4


# instance fields
.field private mMasterIndexOffset:I

.field private mMasterIndexSize:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexOffset()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexOffset:I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexSize:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "masterIndexSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexSize:I

    const-string/jumbo v0, "masterIndexOffset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexOffset:I

    return-void
.end method


# virtual methods
.method protected getImplementation()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMasterIndexOffset()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexOffset:I

    return v0
.end method

.method public getMasterIndexSize()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexSize:I

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "masterIndexOffset"

    iget v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexOffset:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "masterIndexSize"

    iget v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;->mMasterIndexSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
