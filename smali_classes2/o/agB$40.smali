.class final Lo/agB$40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/falkor/BranchMap<",
        "Lcom/netflix/falkor/BranchMap<",
        "Lcom/netflix/falkor/BranchMap<",
        "Lcom/netflix/model/branches/SummarizedList<",
        "Lo/agu;",
        "Lcom/netflix/model/leafs/SearchSectionSummaryImpl;",
        ">;>;>;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/netflix/falkor/BranchMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/agu;",
            "Lcom/netflix/model/leafs/SearchSectionSummaryImpl;",
            ">;>;>;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lo/agB;->f:Lo/SearchRecentSuggestions;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lo/agB$40;->c()Lcom/netflix/falkor/BranchMap;

    move-result-object v0

    return-object v0
.end method