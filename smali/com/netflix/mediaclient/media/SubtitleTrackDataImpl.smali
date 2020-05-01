.class public Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;
.super Lcom/netflix/mediaclient/media/SubtitleTrackData;
.source ""


# direct methods
.method public constructor <init>(Lo/sQ;I)V
    .locals 22

    move-object/from16 v0, p0

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/media/SubtitleTrackData;-><init>()V

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;->mPosition:I

    .line 16
    invoke-static/range {p1 .. p2}, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->newInstance(Lo/sQ;I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;->subtitleInfo:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 17
    invoke-virtual/range {p1 .. p1}, Lo/sQ;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;->id:Ljava/lang/String;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lo/sQ;->i()Ljava/util/Map;

    move-result-object v2

    .line 19
    invoke-virtual/range {p1 .. p1}, Lo/sQ;->a()Ljava/util/Map;

    move-result-object v3

    .line 20
    invoke-virtual/range {p1 .. p1}, Lo/sQ;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;->mediaId:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v15, v4, v6

    .line 24
    invoke-virtual {v15}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->d()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 25
    invoke-static/range {v16 .. v16}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    move-object/from16 p2, v2

    move-object/from16 v18, v3

    goto/16 :goto_5

    .line 28
    :cond_1
    invoke-virtual {v15}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->d()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/sI;

    if-nez v7, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v7}, Lo/sI;->b()Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {v7}, Lo/sI;->d()I

    move-result v9

    int-to-long v13, v9

    .line 41
    invoke-virtual {v7}, Lo/sI;->a()I

    move-result v12

    .line 42
    invoke-virtual {v7}, Lo/sI;->c()I

    move-result v10

    .line 44
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 46
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 48
    invoke-static {v8}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v9}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 54
    :cond_4
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 55
    new-instance v11, Lcom/netflix/mediaclient/media/SubtitleUrl;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v11

    move-object v8, v9

    move-object v9, v15

    move-object/from16 p2, v2

    move v1, v10

    move-object v2, v11

    move-wide/from16 v10, v18

    move-object/from16 v18, v3

    move v3, v12

    move-object/from16 v12, v16

    move-wide/from16 v20, v13

    :try_start_1
    invoke-direct/range {v7 .. v14}, Lcom/netflix/mediaclient/media/SubtitleUrl;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;JLjava/lang/String;J)V

    .line 56
    invoke-virtual {v2, v1, v3}, Lcom/netflix/mediaclient/media/SubtitleUrl;->setMasterIndex(II)V

    .line 57
    iget-object v7, v0, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;->urls:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-object/from16 p2, v2

    move-object/from16 v18, v3

    move v1, v10

    move v3, v12

    move-wide/from16 v20, v13

    :catch_1
    :goto_3
    move-object/from16 v2, p2

    move v10, v1

    move v12, v3

    move-object/from16 v3, v18

    move-wide/from16 v13, v20

    goto :goto_4

    :cond_5
    move-object/from16 v18, v3

    :goto_4
    const/4 v1, 0x0

    goto :goto_2

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 65
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lo/sQ;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 67
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sM;

    .line 69
    invoke-virtual {v3}, Lo/sM;->b()I

    move-result v4

    .line 70
    invoke-virtual {v3}, Lo/sM;->e()I

    move-result v3

    .line 71
    iget-object v5, v0, Lcom/netflix/mediaclient/media/SubtitleTrackDataImpl;->mCdnToRankMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method
