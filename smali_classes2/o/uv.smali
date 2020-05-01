.class public Lo/uv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uv$Application;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private final b:J

.field private c:Landroid/content/Context;

.field private final d:[B

.field protected final e:Lo/sE;

.field private final f:Ljava/lang/String;

.field private g:[Lo/uv$Application;

.field private final h:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field private i:Ljava/lang/String;

.field private j:[Lo/uv$Application;

.field private k:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private m:Lcom/netflix/mediaclient/media/LanguageChoice;

.field private n:Lcom/netflix/mediaclient/media/PreferredLanguageData;

.field private o:[Lo/uv$Application;


# direct methods
.method public constructor <init>(Lo/sE;Landroid/content/Context;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lo/uv;->c:Landroid/content/Context;

    .line 89
    iput-object p1, p0, Lo/uv;->e:Lo/sE;

    .line 90
    iput-object p3, p0, Lo/uv;->n:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    .line 91
    invoke-interface {p1}, Lo/sE;->y()J

    move-result-wide p2

    iput-wide p2, p0, Lo/uv;->b:J

    .line 92
    invoke-interface {p1}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lo/uv;->a:Ljava/lang/Long;

    .line 93
    invoke-interface {p1}, Lo/sE;->Z()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object p2

    iput-object p2, p0, Lo/uv;->h:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    .line 94
    invoke-interface {p1}, Lo/sE;->x()[B

    move-result-object p2

    iput-object p2, p0, Lo/uv;->d:[B

    .line 95
    invoke-interface {p1}, Lo/sE;->A()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object p1

    iput-object p1, p0, Lo/uv;->k:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 96
    iget-object p1, p0, Lo/uv;->k:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 97
    iput-object p2, p0, Lo/uv;->f:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lo/uv;->i:Ljava/lang/String;

    return-void

    .line 101
    :cond_0
    iget-object p1, p0, Lo/uv;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/uv;->a(Landroid/content/Context;)Lcom/netflix/mediaclient/media/LanguageChoice;

    move-result-object p1

    iput-object p1, p0, Lo/uv;->m:Lcom/netflix/mediaclient/media/LanguageChoice;

    .line 102
    iget-object p1, p0, Lo/uv;->m:Lcom/netflix/mediaclient/media/LanguageChoice;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/uv;->m:Lcom/netflix/mediaclient/media/LanguageChoice;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lo/uv;->f:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lo/uv;->m:Lcom/netflix/mediaclient/media/LanguageChoice;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lo/uv;->m:Lcom/netflix/mediaclient/media/LanguageChoice;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_2
    iput-object p2, p0, Lo/uv;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/netflix/mediaclient/media/LanguageChoice;
    .locals 8

    .line 113
    iget-object v0, p0, Lo/uv;->e:Lo/sE;

    invoke-interface {v0}, Lo/sE;->J()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v3

    .line 114
    iget-object v0, p0, Lo/uv;->e:Lo/sE;

    invoke-interface {v0}, Lo/sE;->N()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    const-string v0, "DashManifestConverter"

    const-string v1, "Create localization manager"

    .line 116
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lo/uv;->e:Lo/sE;

    invoke-interface {v0}, Lo/sE;->ah()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 119
    :goto_0
    new-instance v0, Lo/afx;

    iget-object v5, p0, Lo/uv;->k:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    iget-object v7, p0, Lo/uv;->n:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lo/afx;-><init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;ZLcom/netflix/mediaclient/media/PreferredLanguageData;)V

    .line 120
    invoke-virtual {v0}, Lo/afx;->a()Lcom/netflix/mediaclient/media/LanguageChoice;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lo/uv;)Ljava/lang/Long;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/uv;->a:Ljava/lang/Long;

    return-object p0
.end method

.method private a()Lo/tZ;
    .locals 6

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    iget-object v1, p0, Lo/uv;->g:[Lo/uv$Application;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 366
    invoke-virtual {v5}, Lo/uv$Application;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    :cond_0
    iget-object v1, p0, Lo/uv;->j:[Lo/uv$Application;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 369
    invoke-virtual {v5}, Lo/uv$Application;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 371
    :cond_1
    iget-object v1, p0, Lo/uv;->o:[Lo/uv$Application;

    if-eqz v1, :cond_2

    .line 372
    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 373
    invoke-virtual {v4}, Lo/uv$Application;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 376
    :cond_2
    new-instance v1, Lo/tZ;

    invoke-direct {v1, v0}, Lo/tZ;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method private a(Lo/sE;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lo/uv;->b(Lo/sE;)V

    return-void
.end method

.method static synthetic b(Lo/uv;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/uv;->i:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lo/sE;)V
    .locals 10

    .line 274
    invoke-interface {p1}, Lo/sE;->C()Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {p1}, Lo/sE;->E()Ljava/util/List;

    move-result-object v1

    .line 276
    invoke-interface {p1}, Lo/sE;->a()Ljava/util/List;

    move-result-object v2

    .line 277
    invoke-interface {p1}, Lo/sE;->H()Ljava/util/List;

    move-result-object v3

    .line 278
    invoke-interface {p1}, Lo/sE;->G()Ljava/util/List;

    move-result-object p1

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 281
    new-array v5, v4, [Lo/uv$Application;

    iput-object v5, p0, Lo/uv;->g:[Lo/uv$Application;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 283
    iget-object v7, p0, Lo/uv;->g:[Lo/uv$Application;

    new-instance v8, Lo/uv$Application;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    invoke-direct {v8, p0, v9, p1, v3}, Lo/uv$Application;-><init>(Lo/uv;Lcom/netflix/mediaclient/media/manifest/VideoTrack;Ljava/util/List;Ljava/util/List;)V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    new-array v4, v0, [Lo/uv$Application;

    iput-object v4, p0, Lo/uv;->j:[Lo/uv$Application;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 288
    iget-object v6, p0, Lo/uv;->j:[Lo/uv$Application;

    new-instance v7, Lo/uv$Application;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/sb;

    invoke-direct {v7, p0, v8, p1, v3}, Lo/uv$Application;-><init>(Lo/uv;Lo/sb;Ljava/util/List;Ljava/util/List;)V

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 290
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 291
    new-array v1, v0, [Lo/uv$Application;

    iput-object v1, p0, Lo/uv;->o:[Lo/uv$Application;

    :goto_2
    if-ge v5, v0, :cond_2

    .line 293
    iget-object v1, p0, Lo/uv;->o:[Lo/uv$Application;

    new-instance v4, Lo/uv$Application;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/sQ;

    invoke-direct {v4, p0, v6, p1, v3}, Lo/uv$Application;-><init>(Lo/uv;Lo/sQ;Ljava/util/List;Ljava/util/List;)V

    aput-object v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private c()Lo/tL;
    .locals 6

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 349
    iget-object v1, p0, Lo/uv;->g:[Lo/uv$Application;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 350
    invoke-virtual {v5}, Lo/uv$Application;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, p0, Lo/uv;->j:[Lo/uv$Application;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 353
    invoke-virtual {v5}, Lo/uv$Application;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 355
    :cond_1
    iget-object v1, p0, Lo/uv;->o:[Lo/uv$Application;

    if-eqz v1, :cond_2

    .line 356
    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 357
    invoke-virtual {v4}, Lo/uv$Application;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 360
    :cond_2
    new-instance v1, Lo/tL;

    invoke-direct {v1, v0}, Lo/tL;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic c(Lo/uv;)[B
    .locals 0

    .line 58
    iget-object p0, p0, Lo/uv;->d:[B

    return-object p0
.end method

.method static synthetic d(Lo/uv;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/uv;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lo/uv;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Lo/uv;->b:J

    return-wide v0
.end method

.method private e()Lo/uC;
    .locals 33

    move-object/from16 v0, p0

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v2, v0, Lo/uv;->g:[Lo/uv$Application;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v7, v2, v5

    add-int/lit8 v8, v6, 0x1

    .line 301
    invoke-virtual {v7, v6}, Lo/uv$Application;->b(I)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 303
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    .line 306
    :cond_1
    iget-object v2, v0, Lo/uv;->j:[Lo/uv$Application;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v7, v2, v5

    add-int/lit8 v8, v6, 0x1

    .line 307
    invoke-virtual {v7, v6}, Lo/uv$Application;->b(I)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 309
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    .line 313
    :cond_3
    iget-object v2, v0, Lo/uv;->o:[Lo/uv$Application;

    if-eqz v2, :cond_5

    .line 314
    array-length v3, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v7, v2, v5

    add-int/lit8 v8, v6, 0x1

    .line 315
    invoke-virtual {v7, v6}, Lo/uv$Application;->b(I)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 317
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_2

    .line 322
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    iget-object v5, v0, Lo/uv;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v3, v5, v6, v7, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 327
    new-instance v1, Lo/uC;

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lo/uv;->b:J

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    const-wide/16 v21, 0x0

    .line 338
    invoke-direct/range {p0 .. p0}, Lo/uv;->c()Lo/tL;

    move-result-object v26

    .line 339
    invoke-direct/range {p0 .. p0}, Lo/uv;->a()Lo/tZ;

    move-result-object v27

    iget-object v3, v0, Lo/uv;->h:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    iget-object v5, v0, Lo/uv;->a:Ljava/lang/Long;

    iget-object v6, v0, Lo/uv;->e:Lo/sE;

    .line 342
    invoke-interface {v6}, Lo/sE;->u()Ljava/lang/String;

    move-result-object v30

    iget-object v6, v0, Lo/uv;->e:Lo/sE;

    .line 343
    invoke-interface {v6}, Lo/sE;->ah()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v4, 0x1

    const/16 v31, 0x1

    goto :goto_3

    :cond_6
    const/16 v31, 0x0

    :goto_3
    iget-object v4, v0, Lo/uv;->m:Lcom/netflix/mediaclient/media/LanguageChoice;

    move-object/from16 v32, v4

    move-object v9, v1

    move-object/from16 v25, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    invoke-direct/range {v9 .. v32}, Lo/uC;-><init>(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;Lo/tL;Lo/tZ;Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/Long;Ljava/lang/String;ZLcom/netflix/mediaclient/media/LanguageChoice;)V

    return-object v1
.end method

.method static synthetic g(Lo/uv;)Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 0

    .line 58
    iget-object p0, p0, Lo/uv;->h:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    return-object p0
.end method


# virtual methods
.method public b()Lo/uC;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/uv;->e:Lo/sE;

    invoke-direct {p0, v0}, Lo/uv;->a(Lo/sE;)V

    .line 108
    invoke-direct {p0}, Lo/uv;->e()Lo/uC;

    move-result-object v0

    return-object v0
.end method
