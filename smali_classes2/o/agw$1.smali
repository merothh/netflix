.class Lo/agw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchRecentSuggestions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/agw;->d(Ljava/lang/String;)Lo/agi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SearchRecentSuggestions<",
        "Lcom/netflix/falkor/BranchMap<",
        "Lo/OneTimeUseBuilder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/agw;


# direct methods
.method constructor <init>(Lo/agw;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/agw$1;->e:Lo/agw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/falkor/BranchMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/BranchMap<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lo/agB;->e:Lo/SearchRecentSuggestions;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/agw$1;->a()Lcom/netflix/falkor/BranchMap;

    move-result-object v0

    return-object v0
.end method
