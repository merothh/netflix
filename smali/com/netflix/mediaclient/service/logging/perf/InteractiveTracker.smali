.class public Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;
.super Ljava/lang/Object;
.source "InteractiveTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InteractiveTracker"


# instance fields
.field private hasCompleted:Z

.field private interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

.field onscreenListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "-------------- Timer created --------------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->hasCompleted:Z

    return v0
.end method

.method public isNowInteractive()V
    .locals 2

    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "isNowInteractive()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->hasCompleted:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;->onInteractive()V

    :cond_0
    return-void
.end method

.method public onImageLoaded(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V
    .locals 3

    const-string/jumbo v0, "InteractiveTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImageLoaded -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ... type? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->PLACEHOLDER:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, ".... was a PLACEHOLDER"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, ".... wasn\'t in onscreenListeners"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->CACHE:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "onInteractive"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->isNowInteractive()V

    goto :goto_0
.end method

.method public registerListener(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;Landroid/widget/ImageView;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;
    .locals 3

    const-string/jumbo v0, "InteractiveTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;-><init>(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-object p1
.end method

.method public shouldTrack(Landroid/widget/ImageView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
