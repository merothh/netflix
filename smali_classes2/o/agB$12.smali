.class final Lo/agB$12;
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
        "Lcom/netflix/model/leafs/ListOfGenreSummary;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/falkor/BranchMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/model/leafs/ListOfGenreSummary;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lo/agB;->a:Lo/SearchRecentSuggestions;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lo/agB$12;->d()Lcom/netflix/falkor/BranchMap;

    move-result-object v0

    return-object v0
.end method
