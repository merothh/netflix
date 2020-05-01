.class public Lo/agp;
.super Lo/agh;
.source ""

# interfaces
.implements Lo/agg;


# static fields
.field private static final a:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private A:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

.field private B:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

.field private C:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

.field private D:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap<",
            "Lo/agr;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/netflix/model/leafs/TopTenBoxartImpl;

.field private F:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;

.field private G:Lcom/netflix/model/leafs/Video$BillboardArt;

.field private H:Lcom/netflix/model/leafs/Video$TvCardArt;

.field private I:Lcom/netflix/model/leafs/TallPanelArtImpl;

.field private J:Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

.field private K:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

.field private L:Lo/OneTimeUseBuilder;

.field private M:Lcom/netflix/model/leafs/Video$TrickplayBifUrl;

.field private N:Lo/OneTimeUseBuilder;

.field private O:Lcom/netflix/model/leafs/PreviewArtImpl;

.field private P:Lcom/netflix/model/leafs/PreviewArtImpl;

.field private Q:Lcom/netflix/model/leafs/ArtworkColorsImpl;

.field private R:Lcom/netflix/model/leafs/InteractiveMomentsSummary;

.field private S:Lcom/netflix/model/leafs/Video$Tags;

.field private T:Lo/AN;

.field private U:Lcom/netflix/model/leafs/TimeCodesImpl;

.field private V:Lo/AN;

.field private W:Lcom/netflix/model/leafs/Video$RemoveFromCw;

.field private X:Lcom/netflix/model/leafs/SharingImpl;

.field private Z:Lcom/netflix/model/leafs/SupportedMediaTracksImpl;

.field private aa:Lcom/netflix/model/leafs/Video$IsRestricted;

.field private ab:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

.field private ac:Lcom/netflix/model/leafs/LogoBrandedHorizontalImpl;

.field protected e:Lcom/netflix/model/leafs/BookmarkImpl;

.field private f:Lcom/netflix/model/leafs/Video$Advisories;

.field private g:Lcom/netflix/model/leafs/Video$Detail;

.field private h:Lcom/netflix/model/leafs/SummaryImpl;

.field private i:Lcom/netflix/model/leafs/originals/TallPanelAsset;

.field private j:Lcom/netflix/model/leafs/Video$OfflineAvailable;

.field private k:Lcom/netflix/model/leafs/Video$HasWatched;

.field private l:Lcom/netflix/model/leafs/Video$HeroImages;

.field private m:Lcom/netflix/model/leafs/Video$InRemindMeQueue;

.field private n:Lcom/netflix/model/leafs/Video$RatingInfo;

.field private o:Lcom/netflix/model/leafs/Video$InQueue;

.field private p:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/OneTimeUseBuilder;",
            "Lcom/netflix/model/leafs/TrackableListSummaryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/OneTimeUseBuilder;",
            "Lcom/netflix/model/leafs/TrackableListSummaryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/netflix/model/leafs/Video$SupplementalVideos;

.field private s:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/OneTimeUseBuilder;",
            "Lcom/netflix/model/leafs/TrackableListSummaryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/netflix/model/leafs/PostPlayImpression;

.field private u:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/OneTimeUseBuilder;",
            "Lcom/netflix/model/leafs/TrackableListSummaryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lo/OneTimeUseBuilder;

.field private w:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/netflix/model/leafs/PrePlayExperiencesImpl;

.field private y:Lcom/netflix/model/leafs/Video$SearchTitle;

