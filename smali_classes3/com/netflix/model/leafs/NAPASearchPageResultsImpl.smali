.class public final Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Br;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/NAPASearchPageResultsImpl$Builder;
    }
.end annotation


# instance fields
.field private requestId:J

.field private searchSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Bt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->searchSections:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getRequestId$p(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->requestId:J

    return-wide v0
.end method

.method public static final synthetic access$getSearchSections$p(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;)Ljava/util/List;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->searchSections:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setRequestId$p(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->requestId:J

    return-void
.end method

.method public static final synthetic access$setSearchSections$p(Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;Ljava/util/List;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->searchSections:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRequestId()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->requestId:J

    return-wide v0
.end method

.method public getSearchSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Bt;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/netflix/model/leafs/NAPASearchPageResultsImpl;->searchSections:Ljava/util/List;

    return-object v0
.end method
