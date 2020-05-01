.class final Lo/agB$2;
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
        "Lcom/netflix/model/branches/SummarizedList<",
        "Lo/agu;",
        "Lcom/netflix/model/leafs/SearchSectionSummaryImpl;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/netflix/model/branches/SummarizedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/agu;",
            "Lcom/netflix/model/leafs/SearchSectionSummaryImpl;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lo/agB;->u:Lo/SearchRecentSuggestions;

    sget-object v2, Lo/agB;->s:Lo/SearchRecentSuggestions;

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lo/SearchRecentSuggestions;Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lo/agB$2;->b()Lcom/netflix/model/branches/SummarizedList;

    move-result-object v0

    return-object v0
.end method
