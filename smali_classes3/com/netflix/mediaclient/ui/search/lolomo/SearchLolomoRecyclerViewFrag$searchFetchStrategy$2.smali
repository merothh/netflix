.class public final Lcom/netflix/mediaclient/ui/search/lolomo/SearchLolomoRecyclerViewFrag$searchFetchStrategy$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZL;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/ZL$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ZL;


# direct methods
.method public constructor <init>(Lo/ZL;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/lolomo/SearchLolomoRecyclerViewFrag$searchFetchStrategy$2;->a:Lo/ZL;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lo/ZL$TaskDescription;
    .locals 4

    .line 56
    new-instance v0, Lo/ZL$TaskDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/lolomo/SearchLolomoRecyclerViewFrag$searchFetchStrategy$2;->a:Lo/ZL;

    invoke-virtual {v1}, Lo/ZL;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-direct {v0, v1, v2}, Lo/ZL$TaskDescription;-><init>(Lo/ZL;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/lolomo/SearchLolomoRecyclerViewFrag$searchFetchStrategy$2;->a()Lo/ZL$TaskDescription;

    move-result-object v0

    return-object v0
.end method
