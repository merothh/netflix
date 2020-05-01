.class final Lo/agB$4;
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
        "Lcom/netflix/model/leafs/TrackableListSummaryImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/model/leafs/TrackableListSummaryImpl;
    .locals 1

    .line 131
    new-instance v0, Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lo/agB$4;->d()Lcom/netflix/model/leafs/TrackableListSummaryImpl;

    move-result-object v0

    return-object v0
.end method
