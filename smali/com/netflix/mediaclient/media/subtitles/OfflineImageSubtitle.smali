.class public Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;
.super Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;
.source ""


# static fields
.field protected static final ATTR_MASTER_INDEX_OFFSET:Ljava/lang/String; = "masterIndexOffset"

.field protected static final ATTR_MASTER_INDEX_SIZE:Ljava/lang/String; = "masterIndexSize"

.field public static final IMPL_VALUE:I = 0x4


# instance fields
.field private mMasterIndexOffset:I

.field private mMasterIndexSize:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexOffset()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexOffset:I

    .line 36
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getMasterIndexSize()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexSize:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "masterIndexSize"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexSize:I

    const-string v0, "masterIndexOffset"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexOffset:I

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

    .line 53
    iget v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexOffset:I

    return v0
.end method

.method public getMasterIndexSize()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexSize:I

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexOffset:I

    const-string v2, "masterIndexOffset"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;->mMasterIndexSize:I

    const-string v2, "masterIndexSize"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
