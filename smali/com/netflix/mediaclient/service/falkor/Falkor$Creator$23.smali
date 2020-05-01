.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$23;
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
        "Lcom/netflix/model/branches/FalkorBillboardData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/branches/FalkorBillboardData;
    .locals 2

    new-instance v0, Lcom/netflix/model/branches/FalkorBillboardData;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->BillboardSummary:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/FalkorBillboardData;-><init>(Lcom/netflix/falkor/Func;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$23;->call()Lcom/netflix/model/branches/FalkorBillboardData;

    move-result-object v0

    return-object v0
.end method