.field private z:Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/agp;->a:J

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/agp;->d:J

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/agp;->c:J

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

    .line 216
    invoke-direct {p0, p1}, Lo/agh;-><init>(Lo/TableLayout;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 1890
    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "video ID"

    .line 1891
    invoke-direct {p0, p1, v0}, Lo/agp;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1894
    :cond_0
    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "video type"

    .line 1895
    invoke-direct {p0, p1, v0}, Lo/agp;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private bG()Lo/agp;
    .locals 3

    .line 1309
    iget-object v0, p0, Lo/agp;->w:Lcom/netflix/falkor/BranchMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "current"

    .line 1312
    invoke-virtual {v0, v2}, Lcom/netflix/falkor/BranchMap;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1313
    instance-of v2, v0, Lo/SearchIndexableData;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1316
    :cond_1
    check-cast v0, Lo/OneTimeUseBuilder;

    .line 1317
    invoke-virtual {p0}, Lo/agp;->bm()Lo/TableLayout;

    move-result-object v1

    const-class v2, Lo/agp;

    invoke-virtual {v0, v1, v2}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agp;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private bJ()Lcom/netflix/model/leafs/Video$Detail;
    .locals 1

    .line 1300
    invoke-direct {p0}, Lo/agp;->bG()Lo/agp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1304
    :cond_0
    invoke-virtual {v0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    return-object v0
.end method

.method private bK()Lcom/netflix/model/leafs/SummaryImpl;
    .locals 1

    .line 2051
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    return-object v0
.end method

.method private bM()Lcom/netflix/model/leafs/TrackableListSummaryImpl;
    .locals 2

    .line 1694
    iget-object v0, p0, Lo/agp;->p:Lcom/netflix/model/branches/SummarizedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "summary"

    .line 1697
    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/SummarizedList;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    return-object v0
.end method

.method private bN()Lcom/netflix/model/leafs/TrackableListSummaryImpl;
    .locals 2

    .line 1701
    iget-object v0, p0, Lo/agp;->q:Lcom/netflix/model/branches/SummarizedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "summary"

    .line 1704
    invoke-virtual {v0, v1}, Lcom/netflix/model/branches/SummarizedList;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    return-object v0
.end method

.method private c(J)Z
    .locals 4

    .line 858
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 859
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->topTenRank:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 860
    :goto_0
    iget-object v3, p0, Lo/agp;->E:Lcom/netflix/model/leafs/TopTenBoxartImpl;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 862
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/model/leafs/Video$Detail;->needsRefresh(J)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    return v1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-7478 - Can\'t get post play "

    .line 1904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "getType="

    .line 1905
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",getId="

    .line 1906
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",getCurrentEpisodeId="

    .line 1907
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agp;->ax()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FalkorVideo"

    .line 1909
    invoke-static {p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/netflix/model/leafs/PostPlayExperience;
    .locals 5

    .line 1871
    iget-object v0, p0, Lo/agp;->v:Lo/OneTimeUseBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lo/agp;->b:Lo/TableLayout;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "postPlayExperiences"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "experienceData"

    aput-object v4, v1, v3

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    .line 1873
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1874
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayExperience;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AZ;",
            ">;"
        }
    .end annotation

    const-string v0, "videos"

    .line 1862
    invoke-direct {p0, v0}, Lo/agp;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1866
    :cond_0
    iget-object v0, p0, Lo/agp;->b:Lo/TableLayout;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1867
    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "postPlayExperience"

    aput-object v3, v1, v2

    const/4 v3, 0x3

    invoke-static {v2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "videoRef"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "summary"

    aput-object v3, v1, v2

    .line 1866
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1642
    invoke-virtual {p0}, Lo/agp;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->j(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 2064
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2065
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->year:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 2085
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2086
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->certificationBoardId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 2071
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2072
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->certificationValue:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 2078
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2079
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->certificationLevel:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 1606
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1607
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1600
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1601
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1618
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1619
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()J
    .locals 4

    .line 1030
    iget-object v0, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0}, Lcom/netflix/model/leafs/BookmarkImpl;->getLastModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 1033
    :goto_0
    invoke-virtual {p0}, Lo/agp;->bu()Lo/agg;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1034
    invoke-direct {p0}, Lo/agp;->bG()Lo/agp;

    move-result-object v2

    const-string v3, "bookmark"

    invoke-virtual {v2, v3}, Lo/agp;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/BookmarkImpl;

    check-cast v2, Lcom/netflix/model/leafs/BookmarkImpl;

    if-eqz v2, :cond_1

    .line 1036
    invoke-virtual {v2}, Lcom/netflix/model/leafs/BookmarkImpl;->getLastModified()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public L()Z
    .locals 1

    .line 1612
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1613
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1624
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1625
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 2

    .line 1005
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lo/agp;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->title:Ljava/lang/String;

    return-object v0

    .line 1011
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1012
    invoke-virtual {p0}, Lo/agp;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .line 1086
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1089
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {p0}, Lo/agp;->bC()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_1
    invoke-virtual {p0}, Lo/agp;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()I
    .locals 2

    .line 1044
    invoke-virtual {p0}, Lo/agp;->p()I

    move-result v0

    invoke-virtual {p0}, Lo/agp;->R()I

    move-result v1

    invoke-static {v0, v1}, Lo/aeC;->c(II)I

    move-result v0

    return v0
.end method

.method public Q()Ljava/lang/String;
    .locals 2

    .line 1097
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1098
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/agp;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()I
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    return v0

    .line 1127
    :cond_0
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1129
    iget v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->runtime:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public S()I
    .locals 1

    .line 1106
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1108
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    return v0

    .line 1112
    :cond_0
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1114
    iget v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->runtime:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public T()I
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1137
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    :goto_0
    return v0
.end method

.method public U()Ljava/lang/String;
    .locals 2

    .line 1193
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonTitle:Ljava/lang/String;

    return-object v0

    .line 1196
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public V()I
    .locals 2

    .line 1142
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeNumber:I

    :goto_0
    return v1

    .line 1145
    :cond_1
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1146
    :cond_2
    iget v1, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeNumber:I

    :goto_1
    return v1
.end method

.method public W()Z
    .locals 4

    .line 1242
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1246
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1247
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1243
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1244
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public X()I
    .locals 3

    .line 1152
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1155
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1156
    :cond_1
    iget v1, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumber:I

    :goto_0
    return v1

    .line 1153
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget v1, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumber:I

    :goto_2
    return v1
.end method

.method public Y()I
    .locals 1

    .line 1253
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1254
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    :goto_0
    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1294
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1295
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
    .locals 2

    .line 989
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 992
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->id:Ljava/lang/String;

    return-object v0

    .line 995
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    invoke-virtual {p0}, Lo/agp;->ax()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "-1"

    return-object v0
.end method

.method public a(F)Lo/agg;
    .locals 3

    .line 1329
    invoke-direct {p0}, Lo/agp;->bG()Lo/agp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {v0}, Lo/agp;->S()I

    move-result v1

    if-lez v1, :cond_0

    .line 1333
    invoke-virtual {v0}, Lo/agp;->p()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_0

    .line 1334
    invoke-virtual {v0}, Lo/agp;->ac()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, p1, v1

    const/4 v1, 0x1

    .line 1335
    invoke-virtual {v0}, Lo/agp;->s()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-string v1, "detail"

    aput-object v1, p1, v0

    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 1336
    invoke-virtual {p0}, Lo/agp;->bm()Lo/TableLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/TableLayout;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/agp;

    :cond_0
    return-object v0
.end method

.method public aA()I
    .locals 1

    .line 1798
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1799
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumber:I

    :goto_0
    return v0
.end method

.method public aB()Ljava/lang/String;
    .locals 1

    .line 1792
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1793
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->newBadge:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aC()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;"
        }
    .end annotation

    .line 1647
    invoke-virtual {p0}, Lo/agp;->bm()Lo/TableLayout;

    move-result-object v0

    .line 1648
    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/SEService;->a(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 1647
    invoke-interface {v0, v1}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aD()Lcom/netflix/model/leafs/TrackableListSummary;
    .locals 1

    .line 1660
    invoke-direct {p0}, Lo/agp;->bM()Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    move-result-object v0

    return-object v0
.end method

.method public aE()I
    .locals 1

    .line 1671
    invoke-direct {p0}, Lo/agp;->bM()Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1672
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;->getTrackId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public aF()Lo/Ba;
    .locals 4

    .line 1806
    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 1807
    invoke-virtual {p0}, Lo/agp;->bm()Lo/TableLayout;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "videos"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "seasons"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "current"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "detail"

    aput-object v3, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TableLayout;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    .line 1808
    instance-of v1, v0, Lo/agp;

    if-eqz v1, :cond_0

    .line 1809
    check-cast v0, Lo/agp;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public aG()Ljava/lang/String;
    .locals 3

    .line 1721
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 1723
    iget-object v2, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    .line 1516
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aI()I
    .locals 2

    .line 1345
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1346
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    :goto_0
    if-gtz v0, :cond_2

    .line 1348
    iget-object v0, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->releaseYear:I

    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public aJ()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;"
        }
    .end annotation

    .line 1653
    invoke-virtual {p0}, Lo/agp;->bm()Lo/TableLayout;

    move-result-object v0

    .line 1654
    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/SEService;->b(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 1653
    invoke-interface {v0, v1}, Lo/TableLayout;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .locals 1

    .line 1512
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aL()Lcom/netflix/model/leafs/TrackableListSummary;
    .locals 1

    .line 1666
    invoke-direct {p0}, Lo/agp;->bN()Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    move-result-object v0

    return-object v0
.end method

.method public aM()I
    .locals 6

    .line 1400
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1401
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->topTenRank:I

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0xa

    if-gt v0, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    :goto_3
    return v0
.end method

.method public aN()I
    .locals 1

    .line 1377
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1378
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    :goto_0
    return v0
.end method

.method public aO()Ljava/lang/String;
    .locals 1

    .line 1521
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    .line 1394
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1395
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aQ()Ljava/lang/String;
    .locals 3

    .line 1367
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1368
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    .line 1369
    :goto_0
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1370
    iget-object v0, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->certification:Ljava/lang/String;

    :goto_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 1

    .line 1081
    iget-object v0, p0, Lo/agp;->r:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$SupplementalVideos;->defaultTrailer:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aS()Z
    .locals 12

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 818
    invoke-virtual {p0}, Lo/agp;->bE()J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    return v4

    .line 825
    :cond_0
    sget-wide v2, Lo/agp;->a:J

    sub-long v2, v0, v2

    .line 827
    iget-object v5, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2, v3}, Lcom/netflix/model/leafs/BookmarkImpl;->needsRefresh(J)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 828
    :goto_0
    iget-object v7, p0, Lo/agp;->o:Lcom/netflix/model/leafs/Video$InQueue;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v2, v3}, Lcom/netflix/model/leafs/Video$InQueue;->needsRefresh(J)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 829
    :goto_1
    iget-object v8, p0, Lo/agp;->n:Lcom/netflix/model/leafs/Video$RatingInfo;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v2, v3}, Lcom/netflix/model/leafs/Video$RatingInfo;->needsRefresh(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 830
    :goto_2
    sget-wide v8, Lo/agp;->d:J

    sub-long v8, v0, v8

    invoke-direct {p0, v8, v9}, Lo/agp;->c(J)Z

    move-result v3

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 833
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v9

    const-string v9, "FalkorVideo"

    const-string v11, "shouldRefreshVolatileData bookmark=%b, queue=%b, rating=%b topTenNeeds=%b"

    .line 832
    invoke-static {v9, v11, v8}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_9

    .line 836
    iget-object v3, p0, Lo/agp;->w:Lcom/netflix/falkor/BranchMap;

    if-eqz v3, :cond_9

    const-string v5, "current"

    .line 837
    invoke-virtual {v3, v5}, Lcom/netflix/falkor/BranchMap;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v3

    .line 840
    iget-object v7, p0, Lo/agp;->u:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v7, :cond_a

    instance-of v8, v3, Lo/SearchIndexableData;

    if-nez v8, :cond_a

    invoke-virtual {v7, v5}, Lcom/netflix/model/branches/SummarizedList;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v5

    instance-of v5, v5, Lo/SearchIndexableData;

    if-eqz v5, :cond_6

    goto :goto_6

    .line 842
    :cond_6
    instance-of v5, v3, Lo/OneTimeUseBuilder;

    if-eqz v5, :cond_9

    .line 843
    sget-wide v7, Lo/agp;->c:J

    sub-long/2addr v0, v7

    .line 844
    check-cast v3, Lo/OneTimeUseBuilder;

    invoke-virtual {v3, v0, v1}, Lo/OneTimeUseBuilder;->needsRefresh(J)Z

    move-result v2

    .line 845
    iget-object v3, p0, Lo/agp;->u:Lcom/netflix/model/branches/SummarizedList;

    invoke-virtual {v3}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lo/agp;->u:Lcom/netflix/model/branches/SummarizedList;

    invoke-virtual {v3}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    invoke-virtual {v3, v0, v1}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;->needsRefresh(J)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    new-array v1, v10, [Ljava/lang/Object;

    .line 847
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "shouldRefreshVolatileData currentEpisode=%b, seasonCount=%b"

    invoke-static {v9, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v2, :cond_a

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    move v4, v2

    :cond_a
    :goto_6
    return v4
.end method

.method public aT()Z
    .locals 1

    .line 1438
    iget-object v0, p0, Lo/agp;->k:Lcom/netflix/model/leafs/Video$HasWatched;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$HasWatched;->hasWatched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aU()Ljava/lang/String;
    .locals 1

    .line 1921
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1922
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aV()Z
    .locals 1

    .line 1492
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1493
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aW()Z
    .locals 1

    .line 1548
    iget-object v0, p0, Lo/agp;->o:Lcom/netflix/model/leafs/Video$InQueue;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aX()Ljava/lang/String;
    .locals 1

    .line 1355
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1356
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aY()Ljava/lang/String;
    .locals 1

    .line 1558
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1559
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .locals 1

    .line 928
    iget-object v0, p0, Lo/agp;->H:Lcom/netflix/model/leafs/Video$TvCardArt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TvCardArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->H:Lcom/netflix/model/leafs/Video$TvCardArt;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TvCardArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public aa()Z
    .locals 4

    .line 1282
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1286
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1287
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPreviewProtected:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1283
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1284
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPreviewProtected:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public ab()Z
    .locals 4

    .line 1271
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1275
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1276
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1272
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1273
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public ac()Z
    .locals 3

    .line 1259
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1260
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1261
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1263
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_2

    .line 1264
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    return v0

    :cond_2
    return v1
.end method

.method public ad()Z
    .locals 1

    .line 2035
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNonSerializedTv:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ae()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public af()Z
    .locals 1

    .line 1421
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1422
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ag()Ljava/lang/String;
    .locals 2

    .line 1939
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1940
    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->abbrSeqLabel:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->abbrSeqLabel:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method public ah()Z
    .locals 1

    .line 1915
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1916
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public ai()Z
    .locals 1

    .line 1427
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1428
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeNumberHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;
    .locals 1

    .line 1444
    iget-object v0, p0, Lo/agp;->U:Lcom/netflix/model/leafs/TimeCodesImpl;

    return-object v0
.end method

.method public ak()Z
    .locals 1

    .line 1498
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1499
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public al()Lcom/netflix/model/leafs/blades/CreditMarks;
    .locals 1

    .line 1945
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1946
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    :goto_0
    return-object v0
.end method

.method public am()Z
    .locals 3

    .line 1504
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1505
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->supportsPrePlay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1507
    :cond_1
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->supportsPrePlay:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public an()Ljava/lang/String;
    .locals 1

    .line 2092
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2093
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->seasonNumLabel:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public ao()Ljava/lang/Integer;
    .locals 1

    .line 1480
    iget-object v0, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/BookmarkImpl;->getInteractiveProgress()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
    .locals 1

    .line 1474
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->interactiveFeatures:Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public aq()I
    .locals 1

    .line 2098
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2099
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->runtime:I

    :goto_0
    return v0
.end method

.method public ar()Ljava/lang/String;
    .locals 1

    .line 2057
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2058
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->synopsis:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public as()I
    .locals 1

    .line 1741
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1742
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    :goto_0
    return v0
.end method

.method public as_()Lo/AR;
    .locals 1

    .line 224
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    return-object v0
.end method

.method public at()Ljava/lang/String;
    .locals 1

    .line 1730
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1731
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public au()Z
    .locals 1

    .line 2104
    invoke-virtual {p0}, Lo/agp;->bw()Lcom/netflix/model/leafs/Video$InQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2106
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    return v0

    .line 2108
    :cond_0
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2109
    iget-boolean v0, v0, Lcom/netflix/model/leafs/SummaryImpl;->inQueue:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public av()I
    .locals 1

    .line 1736
    invoke-virtual {p0}, Lo/agp;->at()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->j(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public aw()I
    .locals 2

    .line 1825
    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/agp;->u:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    if-eqz v0, :cond_0

    .line 1828
    invoke-virtual {v0}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;->getLength()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ax()Ljava/lang/String;
    .locals 2

    .line 1753
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->id:Ljava/lang/String;

    return-object v0

    .line 1756
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1757
    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->id:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public ay()I
    .locals 1

    .line 1747
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1748
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$Detail;->episodeNumber:I

    :goto_0
    return v0
.end method

.method public az()Ljava/lang/String;
    .locals 1

    .line 1785
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1786
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 933
    iget-object v0, p0, Lo/agp;->C:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->horzDispUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "sharing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "bookmark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "seasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "inQueue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "horzDispSmallArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "trailers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "storyImgDispArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "defaultTrailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "isRestricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "verticalPreviewVideoSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "similars"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "trickplayBaseUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "logoBrandedHoriz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "evidence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "horizontalPreviewVideoSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "offlineAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "postPlayImpression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "timeCodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "tags"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "billboardArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "previewArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "postPlayExperience"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "artworkColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "watchNext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "supportedMediaTracks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "prePlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "searchTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "heroImgs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "episodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "advisories"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "inRemindMeQueue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "originalSimilars"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "scenes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "tallPanelArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "topTenBoxart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "hasWatched"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "topNode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "horzDispArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_27
    const-string v0, "removeFromCw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto :goto_1

    :sswitch_28
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_29
    const-string v0, "previewArtV2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_1

    :sswitch_2a
    const-string v0, "tallPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2b
    const-string v0, "trickplayBifUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_2c
    const-string v0, "tvCardArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_2d
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2e
    const-string v0, "volatileBitmaskedDetails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2f
    const-string v0, "interactiveMoments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 365
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

    .line 363
    :pswitch_0
    iget-object p1, p0, Lo/agp;->aa:Lcom/netflix/model/leafs/Video$IsRestricted;

    return-object p1

    .line 361
    :pswitch_1
    iget-object p1, p0, Lo/agp;->Z:Lcom/netflix/model/leafs/SupportedMediaTracksImpl;

    return-object p1

    .line 359
    :pswitch_2
    iget-object p1, p0, Lo/agp;->ac:Lcom/netflix/model/leafs/LogoBrandedHorizontalImpl;

    return-object p1

    .line 357
    :pswitch_3
    iget-object p1, p0, Lo/agp;->L:Lo/OneTimeUseBuilder;

    return-object p1

    .line 355
    :pswitch_4
    iget-object p1, p0, Lo/agp;->E:Lcom/netflix/model/leafs/TopTenBoxartImpl;

    return-object p1

    .line 353
    :pswitch_5
    iget-object p1, p0, Lo/agp;->V:Lo/AN;

    return-object p1

    .line 351
    :pswitch_6
    iget-object p1, p0, Lo/agp;->T:Lo/AN;

    return-object p1

    .line 349
    :pswitch_7
    iget-object p1, p0, Lo/agp;->X:Lcom/netflix/model/leafs/SharingImpl;

    return-object p1

    .line 347
    :pswitch_8
    iget-object p1, p0, Lo/agp;->W:Lcom/netflix/model/leafs/Video$RemoveFromCw;

    return-object p1

    .line 345
    :pswitch_9
    iget-object p1, p0, Lo/agp;->P:Lcom/netflix/model/leafs/PreviewArtImpl;

    return-object p1

    .line 343
    :pswitch_a
    iget-object p1, p0, Lo/agp;->O:Lcom/netflix/model/leafs/PreviewArtImpl;

    return-object p1

    .line 341
    :pswitch_b
    iget-object p1, p0, Lo/agp;->Q:Lcom/netflix/model/leafs/ArtworkColorsImpl;

    return-object p1

    .line 339
    :pswitch_c
    iget-object p1, p0, Lo/agp;->S:Lcom/netflix/model/leafs/Video$Tags;

    return-object p1

    .line 337
    :pswitch_d
    iget-object p1, p0, Lo/agp;->v:Lo/OneTimeUseBuilder;

    return-object p1

    .line 335
    :pswitch_e
    iget-object p1, p0, Lo/agp;->D:Lcom/netflix/falkor/BranchMap;

    return-object p1

    .line 333
    :pswitch_f
    iget-object p1, p0, Lo/agp;->u:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 331
    :pswitch_10
    iget-object p1, p0, Lo/agp;->w:Lcom/netflix/falkor/BranchMap;

    return-object p1

    .line 329
    :pswitch_11
    iget-object p1, p0, Lo/agp;->q:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 327
    :pswitch_12
    iget-object p1, p0, Lo/agp;->s:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 325
    :pswitch_13
    iget-object p1, p0, Lo/agp;->p:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 323
    :pswitch_14
    iget-object p1, p0, Lo/agp;->N:Lo/OneTimeUseBuilder;

    return-object p1

    .line 321
    :pswitch_15
    iget-object p1, p0, Lo/agp;->R:Lcom/netflix/model/leafs/InteractiveMomentsSummary;

    return-object p1

    .line 319
    :pswitch_16
    iget-object p1, p0, Lo/agp;->x:Lcom/netflix/model/leafs/PrePlayExperiencesImpl;

    return-object p1

    .line 317
    :pswitch_17
    iget-object p1, p0, Lo/agp;->K:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    return-object p1

    .line 315
    :pswitch_18
    iget-object p1, p0, Lo/agp;->M:Lcom/netflix/model/leafs/Video$TrickplayBifUrl;

    return-object p1

    .line 313
    :pswitch_19
    iget-object p1, p0, Lo/agp;->t:Lcom/netflix/model/leafs/PostPlayImpression;

    return-object p1

    .line 311
    :pswitch_1a
    iget-object p1, p0, Lo/agp;->I:Lcom/netflix/model/leafs/TallPanelArtImpl;

    return-object p1

    .line 309
    :pswitch_1b
    iget-object p1, p0, Lo/agp;->F:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;

    return-object p1

    .line 307
    :pswitch_1c
    iget-object p1, p0, Lo/agp;->G:Lcom/netflix/model/leafs/Video$BillboardArt;

    return-object p1

    .line 305
    :pswitch_1d
    iget-object p1, p0, Lo/agp;->H:Lcom/netflix/model/leafs/Video$TvCardArt;

    return-object p1

    .line 303
    :pswitch_1e
    iget-object p1, p0, Lo/agp;->B:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    return-object p1

    .line 301
    :pswitch_1f
    iget-object p1, p0, Lo/agp;->A:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    return-object p1

    .line 299
    :pswitch_20
    iget-object p1, p0, Lo/agp;->C:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    return-object p1

    .line 297
    :pswitch_21
    iget-object p1, p0, Lo/agp;->r:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    return-object p1

    .line 295
    :pswitch_22
    iget-object p1, p0, Lo/agp;->l:Lcom/netflix/model/leafs/Video$HeroImages;

    return-object p1

    .line 293
    :pswitch_23
    iget-object p1, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    return-object p1

    .line 291
    :pswitch_24
    iget-object p1, p0, Lo/agp;->j:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    return-object p1

    .line 289
    :pswitch_25
    iget-object p1, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    return-object p1

    .line 287
    :pswitch_26
    iget-object p1, p0, Lo/agp;->m:Lcom/netflix/model/leafs/Video$InRemindMeQueue;

    return-object p1

    .line 285
    :pswitch_27
    iget-object p1, p0, Lo/agp;->U:Lcom/netflix/model/leafs/TimeCodesImpl;

    return-object p1

    .line 283
    :pswitch_28
    iget-object p1, p0, Lo/agp;->o:Lcom/netflix/model/leafs/Video$InQueue;

    return-object p1

    .line 281
    :pswitch_29
    iget-object p1, p0, Lo/agp;->k:Lcom/netflix/model/leafs/Video$HasWatched;

    return-object p1

    .line 279
    :pswitch_2a
    iget-object p1, p0, Lo/agp;->n:Lcom/netflix/model/leafs/Video$RatingInfo;

    return-object p1

    .line 277
    :pswitch_2b
    iget-object p1, p0, Lo/agp;->ab:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

    return-object p1

    .line 275
    :pswitch_2c
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object p1

    return-object p1

    .line 273
    :pswitch_2d
    iget-object p1, p0, Lo/agp;->i:Lcom/netflix/model/leafs/originals/TallPanelAsset;

    return-object p1

    .line 271
    :pswitch_2e
    iget-object p1, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    return-object p1

    .line 269
    :pswitch_2f
    iget-object p1, p0, Lo/agp;->f:Lcom/netflix/model/leafs/Video$Advisories;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x756b9acf -> :sswitch_2f
        -0x70f7b6fa -> :sswitch_2e
        -0x6eb9585a -> :sswitch_2d
        -0x6af67faf -> :sswitch_2c
        -0x6a0d4029 -> :sswitch_2b
        -0x66aa36a9 -> :sswitch_2a
        -0x52e03ea9 -> :sswitch_29
        -0x4f95e7af -> :sswitch_28
        -0x492ab09e -> :sswitch_27
        -0x4899732e -> :sswitch_26
        -0x43f3cf09 -> :sswitch_25
        -0x43bf624c -> :sswitch_24
        -0x40096aa0 -> :sswitch_23
        -0x39edda74 -> :sswitch_22
        -0x37ea4e63 -> :sswitch_21
        -0x36200699 -> :sswitch_20
        -0x341d8b27 -> :sswitch_1f
        -0x2d844791 -> :sswitch_1e
        -0x26a8e0e9 -> :sswitch_1d
        -0x25b9fe28 -> :sswitch_1c
        -0x24e8e7d6 -> :sswitch_1b
        -0x20c3ea70 -> :sswitch_1a
        -0x13085789 -> :sswitch_19
        -0x12de2c02 -> :sswitch_18
        -0x10bd3b9e -> :sswitch_17
        -0xca9c57c -> :sswitch_16
        -0x9dce382 -> :sswitch_15
        -0x27bd685 -> :sswitch_14
        -0x54f15c -> :sswitch_13
        0x363419 -> :sswitch_12
        0xa28559 -> :sswitch_11
        0x26d551d -> :sswitch_10
        0x81f8c26 -> :sswitch_f
        0x1652e7cf -> :sswitch_e
        0x16d39e57 -> :sswitch_d
        0x1b32b941 -> :sswitch_c
        0x1b7c81d7 -> :sswitch_b
        0x1c8fe7e8 -> :sswitch_a
        0x29c6d73d -> :sswitch_9
        0x34180525 -> :sswitch_8
        0x37d7fbb2 -> :sswitch_7
        0x4a9eaef3 -> :sswitch_6
        0x4c0f11a0 -> :sswitch_5
        0x703896cd -> :sswitch_4
        0x72cf8aec -> :sswitch_3
        0x7552f1f0 -> :sswitch_2
        0x7787a536 -> :sswitch_1
        0x7a70f0dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(IJ)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Lcom/netflix/model/leafs/BookmarkImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/BookmarkImpl;-><init>()V

    iput-object v0, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    .line 1076
    :cond_0
    iget-object v0, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/BookmarkImpl;->setBookmarkPosition(I)V

    .line 1077
    iget-object p1, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    invoke-virtual {p1, p2, p3}, Lcom/netflix/model/leafs/BookmarkImpl;->setLastModified(J)V

    return-void
.end method

.method public bA()Lcom/netflix/model/leafs/Bookmark;
    .locals 1

    .line 1069
    iget-object v0, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    return-object v0
.end method

.method public bB()Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;
    .locals 1

    .line 983
    iget-object v0, p0, Lo/agp;->K:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    return-object v0
.end method

.method public bC()Ljava/lang/String;
    .locals 2

    .line 1183
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->showTitle:Ljava/lang/String;

    return-object v0

    .line 1186
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->showTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bD()Z
    .locals 1

    .line 923
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isEpisode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bE()J
    .locals 2

    .line 1383
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1384
    :cond_0
    iget-wide v0, v0, Lcom/netflix/model/leafs/Video$Detail;->contentChangeDate:J

    :goto_0
    return-wide v0
.end method

.method public bF()Lcom/netflix/model/leafs/PrePlayExperiences;
    .locals 1

    .line 1952
    iget-object v0, p0, Lo/agp;->x:Lcom/netflix/model/leafs/PrePlayExperiencesImpl;

    return-object v0
.end method

.method public bH()Z
    .locals 1

    .line 1553
    iget-object v0, p0, Lo/agp;->m:Lcom/netflix/model/leafs/Video$InRemindMeQueue;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$InRemindMeQueue;->inRemindMeQueue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bI()Lcom/netflix/model/leafs/Video$RemoveFromCw;
    .locals 1

    .line 2024
    iget-object v0, p0, Lo/agp;->W:Lcom/netflix/model/leafs/Video$RemoveFromCw;

    return-object v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1576
    iget-object v0, p0, Lo/agp;->G:Lcom/netflix/model/leafs/Video$BillboardArt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$BillboardArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bb()Lo/AK;
    .locals 0

    return-object p0
.end method

.method public bc()Ljava/lang/String;
    .locals 1

    .line 1588
    iget-object v0, p0, Lo/agp;->F:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;->getEvidenceType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bd()Ljava/lang/String;
    .locals 1

    .line 1570
    iget-object v0, p0, Lo/agp;->M:Lcom/netflix/model/leafs/Video$TrickplayBifUrl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TrickplayBifUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public be()Ljava/lang/String;
    .locals 1

    .line 1594
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1595
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    .line 1582
    iget-object v0, p0, Lo/agp;->F:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;->getSimTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bg()Ljava/lang/String;
    .locals 1

    .line 1857
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->titleLogoUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public bh()Ljava/lang/String;
    .locals 1

    .line 1841
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bi()Ljava/lang/String;
    .locals 1

    .line 1849
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->squareUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bj()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lo/agp;->f:Lcom/netflix/model/leafs/Video$Advisories;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Advisories;->getAdvisoryList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bk()Lcom/netflix/model/leafs/VideoInfo$Sharing;
    .locals 1

    .line 972
    iget-object v0, p0, Lo/agp;->X:Lcom/netflix/model/leafs/SharingImpl;

    return-object v0
.end method

.method public bl()Ljava/lang/String;
    .locals 1

    .line 2004
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->creatorHome:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->creatorHome:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation

    .line 1998
    iget-object v0, p0, Lo/agp;->S:Lcom/netflix/model/leafs/Video$Tags;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Tags;->getTags()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bo()Lcom/netflix/model/leafs/originals/ContentWarning;
    .locals 1

    .line 1486
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1487
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Detail;->getContentWarning()Lcom/netflix/model/leafs/originals/ContentWarning;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bp()Lcom/netflix/model/leafs/SupportedMediaTracks;
    .locals 1

    .line 2128
    iget-object v0, p0, Lo/agp;->Z:Lcom/netflix/model/leafs/SupportedMediaTracksImpl;

    return-object v0
.end method

.method public bq()Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;
    .locals 1

    .line 261
    iget-object v0, p0, Lo/agp;->E:Lcom/netflix/model/leafs/TopTenBoxartImpl;

    return-object v0
.end method

.method public br()Lo/Ay;
    .locals 1

    .line 229
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    return-object v0
.end method

.method public bs()Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;
    .locals 1

    .line 255
    iget-object v0, p0, Lo/agp;->I:Lcom/netflix/model/leafs/TallPanelArtImpl;

    return-object v0
.end method

.method public bt()Lo/agg;
    .locals 3

    .line 1959
    iget-object v0, p0, Lo/agp;->N:Lo/OneTimeUseBuilder;

    if-eqz v0, :cond_0

    .line 1960
    invoke-virtual {p0}, Lo/agp;->bm()Lo/TableLayout;

    move-result-object v1

    const-class v2, Lo/agp;

    invoke-virtual {v0, v1, v2}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agg;

    return-object v0

    .line 1961
    :cond_0
    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_1

    .line 1962
    invoke-direct {p0}, Lo/agp;->bG()Lo/agp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1964
    invoke-virtual {v0}, Lo/agp;->bt()Lo/agg;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bu()Lo/agg;
    .locals 1

    .line 1323
    invoke-direct {p0}, Lo/agp;->bG()Lo/agp;

    move-result-object v0

    return-object v0
.end method

.method public bv()Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;
    .locals 1

    .line 239
    iget-object v0, p0, Lo/agp;->ab:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

    return-object v0
.end method

.method protected bw()Lcom/netflix/model/leafs/Video$InQueue;
    .locals 1

    .line 244
    iget-object v0, p0, Lo/agp;->o:Lcom/netflix/model/leafs/Video$InQueue;

    return-object v0
.end method

.method public bx()Ljava/lang/Boolean;
    .locals 1

    .line 1982
    iget-object v0, p0, Lo/agp;->aa:Lcom/netflix/model/leafs/Video$IsRestricted;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$IsRestricted;->isRestricted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synthetic by()Lo/Bd;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lo/agp;->bv()Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

    move-result-object v0

    return-object v0
.end method

.method protected bz()Lcom/netflix/model/leafs/Video$Detail;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    return-object v0
.end method

.method public c()Lcom/netflix/model/leafs/ArtworkColors;
    .locals 1

    .line 2030
    iget-object v0, p0, Lo/agp;->Q:Lcom/netflix/model/leafs/ArtworkColorsImpl;

    return-object v0
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 1

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "sharing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x27

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "bookmark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "seasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "inQueue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "horzDispSmallArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "storyImgDispArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "defaultTrailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "isRestricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2f

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "verticalPreviewVideoSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "bigRowSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "similars"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "trickplayBaseUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "logoBrandedHoriz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2d

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "evidence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "horizontalPreviewVideoSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x29

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "offlineAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "timeCodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "tags"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "billboardArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "previewArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x24

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "postPlayExperience"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "artworkColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "watchNext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2a

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "supportedMediaTracks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2e

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "prePlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "searchTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "heroImgs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "episodes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "advisories"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "inRemindMeQueue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "originalSimilars"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "scenes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "tallPanelArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "topTenBoxart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2b

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "billboardSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "hasWatched"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "topNode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2c

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "horzDispArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_1

    :sswitch_27
    const-string v0, "removeFromCw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x26

    goto :goto_1

    :sswitch_28
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_29
    const-string v0, "previewArtV2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x25

    goto :goto_1

    :sswitch_2a
    const-string v0, "tallPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2b
    const-string v0, "trickplayBifUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_1

    :sswitch_2c
    const-string v0, "tvCardArt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_1

    :sswitch_2d
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2e
    const-string v0, "volatileBitmaskedDetails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2f
    const-string v0, "interactiveMoments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 785
    :pswitch_0
    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-nez p1, :cond_1

    .line 786
    check-cast p2, Lcom/netflix/model/leafs/Video$IsRestricted;

    iput-object p2, p0, Lo/agp;->aa:Lcom/netflix/model/leafs/Video$IsRestricted;

    goto/16 :goto_2

    .line 782
    :pswitch_1
    check-cast p2, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;

    iput-object p2, p0, Lo/agp;->Z:Lcom/netflix/model/leafs/SupportedMediaTracksImpl;

    goto/16 :goto_2

    .line 779
    :pswitch_2
    check-cast p2, Lcom/netflix/model/leafs/LogoBrandedHorizontalImpl;

    iput-object p2, p0, Lo/agp;->ac:Lcom/netflix/model/leafs/LogoBrandedHorizontalImpl;

    goto/16 :goto_2

    .line 774
    :pswitch_3
    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-nez p1, :cond_1

    .line 775
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agp;->L:Lo/OneTimeUseBuilder;

    goto/16 :goto_2

    .line 771
    :pswitch_4
    check-cast p2, Lcom/netflix/model/leafs/TopTenBoxartImpl;

    iput-object p2, p0, Lo/agp;->E:Lcom/netflix/model/leafs/TopTenBoxartImpl;

    goto/16 :goto_2

    .line 766
    :pswitch_5
    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-nez p1, :cond_1

    .line 767
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agp;->N:Lo/OneTimeUseBuilder;

    goto/16 :goto_2

    .line 763
    :pswitch_6
    check-cast p2, Lo/AN;

    iput-object p2, p0, Lo/agp;->V:Lo/AN;

    goto/16 :goto_2

    .line 760
    :pswitch_7
    check-cast p2, Lo/AN;

    iput-object p2, p0, Lo/agp;->T:Lo/AN;

    goto/16 :goto_2

    .line 757
    :pswitch_8
    check-cast p2, Lcom/netflix/model/leafs/SharingImpl;

    iput-object p2, p0, Lo/agp;->X:Lcom/netflix/model/leafs/SharingImpl;

    goto/16 :goto_2

    .line 754
    :pswitch_9
    check-cast p2, Lcom/netflix/model/leafs/Video$RemoveFromCw;

    iput-object p2, p0, Lo/agp;->W:Lcom/netflix/model/leafs/Video$RemoveFromCw;

    goto/16 :goto_2

    .line 751
    :pswitch_a
    check-cast p2, Lcom/netflix/model/leafs/PreviewArtImpl;

    iput-object p2, p0, Lo/agp;->P:Lcom/netflix/model/leafs/PreviewArtImpl;

    goto/16 :goto_2

    .line 748
    :pswitch_b
    check-cast p2, Lcom/netflix/model/leafs/PreviewArtImpl;

    iput-object p2, p0, Lo/agp;->O:Lcom/netflix/model/leafs/PreviewArtImpl;

    goto/16 :goto_2

    .line 745
    :pswitch_c
    check-cast p2, Lcom/netflix/model/leafs/ArtworkColorsImpl;

    iput-object p2, p0, Lo/agp;->Q:Lcom/netflix/model/leafs/ArtworkColorsImpl;

    goto/16 :goto_2

    .line 742
    :pswitch_d
    check-cast p2, Lcom/netflix/model/leafs/Video$Tags;

    iput-object p2, p0, Lo/agp;->S:Lcom/netflix/model/leafs/Video$Tags;

    goto/16 :goto_2

    .line 739
    :pswitch_e
    check-cast p2, Lcom/netflix/model/leafs/InteractiveMomentsSummary;

    iput-object p2, p0, Lo/agp;->R:Lcom/netflix/model/leafs/InteractiveMomentsSummary;

    goto/16 :goto_2

    .line 736
    :pswitch_f
    check-cast p2, Lcom/netflix/model/leafs/PrePlayExperiencesImpl;

    iput-object p2, p0, Lo/agp;->x:Lcom/netflix/model/leafs/PrePlayExperiencesImpl;

    goto/16 :goto_2

    .line 733
    :pswitch_10
    check-cast p2, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    iput-object p2, p0, Lo/agp;->K:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    goto/16 :goto_2

    .line 729
    :pswitch_11
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agp;->v:Lo/OneTimeUseBuilder;

    goto/16 :goto_2

    .line 726
    :pswitch_12
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lo/agp;->D:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_2

    .line 723
    :pswitch_13
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lo/agp;->u:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_2

    .line 720
    :pswitch_14
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lo/agp;->w:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_2

    .line 717
    :pswitch_15
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lo/agp;->s:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_2

    .line 714
    :pswitch_16
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lo/agp;->p:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_2

    .line 711
    :pswitch_17
    check-cast p2, Lcom/netflix/model/leafs/Video$TrickplayBifUrl;

    iput-object p2, p0, Lo/agp;->M:Lcom/netflix/model/leafs/Video$TrickplayBifUrl;

    goto/16 :goto_2

    .line 708
    :pswitch_18
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;

    iput-object p2, p0, Lo/agp;->F:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;

    goto/16 :goto_2

    .line 705
    :pswitch_19
    check-cast p2, Lcom/netflix/model/leafs/Video$BillboardArt;

    iput-object p2, p0, Lo/agp;->G:Lcom/netflix/model/leafs/Video$BillboardArt;

    goto/16 :goto_2

    .line 702
    :pswitch_1a
    check-cast p2, Lcom/netflix/model/leafs/TallPanelArtImpl;

    iput-object p2, p0, Lo/agp;->I:Lcom/netflix/model/leafs/TallPanelArtImpl;

    goto/16 :goto_2

    .line 699
    :pswitch_1b
    check-cast p2, Lcom/netflix/model/leafs/Video$TvCardArt;

    iput-object p2, p0, Lo/agp;->H:Lcom/netflix/model/leafs/Video$TvCardArt;

    goto/16 :goto_2

    .line 696
    :pswitch_1c
    check-cast p2, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    iput-object p2, p0, Lo/agp;->B:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    goto/16 :goto_2

    .line 693
    :pswitch_1d
    check-cast p2, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    iput-object p2, p0, Lo/agp;->A:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    goto :goto_2

    .line 690
    :pswitch_1e
    check-cast p2, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    iput-object p2, p0, Lo/agp;->C:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    goto :goto_2

    .line 687
    :pswitch_1f
    check-cast p2, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    iput-object p2, p0, Lo/agp;->J:Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    goto :goto_2

    .line 684
    :pswitch_20
    check-cast p2, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;

    iput-object p2, p0, Lo/agp;->z:Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;

    goto :goto_2

    .line 681
    :pswitch_21
    check-cast p2, Lcom/netflix/model/leafs/Video$SupplementalVideos;

    iput-object p2, p0, Lo/agp;->r:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    goto :goto_2

    .line 678
    :pswitch_22
    check-cast p2, Lcom/netflix/model/leafs/Video$HeroImages;

    iput-object p2, p0, Lo/agp;->l:Lcom/netflix/model/leafs/Video$HeroImages;

    goto :goto_2

    .line 675
    :pswitch_23
    check-cast p2, Lcom/netflix/model/leafs/Video$SearchTitle;

    iput-object p2, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    goto :goto_2

    .line 672
    :pswitch_24
    check-cast p2, Lcom/netflix/model/leafs/Video$OfflineAvailable;

    iput-object p2, p0, Lo/agp;->j:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    goto :goto_2

    .line 669
    :pswitch_25
    check-cast p2, Lcom/netflix/model/leafs/BookmarkImpl;

    iput-object p2, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    goto :goto_2

    .line 666
    :pswitch_26
    check-cast p2, Lcom/netflix/model/leafs/Video$InRemindMeQueue;

    iput-object p2, p0, Lo/agp;->m:Lcom/netflix/model/leafs/Video$InRemindMeQueue;

    goto :goto_2

    .line 663
    :pswitch_27
    check-cast p2, Lcom/netflix/model/leafs/Video$InQueue;

    iput-object p2, p0, Lo/agp;->o:Lcom/netflix/model/leafs/Video$InQueue;

    goto :goto_2

    .line 660
    :pswitch_28
    check-cast p2, Lcom/netflix/model/leafs/TimeCodesImpl;

    iput-object p2, p0, Lo/agp;->U:Lcom/netflix/model/leafs/TimeCodesImpl;

    goto :goto_2

    .line 657
    :pswitch_29
    check-cast p2, Lcom/netflix/model/leafs/Video$HasWatched;

    iput-object p2, p0, Lo/agp;->k:Lcom/netflix/model/leafs/Video$HasWatched;

    goto :goto_2

    .line 654
    :pswitch_2a
    check-cast p2, Lcom/netflix/model/leafs/Video$RatingInfo;

    iput-object p2, p0, Lo/agp;->n:Lcom/netflix/model/leafs/Video$RatingInfo;

    goto :goto_2

    .line 651
    :pswitch_2b
    check-cast p2, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

    iput-object p2, p0, Lo/agp;->ab:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

    goto :goto_2

    .line 648
    :pswitch_2c
    check-cast p2, Lcom/netflix/model/leafs/Video$Detail;

    iput-object p2, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    goto :goto_2

    .line 645
    :pswitch_2d
    check-cast p2, Lcom/netflix/model/leafs/originals/TallPanelAsset;

    iput-object p2, p0, Lo/agp;->i:Lcom/netflix/model/leafs/originals/TallPanelAsset;

    goto :goto_2

    .line 642
    :pswitch_2e
    check-cast p2, Lcom/netflix/model/leafs/SummaryImpl;

    iput-object p2, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    goto :goto_2

    .line 639
    :pswitch_2f
    check-cast p2, Lcom/netflix/model/leafs/Video$Advisories;

    iput-object p2, p0, Lo/agp;->f:Lcom/netflix/model/leafs/Video$Advisories;

    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x756b9acf -> :sswitch_2f
        -0x70f7b6fa -> :sswitch_2e
        -0x6eb9585a -> :sswitch_2d
        -0x6af67faf -> :sswitch_2c
        -0x6a0d4029 -> :sswitch_2b
        -0x66aa36a9 -> :sswitch_2a
        -0x52e03ea9 -> :sswitch_29
        -0x4f95e7af -> :sswitch_28
        -0x492ab09e -> :sswitch_27
        -0x4899732e -> :sswitch_26
        -0x43f3cf09 -> :sswitch_25
        -0x43bf624c -> :sswitch_24
        -0x4265cc99 -> :sswitch_23
        -0x40096aa0 -> :sswitch_22
        -0x39edda74 -> :sswitch_21
        -0x37ea4e63 -> :sswitch_20
        -0x36200699 -> :sswitch_1f
        -0x341d8b27 -> :sswitch_1e
        -0x2d844791 -> :sswitch_1d
        -0x26a8e0e9 -> :sswitch_1c
        -0x25b9fe28 -> :sswitch_1b
        -0x24e8e7d6 -> :sswitch_1a
        -0x20c3ea70 -> :sswitch_19
        -0x13085789 -> :sswitch_18
        -0x12de2c02 -> :sswitch_17
        -0x10bd3b9e -> :sswitch_16
        -0xca9c57c -> :sswitch_15
        -0x9dce382 -> :sswitch_14
        -0x27bd685 -> :sswitch_13
        -0x54f15c -> :sswitch_12
        0x363419 -> :sswitch_11
        0xa28559 -> :sswitch_10
        0x81f8c26 -> :sswitch_f
        0x1652e7cf -> :sswitch_e
        0x16d39e57 -> :sswitch_d
        0x1b32b941 -> :sswitch_c
        0x1b7c81d7 -> :sswitch_b
        0x1c8fe7e8 -> :sswitch_a
        0x2566b58c -> :sswitch_9
        0x29c6d73d -> :sswitch_8
        0x34180525 -> :sswitch_7
        0x37d7fbb2 -> :sswitch_6
        0x4a9eaef3 -> :sswitch_5
        0x703896cd -> :sswitch_4
        0x72cf8aec -> :sswitch_3
        0x7552f1f0 -> :sswitch_2
        0x7787a536 -> :sswitch_1
        0x7a70f0dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 372
    invoke-virtual {p0, p1}, Lo/agp;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "sharing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "inQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "horzDispSmallArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "trailers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "storyImgDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "defaultTrailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "isRestricted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "verticalPreviewVideoSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "similars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "trickplayBaseUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "logoBrandedHoriz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "evidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "horizontalPreviewVideoSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "offlineAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "postPlayImpression"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "timeCodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "tags"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "billboardArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "previewArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "postPlayExperience"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "artworkColors"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "watchNext"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "supportedMediaTracks"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "prePlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "heroImgs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "advisories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "inRemindMeQueue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "originalSimilars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "scenes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "rating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "tallPanelArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "topTenBoxart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "hasWatched"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "topNode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "horzDispArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_27
    const-string v1, "removeFromCw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x27

    goto :goto_0

    :sswitch_28
    const-string v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_29
    const-string v1, "previewArtV2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x26

    goto :goto_0

    :sswitch_2a
    const-string v1, "tallPanel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2b
    const-string v1, "trickplayBifUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x16

    goto :goto_0

    :sswitch_2c
    const-string v1, "tvCardArt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :sswitch_2d
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2e
    const-string v1, "volatileBitmaskedDetails"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2f
    const-string v1, "interactiveMoments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x20

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 483
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

    .line 481
    :pswitch_0
    new-instance p1, Lcom/netflix/model/leafs/Video$IsRestricted;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$IsRestricted;-><init>()V

    iput-object p1, p0, Lo/agp;->aa:Lcom/netflix/model/leafs/Video$IsRestricted;

    return-object p1

    .line 479
    :pswitch_1
    new-instance p1, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/SupportedMediaTracksImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->Z:Lcom/netflix/model/leafs/SupportedMediaTracksImpl;

    return-object p1

    .line 477
    :pswitch_2
    new-instance p1, Lcom/netflix/model/leafs/LogoBrandedHorizontalImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/LogoBrandedHorizontalImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->ac:Lcom/netflix/model/leafs/LogoBrandedHorizontalImpl;

    return-object p1

    .line 475
    :pswitch_3
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agp;->L:Lo/OneTimeUseBuilder;

    return-object p1

    .line 473
    :pswitch_4
    new-instance p1, Lcom/netflix/model/leafs/TopTenBoxartImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/TopTenBoxartImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->E:Lcom/netflix/model/leafs/TopTenBoxartImpl;

    return-object p1

    .line 471
    :pswitch_5
    new-instance p1, Lcom/netflix/model/leafs/PreviewVideoSummary;

    invoke-direct {p1}, Lcom/netflix/model/leafs/PreviewVideoSummary;-><init>()V

    iput-object p1, p0, Lo/agp;->V:Lo/AN;

    return-object p1

    .line 469
    :pswitch_6
    new-instance p1, Lcom/netflix/model/leafs/PreviewVideoSummary;

    invoke-direct {p1}, Lcom/netflix/model/leafs/PreviewVideoSummary;-><init>()V

    iput-object p1, p0, Lo/agp;->T:Lo/AN;

    return-object p1

    .line 467
    :pswitch_7
    new-instance p1, Lcom/netflix/model/leafs/SharingImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/SharingImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->X:Lcom/netflix/model/leafs/SharingImpl;

    return-object p1

    .line 465
    :pswitch_8
    new-instance p1, Lcom/netflix/model/leafs/Video$RemoveFromCw;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$RemoveFromCw;-><init>()V

    iput-object p1, p0, Lo/agp;->W:Lcom/netflix/model/leafs/Video$RemoveFromCw;

    return-object p1

    .line 463
    :pswitch_9
    new-instance p1, Lcom/netflix/model/leafs/PreviewArtImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/PreviewArtImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->P:Lcom/netflix/model/leafs/PreviewArtImpl;

    return-object p1

    .line 461
    :pswitch_a
    new-instance p1, Lcom/netflix/model/leafs/PreviewArtImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/PreviewArtImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->O:Lcom/netflix/model/leafs/PreviewArtImpl;

    return-object p1

    .line 459
    :pswitch_b
    new-instance p1, Lcom/netflix/model/leafs/ArtworkColorsImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/ArtworkColorsImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->Q:Lcom/netflix/model/leafs/ArtworkColorsImpl;

    return-object p1

    .line 457
    :pswitch_c
    new-instance p1, Lcom/netflix/model/leafs/Video$Tags;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$Tags;-><init>()V

    iput-object p1, p0, Lo/agp;->S:Lcom/netflix/model/leafs/Video$Tags;

    return-object p1

    .line 455
    :pswitch_d
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agp;->N:Lo/OneTimeUseBuilder;

    return-object p1

    .line 453
    :pswitch_e
    new-instance p1, Lcom/netflix/model/leafs/PrePlayExperiencesImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/PrePlayExperiencesImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->x:Lcom/netflix/model/leafs/PrePlayExperiencesImpl;

    return-object p1

    .line 451
    :pswitch_f
    new-instance p1, Lcom/netflix/model/leafs/InteractiveMomentsSummary;

    invoke-direct {p1}, Lcom/netflix/model/leafs/InteractiveMomentsSummary;-><init>()V

    iput-object p1, p0, Lo/agp;->R:Lcom/netflix/model/leafs/InteractiveMomentsSummary;

    return-object p1

    .line 449
    :pswitch_10
    new-instance p1, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;-><init>()V

    iput-object p1, p0, Lo/agp;->K:Lcom/netflix/model/leafs/Video$TrickPlayBaseUrl;

    return-object p1

    .line 446
    :pswitch_11
    new-instance p1, Lcom/netflix/falkor/BranchMap;

    iget-object v0, p0, Lo/agp;->b:Lo/TableLayout;

    invoke-static {v0}, Lo/agB;->m(Lo/TableLayout;)Lo/SearchRecentSuggestions;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agp;->D:Lcom/netflix/falkor/BranchMap;

    return-object p1

    .line 444
    :pswitch_12
    new-instance p1, Lcom/netflix/model/branches/SummarizedList;

    sget-object v0, Lo/agB;->e:Lo/SearchRecentSuggestions;

    sget-object v1, Lo/agB;->k:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0, v1}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lo/SearchRecentSuggestions;Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agp;->u:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 442
    :pswitch_13
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agp;->v:Lo/OneTimeUseBuilder;

    return-object p1

    .line 440
    :pswitch_14
    new-instance p1, Lcom/netflix/falkor/BranchMap;

    sget-object v0, Lo/agB;->e:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agp;->w:Lcom/netflix/falkor/BranchMap;

    return-object p1

    .line 437
    :pswitch_15
    new-instance p1, Lcom/netflix/model/branches/SummarizedList;

    sget-object v0, Lo/agB;->e:Lo/SearchRecentSuggestions;

    sget-object v1, Lo/agB;->k:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0, v1}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lo/SearchRecentSuggestions;Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agp;->q:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 434
    :pswitch_16
    new-instance p1, Lcom/netflix/model/branches/SummarizedList;

    sget-object v0, Lo/agB;->e:Lo/SearchRecentSuggestions;

    sget-object v1, Lo/agB;->k:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0, v1}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lo/SearchRecentSuggestions;Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agp;->s:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 431
    :pswitch_17
    new-instance p1, Lcom/netflix/model/branches/SummarizedList;

    sget-object v0, Lo/agB;->e:Lo/SearchRecentSuggestions;

    sget-object v1, Lo/agB;->k:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0, v1}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lo/SearchRecentSuggestions;Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lo/agp;->p:Lcom/netflix/model/branches/SummarizedList;

    return-object p1

    .line 429
    :pswitch_18
    new-instance p1, Lcom/netflix/model/leafs/PostPlayImpression;

    invoke-direct {p1}, Lcom/netflix/model/leafs/PostPlayImpression;-><init>()V

    iput-object p1, p0, Lo/agp;->t:Lcom/netflix/model/leafs/PostPlayImpression;

    return-object p1

    .line 427
    :pswitch_19
    new-instance p1, Lcom/netflix/model/leafs/Video$TrickplayBifUrl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$TrickplayBifUrl;-><init>()V

    iput-object p1, p0, Lo/agp;->M:Lcom/netflix/model/leafs/Video$TrickplayBifUrl;

    return-object p1

    .line 425
    :pswitch_1a
    new-instance p1, Lcom/netflix/model/leafs/EvidenceImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/EvidenceImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->F:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;

    return-object p1

    .line 423
    :pswitch_1b
    new-instance p1, Lcom/netflix/model/leafs/Video$BillboardArt;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$BillboardArt;-><init>()V

    iput-object p1, p0, Lo/agp;->G:Lcom/netflix/model/leafs/Video$BillboardArt;

    return-object p1

    .line 421
    :pswitch_1c
    new-instance p1, Lcom/netflix/model/leafs/TallPanelArtImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/TallPanelArtImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->I:Lcom/netflix/model/leafs/TallPanelArtImpl;

    return-object p1

    .line 419
    :pswitch_1d
    new-instance p1, Lcom/netflix/model/leafs/Video$TvCardArt;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$TvCardArt;-><init>()V

    iput-object p1, p0, Lo/agp;->H:Lcom/netflix/model/leafs/Video$TvCardArt;

    return-object p1

    .line 417
    :pswitch_1e
    new-instance p1, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;-><init>()V

    iput-object p1, p0, Lo/agp;->B:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    return-object p1

    .line 415
    :pswitch_1f
    new-instance p1, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;-><init>()V

    iput-object p1, p0, Lo/agp;->A:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    return-object p1

    .line 413
    :pswitch_20
    new-instance p1, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;-><init>()V

    iput-object p1, p0, Lo/agp;->C:Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;

    return-object p1

    .line 411
    :pswitch_21
    new-instance p1, Lcom/netflix/model/leafs/Video$SupplementalVideos;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$SupplementalVideos;-><init>()V

    iput-object p1, p0, Lo/agp;->r:Lcom/netflix/model/leafs/Video$SupplementalVideos;

    return-object p1

    .line 409
    :pswitch_22
    new-instance p1, Lcom/netflix/model/leafs/Video$HeroImages;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$HeroImages;-><init>()V

    iput-object p1, p0, Lo/agp;->l:Lcom/netflix/model/leafs/Video$HeroImages;

    return-object p1

    .line 407
    :pswitch_23
    new-instance p1, Lcom/netflix/model/leafs/Video$SearchTitle;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$SearchTitle;-><init>()V

    iput-object p1, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    return-object p1

    .line 405
    :pswitch_24
    new-instance p1, Lcom/netflix/model/leafs/Video$OfflineAvailable;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$OfflineAvailable;-><init>()V

    iput-object p1, p0, Lo/agp;->j:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    return-object p1

    .line 403
    :pswitch_25
    new-instance p1, Lcom/netflix/model/leafs/BookmarkImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/BookmarkImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    return-object p1

    .line 401
    :pswitch_26
    new-instance p1, Lcom/netflix/model/leafs/Video$InRemindMeQueue;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$InRemindMeQueue;-><init>()V

    iput-object p1, p0, Lo/agp;->m:Lcom/netflix/model/leafs/Video$InRemindMeQueue;

    return-object p1

    .line 399
    :pswitch_27
    new-instance p1, Lcom/netflix/model/leafs/TimeCodesImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/TimeCodesImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->U:Lcom/netflix/model/leafs/TimeCodesImpl;

    return-object p1

    .line 397
    :pswitch_28
    new-instance p1, Lcom/netflix/model/leafs/Video$InQueue;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$InQueue;-><init>()V

    iput-object p1, p0, Lo/agp;->o:Lcom/netflix/model/leafs/Video$InQueue;

    return-object p1

    .line 395
    :pswitch_29
    new-instance p1, Lcom/netflix/model/leafs/Video$HasWatched;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$HasWatched;-><init>()V

    iput-object p1, p0, Lo/agp;->k:Lcom/netflix/model/leafs/Video$HasWatched;

    return-object p1

    .line 393
    :pswitch_2a
    new-instance p1, Lcom/netflix/model/leafs/Video$RatingInfo;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$RatingInfo;-><init>()V

    iput-object p1, p0, Lo/agp;->n:Lcom/netflix/model/leafs/Video$RatingInfo;

    return-object p1

    .line 391
    :pswitch_2b
    new-instance p1, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

    invoke-direct {p1}, Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;-><init>()V

    iput-object p1, p0, Lo/agp;->ab:Lcom/netflix/model/leafs/VolatileBitmaskedDetailsFalkorLeaf;

    return-object p1

    .line 389
    :pswitch_2c
    new-instance p1, Lcom/netflix/model/leafs/Video$Detail;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$Detail;-><init>()V

    iput-object p1, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    return-object p1

    .line 387
    :pswitch_2d
    new-instance p1, Lcom/netflix/model/leafs/originals/TallPanelAsset;

    invoke-direct {p1}, Lcom/netflix/model/leafs/originals/TallPanelAsset;-><init>()V

    iput-object p1, p0, Lo/agp;->i:Lcom/netflix/model/leafs/originals/TallPanelAsset;

    return-object p1

    .line 385
    :pswitch_2e
    new-instance p1, Lcom/netflix/model/leafs/SummaryImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/SummaryImpl;-><init>()V

    iput-object p1, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    return-object p1

    .line 383
    :pswitch_2f
    new-instance p1, Lcom/netflix/model/leafs/Video$Advisories;

    invoke-direct {p1}, Lcom/netflix/model/leafs/Video$Advisories;-><init>()V

    iput-object p1, p0, Lo/agp;->f:Lcom/netflix/model/leafs/Video$Advisories;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x756b9acf -> :sswitch_2f
        -0x70f7b6fa -> :sswitch_2e
        -0x6eb9585a -> :sswitch_2d
        -0x6af67faf -> :sswitch_2c
        -0x6a0d4029 -> :sswitch_2b
        -0x66aa36a9 -> :sswitch_2a
        -0x52e03ea9 -> :sswitch_29
        -0x4f95e7af -> :sswitch_28
        -0x492ab09e -> :sswitch_27
        -0x4899732e -> :sswitch_26
        -0x43f3cf09 -> :sswitch_25
        -0x43bf624c -> :sswitch_24
        -0x40096aa0 -> :sswitch_23
        -0x39edda74 -> :sswitch_22
        -0x37ea4e63 -> :sswitch_21
        -0x36200699 -> :sswitch_20
        -0x341d8b27 -> :sswitch_1f
        -0x2d844791 -> :sswitch_1e
        -0x26a8e0e9 -> :sswitch_1d
        -0x25b9fe28 -> :sswitch_1c
        -0x24e8e7d6 -> :sswitch_1b
        -0x20c3ea70 -> :sswitch_1a
        -0x13085789 -> :sswitch_19
        -0x12de2c02 -> :sswitch_18
        -0x10bd3b9e -> :sswitch_17
        -0xca9c57c -> :sswitch_16
        -0x9dce382 -> :sswitch_15
        -0x27bd685 -> :sswitch_14
        -0x54f15c -> :sswitch_13
        0x363419 -> :sswitch_12
        0xa28559 -> :sswitch_11
        0x26d551d -> :sswitch_10
        0x81f8c26 -> :sswitch_f
        0x1652e7cf -> :sswitch_e
        0x16d39e57 -> :sswitch_d
        0x1b32b941 -> :sswitch_c
        0x1b7c81d7 -> :sswitch_b
        0x1c8fe7e8 -> :sswitch_a
        0x29c6d73d -> :sswitch_9
        0x34180525 -> :sswitch_8
        0x37d7fbb2 -> :sswitch_7
        0x4a9eaef3 -> :sswitch_6
        0x4c0f11a0 -> :sswitch_5
        0x703896cd -> :sswitch_4
        0x72cf8aec -> :sswitch_3
        0x7552f1f0 -> :sswitch_2
        0x7787a536 -> :sswitch_1
        0x7a70f0dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    .line 1020
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1023
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 798
    invoke-virtual {p0, p1, v0}, Lo/agp;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1433
    iget-object v0, p0, Lo/agp;->j:Lcom/netflix/model/leafs/Video$OfflineAvailable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$OfflineAvailable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 940
    iget-object v0, p0, Lo/agp;->A:Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1564
    iget-object v0, p0, Lo/agp;->B:Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$StoryImgDisplayArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    .line 905
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .line 901
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 878
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 881
    :cond_0
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->id:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "-1"

    return-object v0
