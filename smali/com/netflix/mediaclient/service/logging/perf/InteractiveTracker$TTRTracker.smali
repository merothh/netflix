.class public Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;
.super Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;
.source "InteractiveTracker.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;-><init>(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V

    return-void
.end method


# virtual methods
.method public shouldTrack(Landroid/widget/ImageView;Lcom/android/volley/Request$Priority;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->shouldTrack(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
