.class public Lcom/netflix/model/branches/FalkorList;
.super Lcom/netflix/falkor/BranchMap;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/agi;",
        ">",
        "Lcom/netflix/falkor/BranchMap<",
        "TT;>;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;"
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList<",
            "Lcom/netflix/model/branches/FalkorBillboardData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

.field private c:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList<",
            "Lcom/netflix/model/branches/UnsummarizedList<",
            "Lo/OneTimeUseBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList<",
            "Lcom/netflix/model/branches/FalkorBigRowData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList<",
            "Lcom/netflix/model/branches/FalkorPreviewSupplementalSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SearchRecentSuggestions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SearchRecentSuggestions<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agi;
    .locals 6

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "discoveryEvidence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "thirtySecondPreviewData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "videoEvidence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "billboardData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "bigRowData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 61
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->b(Ljava/lang/String;)Lo/agi;

    move-result-object p1

    return-object p1

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/netflix/model/branches/FalkorList;->i:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/netflix/model/branches/FalkorList;->d:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 54
    :cond_3
    iget-object p1, p0, Lcom/netflix/model/branches/FalkorList;->a:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 53
    :cond_4
    iget-object p1, p0, Lcom/netflix/model/branches/FalkorList;->e:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 52
    :cond_5
    iget-object p1, p0, Lcom/netflix/model/branches/FalkorList;->c:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 51
    :cond_6
    iget-object p1, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_5
        -0x2a61e47c -> :sswitch_4
        -0xa481c77 -> :sswitch_3
        0x6eb6bf2 -> :sswitch_2
        0x1884ccbc -> :sswitch_1
        0x6a2bd827 -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 6

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "discoveryEvidence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "thirtySecondPreviewData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "videoEvidence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "billboardData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "bigRowData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 132
    invoke-super {p0, p1, p2}, Lcom/netflix/falkor/BranchMap;->c(Ljava/lang/String;Lo/agi;)V

    goto :goto_2

    .line 127
    :cond_1
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorList;->i:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_2

    .line 126
    :cond_2
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorList;->d:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_2

    .line 125
    :cond_3
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorList;->c:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_2

    .line 124
    :cond_4
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorList;->a:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_2

    .line 123
    :cond_5
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorList;->e:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_2

    .line 122
    :cond_6
    check-cast p2, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_5
        -0x2a61e47c -> :sswitch_4
        -0xa481c77 -> :sswitch_3
        0x6eb6bf2 -> :sswitch_2
        0x1884ccbc -> :sswitch_1
        0x6a2bd827 -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 7

    .line 68
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorList;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "discoveryEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "thirtySecondPreviewData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "videoEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "billboardData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "bigRowData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 88
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->d(Ljava/lang/String;)Lo/agi;

    move-result-object p1

    return-object p1

    .line 83
    :cond_2
    new-instance p1, Lcom/netflix/model/branches/UnsummarizedList;

    invoke-static {}, Lo/agB;->e()Lo/SearchRecentSuggestions;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lcom/netflix/model/branches/FalkorList;->i:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 82
    :cond_3
    new-instance p1, Lcom/netflix/model/branches/UnsummarizedList;

    invoke-static {}, Lo/agB;->d()Lo/SearchRecentSuggestions;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lcom/netflix/model/branches/FalkorList;->d:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 81
    :cond_4
    new-instance p1, Lcom/netflix/model/branches/UnsummarizedList;

    invoke-static {}, Lo/agB;->c()Lo/SearchRecentSuggestions;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lcom/netflix/model/branches/FalkorList;->a:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 80
    :cond_5
    new-instance p1, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v0, Lo/agB;->e:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lcom/netflix/model/branches/FalkorList;->e:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 79
    :cond_6
    new-instance p1, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v0, Lo/agB;->o:Lo/SearchRecentSuggestions;

    invoke-direct {p1, v0}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lo/SearchRecentSuggestions;)V

    iput-object p1, p0, Lcom/netflix/model/branches/FalkorList;->c:Lcom/netflix/model/branches/UnsummarizedList;

    return-object p1

    .line 78
    :cond_7
    new-instance p1, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_5
        -0x2a61e47c -> :sswitch_4
        -0xa481c77 -> :sswitch_3
        0x6eb6bf2 -> :sswitch_2
        0x1884ccbc -> :sswitch_1
        0x6a2bd827 -> :sswitch_0
    .end sparse-switch
.end method

.method public describeContents()I
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorList;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getImpressionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getListContext()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getListPos()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumVideos()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getNumVideos()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getRequestId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/16 v0, -0xd2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getTrackId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->isExpired()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isRichUITreatment()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->isRichUITreatment()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVolatile()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->isVolatile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setListPos(I)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorList;->b:Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->setListPos(I)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 185
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unsupported method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
