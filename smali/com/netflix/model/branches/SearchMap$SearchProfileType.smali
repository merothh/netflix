.class Lcom/netflix/model/branches/SearchMap$SearchProfileType;
.super Lcom/netflix/falkor/BranchMap;
.source "SearchMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/BranchMap",
        "<",
        "Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/netflix/model/branches/SearchMap$SearchProfileType$1;

    invoke-direct {v0}, Lcom/netflix/model/branches/SearchMap$SearchProfileType$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    return-void
.end method
