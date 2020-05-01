.class public Lcom/netflix/model/branches/SummarizedList;
.super Lcom/netflix/falkor/BranchMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/agi;",
        "L::Lo/agi;",
        ">",
        "Lcom/netflix/falkor/BranchMap<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lo/agi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final d:Lo/SearchRecentSuggestions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SearchRecentSuggestions<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SearchRecentSuggestions;Lo/SearchRecentSuggestions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SearchRecentSuggestions<",
            "TT;>;",
            "Lo/SearchRecentSuggestions<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    .line 20
    iput-object p2, p0, Lcom/netflix/model/branches/SummarizedList;->d:Lo/SearchRecentSuggestions;

    return-void
.end method


# virtual methods
.method public b()Lo/agi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->a:Lo/agi;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/agi;
    .locals 1

    const-string v0, "summary"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object p1, p0, Lcom/netflix/model/branches/SummarizedList;->a:Lo/agi;

    return-object p1

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->b(Ljava/lang/String;)Lo/agi;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 1

    const-string v0, "summary"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iput-object p2, p0, Lcom/netflix/model/branches/SummarizedList;->a:Lo/agi;

    goto :goto_0

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/falkor/BranchMap;->c(Ljava/lang/String;Lo/agi;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 1

    .line 66
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/SummarizedList;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "summary"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/netflix/model/branches/SummarizedList;->d:Lo/SearchRecentSuggestions;

    invoke-interface {p1}, Lo/SearchRecentSuggestions;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/agi;

    iput-object p1, p0, Lcom/netflix/model/branches/SummarizedList;->a:Lo/agi;

    .line 70
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->a:Lo/agi;

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->d(Ljava/lang/String;)Lo/agi;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method
