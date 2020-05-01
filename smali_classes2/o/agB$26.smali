.class final Lo/agB$26;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->d()Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/branches/FalkorBigRowData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/netflix/model/branches/FalkorBigRowData;
    .locals 2

    .line 365
    new-instance v0, Lcom/netflix/model/branches/FalkorBigRowData;

    new-instance v1, Lo/agB$26$3;

    invoke-direct {v1, p0}, Lo/agB$26$3;-><init>(Lo/agB$26;)V

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/FalkorBigRowData;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lo/agB$26;->b()Lcom/netflix/model/branches/FalkorBigRowData;

    move-result-object v0

    return-object v0
.end method
