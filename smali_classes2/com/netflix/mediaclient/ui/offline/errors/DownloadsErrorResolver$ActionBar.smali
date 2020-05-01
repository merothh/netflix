.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V
    .locals 1

    const-string v0, "playableActionTracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    return-void
.end method

.method private final c(Lo/Bi;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "it.playableId"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 309
    check-cast p1, Ljava/lang/Iterable;

    .line 348
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lo/Bi;I)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->c(Lo/Bi;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e()V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 300
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Lo/Bi;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->c(Lo/Bi;)V

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->c(Lo/Bi;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;->c(Lo/Bi;)V

    return-void
.end method
