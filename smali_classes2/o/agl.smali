.class public Lo/agl;
.super Lo/agh;
.source ""

# interfaces
.implements Lo/AU;
.implements Lo/AK;


# static fields
.field private static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/agp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lo/OneTimeUseBuilder;

.field public c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

.field private d:Lcom/netflix/model/leafs/Video$Advisories;

.field public e:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/OneTimeUseBuilder;",
            "Lcom/netflix/model/leafs/TrackableListSummaryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 378
    new-instance v0, Lo/agl$4;

    invoke-direct {v0}, Lo/agl$4;-><init>()V

    sput-object v0, Lo/agl;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lo/TableLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lo/agh;-><init>(Lo/TableLayout;)V

    return-void
.end method

.method private k()Lcom/netflix/model/leafs/Video$Detail;
    .locals 1

    .line 561
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 565
    :cond_0
    invoke-virtual {v0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    return-object v0
.end method

.method private m()Lo/agp;
    .locals 6

    .line 586
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 590
    :cond_0
    invoke-virtual {v0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v2, v3, :cond_1

    .line 591
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to fetch video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/agp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as an EPISODE."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method private n()Lcom/netflix/model/leafs/BookmarkImpl;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_0
    iget-object v0, v0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    return-object v0
.end method

.method private s()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 604
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public K()J
    .locals 2

    .line 451
    invoke-direct {p0}, Lo/agl;->n()Lcom/netflix/model/leafs/BookmarkImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->n()Lcom/netflix/model/leafs/BookmarkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/BookmarkImpl;->getLastModified()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 441
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .line 462
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lo/agl;->s()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 463
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->bC()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public P()I
    .locals 2

    .line 456
    invoke-direct {p0}, Lo/agl;->n()Lcom/netflix/model/leafs/BookmarkImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->n()Lcom/netflix/model/leafs/BookmarkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/BookmarkImpl;->getBookmarkPosition()I

    move-result v0

    .line 457
    :goto_0
    invoke-virtual {p0}, Lo/agl;->R()I

    move-result v1

    invoke-static {v0, v1}, Lo/aeC;->c(II)I

    move-result v0

    return v0
.end method

.method public Q()Ljava/lang/String;
    .locals 2

    .line 470
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lo/agl;->s()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 471
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->q()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public R()I
    .locals 1

    .line 484
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 485
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    :goto_0
    return v0
.end method

.method public S()I
    .locals 1

    .line 478
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 479
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    :goto_0
    return v0
.end method

.method public T()I
    .locals 1

    .line 490
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 491
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    :goto_0
    return v0
.end method

.method public U()Ljava/lang/String;
    .locals 2

    .line 512
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lo/agl;->s()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->U()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public V()I
    .locals 2

    .line 496
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lo/agl;->s()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 497
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->V()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public W()Z
    .locals 1

    .line 520
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X()I
    .locals 2

    .line 504
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lo/agl;->s()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 505
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->X()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public Y()I
    .locals 1

    .line 526
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 527
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    :goto_0
    return v0
.end method

.method public Z()Z
    .locals 1

    .line 555
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public aa()Z
    .locals 1

    .line 544
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPreviewProtected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ab()Z
    .locals 1

    .line 538
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ac()Z
    .locals 1

    .line 532
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ae()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public af()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ag()Ljava/lang/String;
    .locals 2

    .line 614
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lo/agl;->s()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agl;->m()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->ag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ah()Z
    .locals 1

    .line 620
    invoke-virtual {p0}, Lo/agl;->o()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    invoke-interface {v0}, Lo/AK;->ah()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ai()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ak()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public al()Lcom/netflix/model/leafs/blades/CreditMarks;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public am()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ao()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/netflix/model/leafs/VideoInfo$KidsSummary;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "bookmark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "inQueue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "offlineAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "gallery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "watchNext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "episodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "advisories"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "topTenBoxart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_9
    const-string v0, "hasWatched"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_a
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v0, "volatileBitmaskedDetails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_0
    invoke-static {}, Lo/SettingsSlicesContract;->b()Lo/SettingsSlicesContract;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_1
    iget-object p1, p0, Lo/agl;->e:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 70
    :pswitch_2
    iget-object p1, p0, Lo/agl;->a:Lo/OneTimeUseBuilder;

    return-object p1

    .line 69
    :pswitch_3
    iget-object p1, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    return-object p1

    .line 68
    :pswitch_4
    iget-object p1, p0, Lo/agl;->d:Lcom/netflix/model/leafs/Video$Advisories;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70f7b6fa -> :sswitch_c
        -0x6eb9585a -> :sswitch_b
        -0x4f95e7af -> :sswitch_a
        -0x43bf624c -> :sswitch_9
        -0x40096aa0 -> :sswitch_8
        -0x37ea4e63 -> :sswitch_7
        -0x26a8e0e9 -> :sswitch_6
        -0x25b9fe28 -> :sswitch_5
        -0x10bd3b9e -> :sswitch_4
        -0xbb388ae -> :sswitch_3
        0x81f8c26 -> :sswitch_2
        0x72cf8aec -> :sswitch_1
        0x7787a536 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 4

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "gallery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "watchNext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "advisories"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 154
    :cond_1
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lo/agl;->e:Lcom/netflix/model/branches/SummarizedList;

    goto :goto_2

    .line 153
    :cond_2
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agl;->a:Lo/OneTimeUseBuilder;

    goto :goto_2

    .line 152
    :cond_3
    check-cast p2, Lcom/netflix/model/leafs/KidsCharacter$Summary;

    iput-object p2, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    goto :goto_2

    .line 151
    :cond_4
    check-cast p2, Lcom/netflix/model/leafs/Video$Advisories;

    iput-object p2, p0, Lo/agl;->d:Lcom/netflix/model/leafs/Video$Advisories;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_3
        -0x26a8e0e9 -> :sswitch_2
        -0x10bd3b9e -> :sswitch_1
        -0xbb388ae -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 93
    invoke-virtual {p0, p1}, Lo/agl;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_3
    const-string v1, "gallery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "watchNext"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_7
    const-string v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "hasWatched"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const-string v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_a
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "volatileBitmaskedDetails"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    invoke-static {}, Lo/SettingsSlicesContract;->b()Lo/SettingsSlicesContract;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_1
    new-instance p1, Lcom/netflix/model/branches/SummarizedList;

    sget-object v0, Lo/agB;->e:Lo/SearchRecentSuggestions;

    sget-object v1, Lo/agB;->k:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0, v1}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lo/SearchRecentSuggestions;Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agl;->e:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 105
    :pswitch_2
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agl;->a:Lo/OneTimeUseBuilder;

    return-object p1

    .line 104
    :pswitch_3
    new-instance p1, Lcom/netflix/model/leafs/KidsCharacter$Summary;

    invoke-direct {p1}, Lcom/netflix/model/leafs/KidsCharacter$Summary;-><init>()V

    iput-object p1, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    return-object p1

    .line 103
    :pswitch_4
    new-instance p1, Lcom/netflix/model/leafs/Video$Advisories;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$Advisories;-><init>()V

    iput-object p1, p0, Lo/agl;->d:Lcom/netflix/model/leafs/Video$Advisories;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70f7b6fa -> :sswitch_b
        -0x6eb9585a -> :sswitch_a
        -0x4f95e7af -> :sswitch_9
        -0x43bf624c -> :sswitch_8
        -0x37ea4e63 -> :sswitch_7
        -0x26a8e0e9 -> :sswitch_6
        -0x25b9fe28 -> :sswitch_5
        -0x10bd3b9e -> :sswitch_4
        -0xbb388ae -> :sswitch_3
        0x81f8c26 -> :sswitch_2
        0x72cf8aec -> :sswitch_1
        0x7787a536 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 1

    .line 446
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->bD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0}, Lo/agl;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Lo/agl;->l()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0}, Lo/agp;->e()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public f()Lo/Bv;
    .locals 1

    .line 329
    iget-object v0, p0, Lo/agl;->e:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v0

    check-cast v0, Lo/Bv;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lo/agl;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lo/agl;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 180
    iget-object v0, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lo/agl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FalkorKidsCharacter"

    if-eqz v0, :cond_0

    const-string v0, "getGallery() kidsCharacterId is null"

    .line 346
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lo/agl;->bm()Lo/TableLayout;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lo/agl;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/SEService;->e(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v2

    .line 351
    invoke-interface {v0, v2}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/agp;

    .line 358
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v5}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_1
    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v5}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 362
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 365
    invoke-virtual {v5}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    aput-object v5, v6, v7

    const-string v5, "unexpected videoType=%s in getGallery"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_3
    sget-object v1, Lo/agl;->j:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 369
    sget-object v1, Lo/agl;->j:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 284
    invoke-direct {p0}, Lo/agl;->k()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isAvailableForDownload()Z
    .locals 1

    .line 273
    invoke-virtual {p0}, Lo/agl;->e()Z

    move-result v0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lo/agl;->c:Lcom/netflix/model/leafs/KidsCharacter$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/KidsCharacter$Summary;->getCharacterImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public l()Lo/agp;
    .locals 3

    .line 570
    iget-object v0, p0, Lo/agl;->a:Lo/OneTimeUseBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 574
    :cond_0
    invoke-virtual {p0}, Lo/agl;->bm()Lo/TableLayout;

    move-result-object v1

    const-class v2, Lo/agp;

    invoke-virtual {v0, v1, v2}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agp;

    return-object v0
.end method

.method public o()Lo/AK;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FalkorKidsCharacter [getType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agl;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCharacterId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getCharacterTitle()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
