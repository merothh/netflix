.class public Lcom/netflix/model/branches/UnsummarizedList;
.super Lcom/netflix/falkor/BranchMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/agi;",
        ">",
        "Lcom/netflix/falkor/BranchMap<",
        "TT;>;"
    }
.end annotation


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

    .line 11
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    return-void
.end method
