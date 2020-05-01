.class public Lcom/netflix/mediaclient/media/SubtitleTrackData;
.super Ljava/lang/Object;
.source "SubtitleTrackData.java"


# instance fields
.field private id:Ljava/lang/String;

.field private mCdnToRankMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private subtitleInfo:Lcom/netflix/mediaclient/media/Subtitle;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;IJ)V
    .locals 23

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    .line 26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mCdnToRankMap:Ljava/util/Map;

    .line 40
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mPosition:I

    .line 41
    invoke-static/range {p1 .. p2}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->subtitleInfo:Lcom/netflix/mediaclient/media/Subtitle;

    .line 42
    const-string/jumbo v2, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->id:Ljava/lang/String;

    .line 43
    const-string/jumbo v2, "downloadableIds"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 44
    const-string/jumbo v2, "ttDownloadables"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 47
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    aget-object v5, v16, v13

    .line 48
    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-static {v10}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 57
    const-string/jumbo v3, "downloadUrls"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 58
    if-eqz v18, :cond_0

    .line 62
    const-string/jumbo v3, "size"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 65
    const-string/jumbo v3, "midxOffset"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 66
    const-string/jumbo v3, "midxSize"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 68
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v21

    .line 69
    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 80
    new-instance v3, Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v12}, Lcom/netflix/mediaclient/media/SubtitleUrl;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;JJLjava/lang/String;J)V

    .line 81
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->setMasterIndex(II)V

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v2

    goto :goto_1

    .line 90
    :cond_3
    const-string/jumbo v2, "cdnlist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_5

    .line 92
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 93
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v5, "rank"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 95
    const-string/jumbo v6, "id"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 97
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mCdnToRankMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 101
    :cond_5
    return-void
.end method


# virtual methods
.method public getDownloadId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRankForCdn(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mCdnToRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleInfo()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->subtitleInfo:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    return-object v0
.end method

.method public pop()Lcom/netflix/mediaclient/media/SubtitleUrl;
    .locals 3

    .prologue
    .line 123
    iget v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mPosition:I

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    iget v1, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mPosition:I

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubtitleTrackData{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->urls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subtitleInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->subtitleInfo:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/SubtitleTrackData;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
