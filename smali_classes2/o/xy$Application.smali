.class Lo/xy$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/xo$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private final b:Lo/xw;

.field final synthetic c:Lo/xy;


# direct methods
.method constructor <init>(Lo/xy;Lo/xw;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Lo/xy$Application;->b:Lo/xw;

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 389
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v0, v0, Lo/xy;->A:Lo/ta;

    invoke-interface {v0}, Lo/ta;->e()V

    return-void
.end method

.method private c(J)Lcom/netflix/mediaclient/media/Language;
    .locals 8

    .line 340
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v0, v0, Lo/xy;->n:Lo/tf;

    .line 341
    invoke-virtual {v0, p1, p2}, Lo/tf;->b(J)Lo/uC;

    move-result-object v0

    invoke-virtual {v0}, Lo/uC;->g()Lcom/netflix/mediaclient/media/LanguageChoice;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v1, v1, Lo/xy;->m:Lo/xz;

    invoke-virtual {v1, p1, p2}, Lo/xz;->b(J)[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v5

    .line 343
    iget-object v1, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v1, v1, Lo/xy;->m:Lo/xz;

    invoke-virtual {v1, p1, p2}, Lo/xz;->e(J)[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v3

    .line 344
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    const/4 p1, 0x0

    .line 347
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getNccpOrderNumber()I

    move-result p1

    const/4 p2, 0x1

    move v6, p1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 353
    :goto_1
    new-instance p1, Lcom/netflix/mediaclient/media/Language;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/subtitles/Subtitle;IZ)V

    return-object p1
.end method

.method static synthetic c(Lo/xy$Application;)V
    .locals 0

    invoke-direct {p0}, Lo/xy$Application;->b()V

    return-void
.end method


# virtual methods
.method public a(JLo/sE;Z)V
    .locals 6

    .line 358
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {v0}, Lo/xy;->a(Lo/xy;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-interface {p3}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 362
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "PlaylistPlaybackSession"

    const-string v5, "onManifestAvailable %d"

    invoke-static {v3, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    iget-object v2, p0, Lo/xy$Application;->b:Lo/xw;

    const-string v5, "requestManifestEnd"

    invoke-virtual {v2, v0, v1, v5}, Lo/xw;->d(JLjava/lang/String;)V

    .line 364
    iget-object v2, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v2, v2, Lo/xy;->m:Lo/xz;

    invoke-virtual {v2, v0, v1, p3}, Lo/xz;->a(JLo/sE;)V

    .line 365
    iget-object v2, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v2, v2, Lo/xy;->l:Lo/xv;

    invoke-virtual {v2, v0, v1, p3}, Lo/xv;->c(JLo/sE;)V

    .line 366
    iget-object v2, p0, Lo/xy$Application;->b:Lo/xw;

    invoke-virtual {v2, v0, v1, p4}, Lo/xw;->a(JZ)V

    .line 367
    iget-object p4, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {p4}, Lo/xy;->d(Lo/xy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 369
    new-instance p4, Lo/uv;

    iget-object v2, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v2, v2, Lo/xy;->s:Landroid/content/Context;

    iget-object v5, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v5, v5, Lo/xy;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-direct {p4, p3, v2, v5}, Lo/uv;-><init>(Lo/sE;Landroid/content/Context;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    invoke-virtual {p4}, Lo/uv;->b()Lo/uC;

    move-result-object p4

    .line 370
    iget-object v2, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v2, v2, Lo/xy;->e:Lo/tZ;

    invoke-virtual {p4}, Lo/uC;->c()Lo/tZ;

    move-result-object v5

    invoke-virtual {v2, v5}, Lo/tZ;->a(Lo/tZ;)V

    .line 371
    iget-object v2, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v2, v2, Lo/xy;->h:Lo/tL;

    invoke-virtual {p4}, Lo/uC;->b()Lo/tL;

    move-result-object v5

    invoke-virtual {v2, v5, p1, p2}, Lo/tL;->c(Lo/tL;J)V

    .line 372
    iget-object v2, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {v2}, Lo/xy;->c(Lo/xy;)Lo/ul;

    move-result-object v2

    iget-object v5, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v5, v5, Lo/xy;->m:Lo/xz;

    invoke-virtual {v5, v0, v1}, Lo/xz;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p3}, Lo/ul;->e(Ljava/lang/String;Lo/sE;)V

    .line 373
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v0, v0, Lo/xy;->n:Lo/tf;

    invoke-virtual {v0, p1, p2, p4}, Lo/tf;->c(JLo/uC;)V

    .line 374
    invoke-direct {p0, p1, p2}, Lo/xy$Application;->c(J)Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v1, v1, Lo/xy;->u:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v1, v1, Lo/xy;->v:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v1, v1, Lo/xy;->w:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 382
    invoke-virtual {p4}, Lo/uC;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-virtual {p4}, Lo/uC;->c()Lo/tZ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/xy;->b(Lo/tZ;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-virtual {v0}, Lo/xy;->d()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    .line 389
    iget-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    new-instance p2, Lo/xA;

    invoke-direct {p2, p0}, Lo/xA;-><init>(Lo/xy$Application;)V

    invoke-virtual {p1, p2}, Lo/xy;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 391
    :cond_2
    invoke-static {}, Lo/fd;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p1, p1, Lo/xy;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 392
    iget-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {p1, p4}, Lo/xy;->c(Lo/xy;Lo/uC;)V

    .line 398
    :cond_3
    :goto_0
    invoke-interface {p3}, Lo/sE;->q()Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    .line 400
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 401
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eligibleTest "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    const/16 v0, 0x52f0

    if-ne p4, v0, :cond_8

    .line 404
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_7

    const/4 v0, 0x3

    const/16 v1, 0x40

    if-eq p3, v0, :cond_6

    const/4 v2, 0x4

    if-eq p3, v2, :cond_5

    const/4 v0, 0x5

    if-eq p3, v0, :cond_4

    .line 418
    iget-object p3, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p3, p3, Lo/xy;->p:Lo/qF;

    invoke-virtual {p3, p2}, Lo/qF;->e(Lcom/google/android/exoplayer2/AudioParameters;)V

    goto :goto_1

    .line 415
    :cond_4
    iget-object p3, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p3, p3, Lo/xy;->p:Lo/qF;

    new-instance v0, Lcom/google/android/exoplayer2/AudioParameters;

    invoke-direct {v0, p4, v1}, Lcom/google/android/exoplayer2/AudioParameters;-><init>(II)V

    invoke-virtual {p3, v0}, Lo/qF;->e(Lcom/google/android/exoplayer2/AudioParameters;)V

    goto :goto_1

    .line 412
    :cond_5
    iget-object p3, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p3, p3, Lo/xy;->p:Lo/qF;

    new-instance p4, Lcom/google/android/exoplayer2/AudioParameters;

    invoke-direct {p4, v0, v1}, Lcom/google/android/exoplayer2/AudioParameters;-><init>(II)V

    invoke-virtual {p3, p4}, Lo/qF;->e(Lcom/google/android/exoplayer2/AudioParameters;)V

    goto :goto_1

    .line 409
    :cond_6
    iget-object p3, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p3, p3, Lo/xy;->p:Lo/qF;

    new-instance p4, Lcom/google/android/exoplayer2/AudioParameters;

    invoke-direct {p4, v4, v1}, Lcom/google/android/exoplayer2/AudioParameters;-><init>(II)V

    invoke-virtual {p3, p4}, Lo/qF;->e(Lcom/google/android/exoplayer2/AudioParameters;)V

    goto :goto_1

    .line 406
    :cond_7
    iget-object p3, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p3, p3, Lo/xy;->p:Lo/qF;

    new-instance p4, Lcom/google/android/exoplayer2/AudioParameters;

    const/16 v0, 0x6c

    invoke-direct {p4, v4, v0}, Lcom/google/android/exoplayer2/AudioParameters;-><init>(II)V

    invoke-virtual {p3, p4}, Lo/qF;->e(Lcom/google/android/exoplayer2/AudioParameters;)V

    goto/16 :goto_1

    .line 422
    :cond_8
    iget-object p3, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p3, p3, Lo/xy;->p:Lo/qF;

    invoke-virtual {p3, p2}, Lo/qF;->e(Lcom/google/android/exoplayer2/AudioParameters;)V

    goto/16 :goto_1

    .line 426
    :cond_9
    iget-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object p1, p1, Lo/xy;->p:Lo/qF;

    invoke-virtual {p1, p2}, Lo/qF;->e(Lcom/google/android/exoplayer2/AudioParameters;)V

    .line 429
    :cond_a
    iget-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-virtual {p1}, Lo/xy;->d()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lo/xy;->c(Lo/xy;J)V

    .line 430
    iget-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {p1}, Lo/xy;->e(Lo/xy;)V

    return-void
.end method

.method public c(JLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 435
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {v0}, Lo/xy;->a(Lo/xy;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 438
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v1, "PlaylistPlaybackSession"

    const-string v2, "onManifestError %d %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 439
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {v0}, Lo/xy;->d(Lo/xy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 440
    iget-object v0, p0, Lo/xy$Application;->c:Lo/xy;

    iget-object v0, v0, Lo/xy;->n:Lo/tf;

    new-instance v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/mediasource/ManifestLoadException;

    invoke-direct {v1, p3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/mediasource/ManifestLoadException;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, p1, p2, v1}, Lo/tf;->b(JLjava/io/IOException;)V

    .line 442
    iget-object p1, p0, Lo/xy$Application;->c:Lo/xy;

    invoke-static {p1}, Lo/xy;->e(Lo/xy;)V

    return-void
.end method
