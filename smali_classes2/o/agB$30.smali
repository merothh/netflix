.class final Lo/agB$30;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->c()Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/branches/FalkorBillboardData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/model/branches/FalkorBillboardData;
    .locals 2

    .line 356
    new-instance v0, Lcom/netflix/model/branches/FalkorBillboardData;

    sget-object v1, Lo/agB;->v:Lo/SearchRecentSuggestions;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/FalkorBillboardData;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lo/agB$30;->a()Lcom/netflix/model/branches/FalkorBillboardData;

    move-result-object v0

    return-object v0
.end method
