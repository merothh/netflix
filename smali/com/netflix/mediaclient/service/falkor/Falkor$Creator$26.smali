.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$26;
.super Ljava/lang/Object;
.source "Falkor.java"

# interfaces
.implements Lcom/netflix/falkor/Func;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func",
        "<",
        "Lcom/netflix/model/branches/SummarizedList",
        "<",
        "Lcom/netflix/falkor/Ref;",
        "Lcom/netflix/model/leafs/DiscoverySummary;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$proxy:Lcom/netflix/falkor/ModelProxy;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$26;->val$proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/branches/SummarizedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/DiscoverySummary;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$26;->val$proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorDiscoverySummary(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$26;->call()Lcom/netflix/model/branches/SummarizedList;

    move-result-object v0

    return-object v0
.end method
