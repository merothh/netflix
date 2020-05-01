.class final Lo/agB$11;
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
        "Lcom/netflix/model/leafs/SearchTrackableListSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/netflix/model/leafs/SearchTrackableListSummary;
    .locals 1

    .line 218
    new-instance v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchTrackableListSummary;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lo/agB$11;->b()Lcom/netflix/model/leafs/SearchTrackableListSummary;

    move-result-object v0

    return-object v0
.end method
