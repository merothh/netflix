.class public final Lo/d$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/YearPickerView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/d;-><init>(Lo/g;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/d;


# direct methods
.method constructor <init>(Lo/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/d$Application;->d:Lo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d(Lo/d$Application;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lo/d$Application;->e(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V

    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;",
            "Ljava/util/Collection<",
            "Lo/Ap;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/d$Application;->d:Lo/d;

    invoke-static {v0}, Lo/d;->c(Lo/d;)Lo/g;

    move-result-object v0

    invoke-virtual {v0}, Lo/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->c:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->a:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    .line 93
    :goto_0
    iget-object v1, p0, Lo/d$Application;->d:Lo/d;

    invoke-static {v1}, Lo/d;->c(Lo/d;)Lo/g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lo/g;->d(Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;Ljava/lang/String;Ljava/util/Collection;)V

    .line 94
    iget-object p1, p0, Lo/d$Application;->d:Lo/d;

    invoke-static {p1}, Lo/d;->c(Lo/d;)Lo/g;

    move-result-object p1

    invoke-virtual {p1}, Lo/g;->h()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 1

    const-string v0, "interactiveImageTracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/d$Application;->d:Lo/d;

    invoke-static {v0}, Lo/d;->c(Lo/d;)Lo/g;

    move-result-object v0

    invoke-virtual {v0}, Lo/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lo/d$Application$TaskDescription;

    invoke-direct {v0, p0}, Lo/d$Application$TaskDescription;-><init>(Lo/d$Application;)V

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lo/d$Application;->d:Lo/d;

    invoke-static {v0}, Lo/d;->c(Lo/d;)Lo/g;

    move-result-object v0

    invoke-virtual {v0}, Lo/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Lo/ViewFlipper;

    iget-object v1, p0, Lo/d$Application;->d:Lo/d;

    invoke-static {v1}, Lo/d;->c(Lo/d;)Lo/g;

    move-result-object v1

    invoke-virtual {v1}, Lo/g;->d()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/ViewFlipper;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 71
    iget-object p1, p0, Lo/d$Application;->d:Lo/d;

    invoke-virtual {p1, v0}, Lo/d;->e(Lo/ViewFlipper;)V

    .line 72
    new-instance p1, Lo/d$Application$Application;

    invoke-direct {p1, p0}, Lo/d$Application$Application;-><init>(Lo/d$Application;)V

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    invoke-virtual {v0, p1}, Lo/ViewFlipper;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    :cond_0
    return-void
.end method
