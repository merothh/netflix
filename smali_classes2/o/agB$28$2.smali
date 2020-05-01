.class Lo/agB$28$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB$28;->d()Lcom/netflix/model/branches/FalkorPreviewSupplementalSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/leafs/SupplementalSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/agB$28;


# direct methods
.method constructor <init>(Lo/agB$28;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lo/agB$28$2;->b:Lo/agB$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/netflix/model/leafs/SupplementalSummary;
    .locals 1

    .line 382
    new-instance v0, Lcom/netflix/model/leafs/SupplementalSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SupplementalSummary;-><init>()V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 379
    invoke-virtual {p0}, Lo/agB$28$2;->c()Lcom/netflix/model/leafs/SupplementalSummary;

    move-result-object v0

    return-object v0
.end method