.end method

.method public getMatchPercentage()I
    .locals 1

    .line 1536
    iget-object v0, p0, Lo/agp;->n:Lcom/netflix/model/leafs/Video$RatingInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1537
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$RatingInfo;->matchPercentage:I

    :goto_0
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 890
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 893
    :cond_0
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->title:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 5

    .line 910
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0

    .line 913
    :cond_0
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0

    .line 916
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-19129: isSummaryNull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/agp;->h:Lcom/netflix/model/leafs/SummaryImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; isDetailNull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; isDetailTypeNull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/netflix/model/leafs/Video$Detail;->type:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserThumbRating()I
    .locals 1

    .line 1531
    iget-object v0, p0, Lo/agp;->n:Lcom/netflix/model/leafs/Video$RatingInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/Video$RatingInfo;->userThumbRating:I

    :goto_0
    return v0
.end method

.method public h()Lcom/netflix/model/leafs/originals/BillboardSummary;
    .locals 1

    .line 1928
    iget-object v0, p0, Lo/agp;->z:Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;

    return-object v0
.end method

.method public i()Lcom/netflix/model/leafs/originals/BigRowSummary;
    .locals 1

    .line 1987
    iget-object v0, p0, Lo/agp;->J:Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    return-object v0
.end method

.method public isAvailableForDownload()Z
    .locals 2

    .line 2114
    invoke-virtual {p0}, Lo/agp;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2121
    :cond_0
    invoke-direct {p0}, Lo/agp;->bK()Lcom/netflix/model/leafs/SummaryImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2122
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SummaryImpl;->isAvailableForDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNewForPvr()Z
    .locals 1

    .line 1542
    iget-object v0, p0, Lo/agp;->n:Lcom/netflix/model/leafs/Video$RatingInfo;

    if-eqz v0, :cond_0

    .line 1543
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$RatingInfo;->isNewForPvr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 1407
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1409
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    return v0

    .line 1412
    :cond_0
    iget-object v0, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_1

    .line 1413
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->isOriginal:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPreRelease()Z
    .locals 2

    .line 1455
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1459
    :cond_0
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1461
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    return v0

    .line 1464
    :cond_1
    iget-object v0, p0, Lo/agp;->y:Lcom/netflix/model/leafs/Video$SearchTitle;

    if-eqz v0, :cond_2

    .line 1465
    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$SearchTitle;->isPreRelease:Z

    return v0

    :cond_2
    return v1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1361
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1362
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public k()Lcom/netflix/model/leafs/PreviewArt;
    .locals 1

    .line 2019
    iget-object v0, p0, Lo/agp;->P:Lcom/netflix/model/leafs/PreviewArtImpl;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 1763
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->title:Ljava/lang/String;

    return-object v0

    .line 1766
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1767
    :cond_1
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->title:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 948
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    return-object v0

    .line 952
    :cond_1
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
    .locals 1

    .line 1992
    iget-object v0, p0, Lo/agp;->R:Lcom/netflix/model/leafs/InteractiveMomentsSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/InteractiveMomentsSummary;->getInteractiveMoments()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public o()Lcom/netflix/model/leafs/PreviewArt;
    .locals 1

    .line 2013
    iget-object v0, p0, Lo/agp;->O:Lcom/netflix/model/leafs/PreviewArtImpl;

    return-object v0
