.class public Lcom/netflix/model/branches/FalkorBigRowData;
.super Lcom/netflix/falkor/BranchMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/BranchMap<",
        "Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;


# direct methods
.method public constructor <init>(Lo/SearchRecentSuggestions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SearchRecentSuggestions<",
            "Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2566b58c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bigRowSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-nez v0, :cond_2

    .line 33
    iget-object p1, p0, Lcom/netflix/model/branches/FalkorBigRowData;->d:Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    return-object p1

    .line 35
    :cond_2
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
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2566b58c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bigRowSummary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    check-cast p2, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorBigRowData;->d:Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 42
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorBigRowData;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2566b58c

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "bigRowSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 53
    new-instance p1, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/branches/FalkorBigRowData;->d:Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;

    return-object p1

    .line 55
    :cond_3
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
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorBigRowData;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method
