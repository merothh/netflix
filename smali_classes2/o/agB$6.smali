.class final Lo/agB$6;
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
        "Lcom/netflix/model/leafs/LoLoMoSummaryImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/netflix/model/leafs/LoLoMoSummaryImpl;
    .locals 1

    .line 152
    new-instance v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    invoke-direct {v0}, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lo/agB$6;->c()Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    move-result-object v0

    return-object v0
.end method