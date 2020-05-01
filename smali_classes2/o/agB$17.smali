.class final Lo/agB$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agB;->g(Lo/TableLayout;)Lo/SearchRecentSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/model/branches/FalkorList<",
        "Lo/OneTimeUseBuilder;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/model/branches/FalkorList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/model/branches/FalkorList<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/netflix/model/branches/FalkorList;

    sget-object v1, Lo/agB;->e:Lo/SearchRecentSuggestions;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/FalkorList;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 284
    invoke-virtual {p0}, Lo/agB$17;->d()Lcom/netflix/model/branches/FalkorList;

    move-result-object v0

    return-object v0
.end method
