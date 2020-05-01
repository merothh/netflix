.class final Lo/agB$1;
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
        "Lcom/netflix/model/branches/UnsummarizedList<",
        "Lo/OneTimeUseBuilder;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/netflix/model/branches/UnsummarizedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/model/branches/UnsummarizedList<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v1, Lo/agB;->e:Lo/SearchRecentSuggestions;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lo/SearchRecentSuggestions;)V

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lo/agB$1;->c()Lcom/netflix/model/branches/UnsummarizedList;

    move-result-object v0

    return-object v0
.end method
