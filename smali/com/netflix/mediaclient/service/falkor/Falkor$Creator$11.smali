.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$11;
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
        "Lcom/netflix/model/leafs/SearchTrackableListSummary;",
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
.method public call()Lcom/netflix/model/leafs/SearchTrackableListSummary;
    .locals 1

    new-instance v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchTrackableListSummary;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$11;->call()Lcom/netflix/model/leafs/SearchTrackableListSummary;

    move-result-object v0

    return-object v0
.end method
