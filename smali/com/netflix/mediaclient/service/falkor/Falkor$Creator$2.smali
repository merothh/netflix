.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$2;
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
        "Lcom/netflix/model/leafs/TrackableListSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/leafs/TrackableListSummary;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/netflix/model/leafs/TrackableListSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/TrackableListSummary;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$2;->call()Lcom/netflix/model/leafs/TrackableListSummary;

    move-result-object v0

    return-object v0
.end method
