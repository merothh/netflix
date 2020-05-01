.class final Lo/agB$28;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->e()Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/branches/FalkorPreviewSupplementalSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/model/branches/FalkorPreviewSupplementalSummary;
    .locals 2

    .line 379
    new-instance v0, Lcom/netflix/model/branches/FalkorPreviewSupplementalSummary;

    new-instance v1, Lo/agB$28$2;

    invoke-direct {v1, p0}, Lo/agB$28$2;-><init>(Lo/agB$28;)V

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/FalkorPreviewSupplementalSummary;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lo/agB$28;->d()Lcom/netflix/model/branches/FalkorPreviewSupplementalSummary;

    move-result-object v0

    return-object v0
.end method
