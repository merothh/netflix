.class public final Lcom/netflix/model/leafs/NAPASearchPageResultImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Bt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Builder;,
        Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Companion;

.field private static final MAX_RESULTS:I = 0x14


# instance fields
.field private searchSectionSummary:Lcom/netflix/model/leafs/SearchSectionSummary;

.field private sectionIndex:I

.field private videoEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private videoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->Companion:Lcom/netflix/model/leafs/NAPASearchPageResultImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoItems:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoEntities:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSearchSectionSummary$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;)Lcom/netflix/model/leafs/SearchSectionSummary;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->searchSectionSummary:Lcom/netflix/model/leafs/SearchSectionSummary;

    return-object p0
.end method

.method public static final synthetic access$getSectionIndex$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;)I
    .locals 0

    .line 8
    iget p0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->sectionIndex:I

    return p0
.end method

.method public static final synthetic access$getVideoEntities$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;)Ljava/util/List;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoEntities:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getVideoItems$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;)Ljava/util/List;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setSearchSectionSummary$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;Lcom/netflix/model/leafs/SearchSectionSummary;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->searchSectionSummary:Lcom/netflix/model/leafs/SearchSectionSummary;

    return-void
.end method

.method public static final synthetic access$setSectionIndex$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->sectionIndex:I

    return-void
.end method

.method public static final synthetic access$setVideoEntities$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;Ljava/util/List;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoEntities:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setVideoItems$p(Lcom/netflix/model/leafs/NAPASearchPageResultImpl;Ljava/util/List;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResultsVideoEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoEntities:Ljava/util/List;

    return-object v0
.end method

.method public getResultsVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->videoItems:Ljava/util/List;

    return-object v0
.end method

.method public getSearchSectionSummary()Lcom/netflix/model/leafs/SearchSectionSummary;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->searchSectionSummary:Lcom/netflix/model/leafs/SearchSectionSummary;

    return-object v0
.end method

.method public getSectionIndex()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultImpl;->sectionIndex:I

    return v0
.end method
