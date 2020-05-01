.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;
.source "BaseTextSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;


# static fields
.field protected static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field protected static final START_TIME_TRASHOLD:I = 0x7530


# instance fields
.field protected mAspectExtent:Ljava/lang/String;

.field protected mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

.field protected final mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected final mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected mPixelAspectRatio:Ljava/lang/String;

.field protected final mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/Region;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field protected final mTextBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected mTickRate:D

.field protected mTimeBase:Ljava/lang/String;

.field protected final mUserDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected final mVideoAspectRatio:F


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;-><init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStyles:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->createDefaults()V

    .line 114
    iput p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mVideoAspectRatio:F

    .line 115
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mUserDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 116
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 117
    invoke-static {p3, p4}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDeviceDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 118
    return-void
.end method

.method private compareBlockTime(JI)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 545
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_0

    .line 547
    const-string/jumbo v0, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is higher than numbet of blocks  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    monitor-exit v2

    move v0, v1

    .line 565
    :goto_0
    return v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 551
    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisible(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Block "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is visible for pts "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 556
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getStart()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-gez v0, :cond_4

    .line 557
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    const-string/jumbo v0, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is before pts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 562
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 563
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Block "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is after pts "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_5
    const/4 v0, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private findIndex(J)I
    .locals 5

    .prologue
    .line 479
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index was not known before. Find it for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    const-wide/16 v0, 0x7530

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 484
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Less than treshold, return 0"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    .line 511
    :cond_1
    :goto_0
    return v0

    .line 488
    :cond_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Try to guess"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->search(J)I

    move-result v0

    .line 491
    if-lez v0, :cond_4

    .line 492
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Lets see if index is first in array or just first found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    add-int/lit8 v1, v0, -0x1

    .line 494
    :goto_1
    if-lez v1, :cond_4

    .line 495
    invoke-direct {p0, p1, p2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->compareBlockTime(JI)I

    move-result v2

    if-nez v2, :cond_4

    .line 496
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New Index found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_1

    .line 507
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Index found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLastKnownPosition(J)I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    if-gez v0, :cond_0

    .line 472
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->findIndex(J)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    .line 474
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    return v0
.end method

.method private parseBody(Lorg/w3c/dom/Element;)V
    .locals 6

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Body element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing body started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-static {p1, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 323
    const-string/jumbo v1, "div"

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 324
    if-nez v1, :cond_1

    .line 325
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "DIV element not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    .line 335
    const-string/jumbo v0, "p"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 336
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 337
    :cond_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "P element(s) not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 342
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 343
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_4

    .line 344
    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v5, 0x0

    invoke-direct {v4, v0, p0, v2, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;-><init>(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V

    .line 345
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v5

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    monitor-exit v5

    .line 341
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 349
    :cond_4
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v4, "Node is not instance of element for P!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 353
    :cond_5
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing body done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseHead(Lorg/w3c/dom/Element;)V
    .locals 4

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Head element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const-string/jumbo v0, "use"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->fromNccpCode(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 203
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseStyling(Lorg/w3c/dom/Element;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseRegions(Lorg/w3c/dom/Element;)V

    .line 205
    return-void
.end method

.method private parseRegions(Lorg/w3c/dom/Element;)V
    .locals 6

    .prologue
    .line 209
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing regions started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v0, "layout"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Layout element not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string/jumbo v1, "region"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 219
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Region element(s) not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 224
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 225
    instance-of v3, v0, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_7

    .line 226
    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-static {p0, v0, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->createRegion(Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    .line 227
    if-nez v0, :cond_4

    .line 228
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Region not found!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 230
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    const-string/jumbo v3, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Region exist, but its ID is null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 234
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 235
    const-string/jumbo v3, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Region "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 241
    :cond_7
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Node is not instance of element for region!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 245
    :cond_8
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing regions done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private parseStyling(Lorg/w3c/dom/Element;)V
    .locals 6

    .prologue
    .line 250
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing styling started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string/jumbo v0, "styling"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 253
    if-nez v0, :cond_0

    .line 254
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Styling element not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string/jumbo v1, "style"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 259
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Style element(s) not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 264
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 265
    instance-of v3, v0, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_6

    .line 267
    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-static {v0, p0, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 268
    if-nez v0, :cond_4

    .line 269
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Style not found!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 270
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 271
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    const-string/jumbo v3, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Style exist, nut its ID is null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 275
    :cond_5
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStyles:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    const-string/jumbo v3, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Style found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 281
    :cond_6
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Node is not instance of element for style!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 285
    :cond_7
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing styling done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private parseTt(Lorg/w3c/dom/Element;)V
    .locals 6

    .prologue
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Root element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const-string/jumbo v0, "ttp:tickRate"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 164
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 166
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    .line 167
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Tickrate defaults to 1000"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    .line 178
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tickrate final: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    const-string/jumbo v0, "ttp:pixelAspectRatio"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mPixelAspectRatio:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "tts:extent"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mAspectExtent:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "ttp:cellResolution"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mAspectExtent:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mPixelAspectRatio:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mVideoAspectRatio:F

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    .line 188
    :cond_2
    return-void

    .line 170
    :cond_3
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Tickrate calculate"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    div-double v0, v4, v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    goto :goto_0

    .line 174
    :cond_4
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Tickrate defaults to 1000 on empty tag"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    goto :goto_0
.end method

.method private search(J)I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 516
    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    .line 518
    :goto_0
    if-lt v0, v1, :cond_2

    .line 520
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 521
    invoke-direct {p0, p1, p2, v2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->compareBlockTime(JI)I

    move-result v4

    .line 522
    if-nez v4, :cond_0

    move v0, v2

    .line 533
    :goto_1
    return v0

    .line 524
    :cond_0
    if-gez v4, :cond_1

    .line 526
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 529
    :cond_1
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 533
    goto :goto_1
.end method


# virtual methods
.method protected createDefaults()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 127
    return-void
.end method

.method public getCellResolution()Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    return-object v0
.end method

.method public getDeviceDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getNamedRegion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 1

    .prologue
    .line 438
    if-nez p1, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    goto :goto_0
.end method

.method public getNamedStyle(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    goto :goto_0
.end method

.method public declared-synchronized getNumberOfDisplayedSubtitles()I
    .locals 4

    .prologue
    .line 640
    monitor-enter p0

    const/4 v0, 0x0

    .line 641
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 642
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 643
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getNumberOfDisplays()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 644
    goto :goto_0

    .line 645
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    monitor-exit p0

    return v1

    .line 645
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 640
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfSubtitlesExpectedToBeDisplayed()I
    .locals 8

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 612
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User just seeked, there was no pts update after that, just return already known value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 618
    :cond_2
    const/4 v1, 0x0

    .line 620
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 622
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisibleInGivenTimeRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 623
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 625
    goto :goto_1

    .line 626
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 628
    :try_start_3
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v1

    .line 630
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 631
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " where supposed to be visible between "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " for total of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 626
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getRegionDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getRegions()[Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 458
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    .line 460
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    goto :goto_0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
    .locals 13

    .prologue
    .line 363
    const-wide/16 v0, 0x7d0

    add-long v6, p1, v0

    .line 364
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 365
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle blocks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->getLastKnownPosition(J)I

    move-result v0

    .line 373
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==> Start search from index: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_1
    const/4 v1, 0x0

    .line 379
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v5

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move v2, v0

    .line 381
    :goto_0
    if-ge v2, v8, :cond_2

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 383
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getStart()J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-lez v9, :cond_3

    .line 384
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Subtitle block start is in future more than 2 sec, break search"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    .line 404
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    const/16 v5, 0x7d0

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Ljava/util/List;Ljava/util/List;IJ)V

    return-object v1

    .line 387
    :cond_3
    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisible(J)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 388
    if-nez v1, :cond_5

    .line 389
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    const-string/jumbo v1, "nf_subtitles"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "===> New index search found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_4
    const/4 v1, 0x1

    .line 393
    iput v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    .line 395
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 381
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 396
    :cond_6
    invoke-interface {v0, p1, p2, v6, v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisibleInGivenTimeRange(JJ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 397
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move v0, v1

    goto :goto_1

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTextStyleDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getTickRate()D
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    return-wide v0
.end method

.method public getTimeBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mUserDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 139
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "==> Subtitle parsing started..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subtitle data xml is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->createDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseTt(Lorg/w3c/dom/Element;)V

    .line 147
    const-string/jumbo v1, "head"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getChildElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseHead(Lorg/w3c/dom/Element;)V

    .line 148
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Ready to serve subtitles..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mReady:Z

    .line 150
    const-string/jumbo v1, "body"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getChildElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseBody(Lorg/w3c/dom/Element;)V

    .line 151
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "==> Subtitle parsing completed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public declared-synchronized seeked(I)V
    .locals 8

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->seeked(I)V

    .line 589
    const/4 v1, 0x0

    .line 591
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 594
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisibleInGivenTimeRange(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    add-int/lit8 v1, v1, 0x1

    .line 597
    :cond_0
    int-to-long v4, p1

    invoke-interface {v0, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->seeked(J)V

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 587
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 599
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    :try_start_4
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    .line 601
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J

    .line 603
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where supposed to be visible between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 606
    :cond_2
    monitor-exit p0

    return-void
.end method
