.class final Lo/agB$32;
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
        "Lcom/netflix/model/leafs/ListOfGenreSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/model/leafs/ListOfGenreSummary;
    .locals 1

    .line 78
    new-instance v0, Lcom/netflix/model/leafs/ListOfGenreSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/ListOfGenreSummary;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lo/agB$32;->d()Lcom/netflix/model/leafs/ListOfGenreSummary;

    move-result-object v0

    return-object v0
.end method
