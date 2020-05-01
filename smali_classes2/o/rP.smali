.class abstract Lo/rP;
.super Lo/sB;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sQ;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:J

.field private final d:Lo/sp;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sC;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sO;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sb;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lo/sA;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sv;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/String;

.field private final l:Lcom/netflix/mediaclient/media/Watermark;

.field private final m:J

.field private final n:Lo/so;

.field private final o:J

.field private final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sM;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/List;Ljava/util/List;Lo/sp;JLjava/util/List;Ljava/util/List;Ljava/util/List;Lo/sA;Ljava/util/List;Ljava/lang/String;JLcom/netflix/mediaclient/media/Watermark;JLo/so;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lo/sQ;",
            ">;",
            "Ljava/util/List<",
            "Lo/sC;",
            ">;",
            "Lo/sp;",
            "J",
            "Ljava/util/List<",
            "Lo/sO;",
            ">;",
            "Ljava/util/List<",
            "Lo/sb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;",
            "Lo/sA;",
            "Ljava/util/List<",
            "Lo/sv;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/netflix/mediaclient/media/Watermark;",
            "J",
            "Lo/so;",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p20

    move-object/from16 v10, p21

    .line 70
    invoke-direct {p0}, Lo/sB;-><init>()V

    move-wide v11, p1

    .line 71
    iput-wide v11, v0, Lo/rP;->b:J

    if-eqz v1, :cond_9

    .line 75
    iput-object v1, v0, Lo/rP;->a:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 79
    iput-object v2, v0, Lo/rP;->e:Ljava/util/List;

    move-object/from16 v1, p5

    .line 80
    iput-object v1, v0, Lo/rP;->d:Lo/sp;

    move-wide/from16 v1, p6

    .line 81
    iput-wide v1, v0, Lo/rP;->c:J

    if-eqz v3, :cond_7

    .line 85
    iput-object v3, v0, Lo/rP;->f:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 89
    iput-object v4, v0, Lo/rP;->g:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 93
    iput-object v5, v0, Lo/rP;->h:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 97
    iput-object v6, v0, Lo/rP;->i:Lo/sA;

    if-eqz v7, :cond_3

    .line 101
    iput-object v7, v0, Lo/rP;->j:Ljava/util/List;

    if-eqz v8, :cond_2

    .line 105
    iput-object v8, v0, Lo/rP;->k:Ljava/lang/String;

    move-wide/from16 v1, p14

    .line 106
    iput-wide v1, v0, Lo/rP;->m:J

    move-object/from16 v1, p16

    .line 107
    iput-object v1, v0, Lo/rP;->l:Lcom/netflix/mediaclient/media/Watermark;

    move-wide/from16 v1, p17

    .line 108
    iput-wide v1, v0, Lo/rP;->o:J

    move-object/from16 v1, p19

    .line 109
    iput-object v1, v0, Lo/rP;->n:Lo/so;

    if-eqz v9, :cond_1

    .line 113
    iput-object v9, v0, Lo/rP;->r:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 117
    iput-object v10, v0, Lo/rP;->t:Ljava/util/List;

    move-object/from16 v1, p22

    .line 118
    iput-object v1, v0, Lo/rP;->q:Ljava/util/Map;

    return-void

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null locations"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null servers"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null playbackContextId"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null defaultTrackOrderList"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null links"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null videoTracks"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null audioTracks"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null trickplays"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null media"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null timedtexttracks"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timedtexttracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sQ;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/rP;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()J
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movieId"
    .end annotation

    .line 124
    iget-wide v0, p0, Lo/rP;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation

    .line 149
    iget-wide v0, p0, Lo/rP;->c:J

    return-wide v0
.end method

