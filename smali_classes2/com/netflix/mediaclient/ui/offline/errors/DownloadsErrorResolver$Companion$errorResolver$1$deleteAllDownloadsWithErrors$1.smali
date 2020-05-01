.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$deleteAllDownloadsWithErrors$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$deleteAllDownloadsWithErrors$1;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$deleteAllDownloadsWithErrors$1;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;->e()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 348
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, 0x1388

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 79
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$deleteAllDownloadsWithErrors$1;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;->f()Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$deleteAllDownloadsWithErrors$1;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