.end method

.method public p()I
    .locals 3

    .line 1055
    iget-object v0, p0, Lo/agp;->e:Lcom/netflix/model/leafs/BookmarkImpl;

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0}, Lcom/netflix/model/leafs/BookmarkImpl;->getBookmarkPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1058
    :goto_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/agp;->bu()Lo/agg;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1059
    invoke-direct {p0}, Lo/agp;->bG()Lo/agp;

    move-result-object v1

    const-string v2, "bookmark"

    invoke-virtual {v1, v2}, Lo/agp;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/BookmarkImpl;

    check-cast v1, Lcom/netflix/model/leafs/BookmarkImpl;

    if-eqz v1, :cond_1

    .line 1061
    invoke-virtual {v1}, Lcom/netflix/model/leafs/BookmarkImpl;->getBookmarkPosition()I

    move-result v0

    :cond_1
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 1173
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1176
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->showId:Ljava/lang/String;

    :cond_1
    return-object v1

    .line 1174
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->showId:Ljava/lang/String;

    :goto_1
    return-object v1
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .line 1203
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    return-object v0

    .line 1206
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .line 1213
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->nextEpisodeId:Ljava/lang/String;

    return-object v0

    .line 1216
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->nextEpisodeId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1163
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonId:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 1166
    :cond_1
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-object v1, v0, Lcom/netflix/model/leafs/Video$Detail;->seasonId:Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FalkorVideo [getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getTitle()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agp;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .line 961
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->interestingSmallUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->interestingSmallUrl:Ljava/lang/String;

    return-object v0

    .line 964
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->interestingSmallUrl:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 978
    invoke-static {p0}, Lo/aeH;->a(Lo/agp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1836
    iget-object v0, p0, Lo/agp;->l:Lcom/netflix/model/leafs/Video$HeroImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$HeroImages;->heroImgs:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1637
    :cond_0
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .line 1233
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agp;->g:Lcom/netflix/model/leafs/Video$Detail;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->availabilityDateMsg:Ljava/lang/String;

    return-object v0

    .line 1236
    :cond_0
    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/agp;->bJ()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->availabilityDateMsg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1818
    invoke-virtual {p0}, Lo/agp;->bz()Lcom/netflix/model/leafs/Video$Detail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, v0, Lcom/netflix/model/leafs/Video$Detail;->newBadge:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