.method public d()Lo/sp;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnResponseData"
    .end annotation

    .line 143
    iget-object v0, p0, Lo/rP;->d:Lo/sp;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sC;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lo/rP;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 262
    :cond_0
    instance-of v1, p1, Lo/sB;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 263
    check-cast p1, Lo/sB;

    .line 264
    iget-wide v3, p0, Lo/rP;->b:J

    invoke-virtual {p1}, Lo/sB;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/rP;->a:Ljava/util/List;

    .line 265
    invoke-virtual {p1}, Lo/sB;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->e:Ljava/util/List;

    .line 266
    invoke-virtual {p1}, Lo/sB;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->d:Lo/sp;

    if-nez v1, :cond_1

    .line 267
    invoke-virtual {p1}, Lo/sB;->d()Lo/sp;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/sB;->d()Lo/sp;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-wide v3, p0, Lo/rP;->c:J

    .line 268
    invoke-virtual {p1}, Lo/sB;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/rP;->f:Ljava/util/List;

    .line 269
    invoke-virtual {p1}, Lo/sB;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->g:Ljava/util/List;

    .line 270
    invoke-virtual {p1}, Lo/sB;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->h:Ljava/util/List;

    .line 271
    invoke-virtual {p1}, Lo/sB;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->i:Lo/sA;

    .line 272
    invoke-virtual {p1}, Lo/sB;->g()Lo/sA;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->j:Ljava/util/List;

    .line 273
    invoke-virtual {p1}, Lo/sB;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->k:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lo/sB;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v3, p0, Lo/rP;->m:J

    .line 275
    invoke-virtual {p1}, Lo/sB;->m()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/rP;->l:Lcom/netflix/mediaclient/media/Watermark;

    if-nez v1, :cond_2

    .line 276
    invoke-virtual {p1}, Lo/sB;->o()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/sB;->o()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-wide v3, p0, Lo/rP;->o:J

    .line 277
    invoke-virtual {p1}, Lo/sB;->l()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/rP;->n:Lo/so;

    if-nez v1, :cond_3

    .line 278
    invoke-virtual {p1}, Lo/sB;->n()Lo/so;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lo/sB;->n()Lo/so;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lo/rP;->r:Ljava/util/List;

    .line 279
    invoke-virtual {p1}, Lo/sB;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->t:Ljava/util/List;

    .line 280
    invoke-virtual {p1}, Lo/sB;->r()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/rP;->q:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 281
    invoke-virtual {p1}, Lo/sB;->q()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lo/sB;->q()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_6
    return v2
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trickplays"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sO;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lo/rP;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Lo/sA;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "links"
    .end annotation

    .line 173
    iget-object v0, p0, Lo/rP;->i:Lo/sA;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_tracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lo/rP;->h:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 290
    iget-wide v0, p0, Lo/rP;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 292
    iget-object v3, p0, Lo/rP;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 294
    iget-object v3, p0, Lo/rP;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 296
    iget-object v3, p0, Lo/rP;->d:Lo/sp;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 298
    iget-wide v5, p0, Lo/rP;->c:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 300
    iget-object v3, p0, Lo/rP;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 302
    iget-object v3, p0, Lo/rP;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 304
    iget-object v3, p0, Lo/rP;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 306
    iget-object v3, p0, Lo/rP;->i:Lo/sA;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 308
    iget-object v3, p0, Lo/rP;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 310
    iget-object v3, p0, Lo/rP;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 312
    iget-wide v5, p0, Lo/rP;->m:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 314
    iget-object v3, p0, Lo/rP;->l:Lcom/netflix/mediaclient/media/Watermark;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 316
    iget-wide v5, p0, Lo/rP;->o:J

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 318
    iget-object v2, p0, Lo/rP;->n:Lo/so;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 320
    iget-object v2, p0, Lo/rP;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 322
    iget-object v2, p0, Lo/rP;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 324
    iget-object v0, p0, Lo/rP;->q:Ljava/util/Map;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v4

    :goto_3
    xor-int v0, v1, v4

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audio_tracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sb;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lo/rP;->g:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultTrackOrderList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sv;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lo/rP;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playbackContextId"
    .end annotation

    .line 185
    iget-object v0, p0, Lo/rP;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()J
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration"
    .end annotation

    .line 204
    iget-wide v0, p0, Lo/rP;->o:J

    return-wide v0
.end method

.method public m()J
    .locals 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation

    .line 191
    iget-wide v0, p0, Lo/rP;->m:J

    return-wide v0
.end method

.method public n()Lo/so;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "choiceMap"
    .end annotation

    .line 211
    iget-object v0, p0, Lo/rP;->n:Lo/so;

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "watermarkInfo"
    .end annotation

    .line 198
    iget-object v0, p0, Lo/rP;->l:Lcom/netflix/mediaclient/media/Watermark;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "servers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sM;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lo/rP;->r:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eligibleABTests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lo/rP;->q:Ljava/util/Map;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lo/rP;->t:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NfManifest{movieId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/rP;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timedtexttracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cdnResponseData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->d:Lo/sp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/rP;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", trickplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", links="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->i:Lo/sA;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultTrackOrderList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackContextId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", manifestFetchedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/rP;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", watermark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->l:Lcom/netflix/mediaclient/media/Watermark;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiryTimeInEndPointTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/rP;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", choiceMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->n:Lo/so;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", servers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eligibleABTests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rP;->q:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
