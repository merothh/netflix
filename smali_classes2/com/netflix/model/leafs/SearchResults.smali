.class public Lcom/netflix/model/leafs/SearchResults;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Bs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/SearchResults$Builder;
    }
.end annotation


# instance fields
.field private queryCompletions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private queryCompletionsListSummary:Lo/Bz;

.field private sectionIndex:I

.field private final sectionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/By;",
            ">;"
        }
    .end annotation
.end field

.field private suggestionsListSummary:Lo/Bz;

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

.field private videoListSummary:Lo/Bz;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/SearchResults$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netflix/model/leafs/SearchResults;->videoItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->videoItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netflix/model/leafs/SearchResults;->videoEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->videoEntities:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/model/leafs/SearchResults;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netflix/model/leafs/SearchResults;->queryCompletions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/netflix/model/leafs/SearchResults;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->queryCompletions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/netflix/model/leafs/SearchResults;Lo/Bz;)Lo/Bz;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->videoListSummary:Lo/Bz;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netflix/model/leafs/SearchResults;Lo/Bz;)Lo/Bz;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->suggestionsListSummary:Lo/Bz;

    return-object p1
.end method

.method static synthetic access$802(Lcom/netflix/model/leafs/SearchResults;Lo/Bz;)Lo/Bz;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netflix/model/leafs/SearchResults;->queryCompletionsListSummary:Lo/Bz;

    return-object p1
.end method

.method static synthetic access$902(Lcom/netflix/model/leafs/SearchResults;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/netflix/model/leafs/SearchResults;->sectionIndex:I

    return p1
.end method

.method private hasQueryCompletions()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->queryCompletions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasSuggestions()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasVideos()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoEntities:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getNumQueryCompletions()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->queryCompletions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumResults()I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/List;

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getNumResultsSuggestions()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumResultsVideoEntities()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoEntities:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumResultsVideos()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumSections()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueryCompletionsListTrackable()Lo/Bz;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->queryCompletionsListSummary:Lo/Bz;

    return-object v0
.end method

.method public getResultsQueryCompletions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->queryCompletions:Ljava/util/List;

    return-object v0
.end method

.method public getResultsSuggestions(I)Lo/By;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 120
    instance-of v0, p1, Lo/By;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lo/By;

    :cond_0
    return-object v1
.end method

.method public getResultsVideoEntities(I)Lcom/netflix/model/leafs/SearchCollectionEntity;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoEntities:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

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

    .line 139
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoEntities:Ljava/util/List;

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

    .line 91
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoItems:Ljava/util/List;

    return-object v0
.end method

.method public getResultsVideos(I)Lo/Bx;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 99
    instance-of v0, p1, Lo/Bx;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lo/Bx;

    :cond_0
    return-object v1
.end method

.method public getSectionIndex()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/netflix/model/leafs/SearchResults;->sectionIndex:I

    return v0
.end method

.method public getSuggestionsListTrackable()Lo/Bz;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->suggestionsListSummary:Lo/Bz;

    return-object v0
.end method

.method public getVideosListTrackable()Lo/Bz;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/netflix/model/leafs/SearchResults;->videoListSummary:Lo/Bz;

    return-object v0
.end method

.method public hasResults()Z
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;->hasVideos()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;->hasSuggestions()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchResults;->hasQueryCompletions()Z

    move-result v0

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
