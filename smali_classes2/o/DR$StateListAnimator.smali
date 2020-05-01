.class final Lo/DR$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DR;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DR;


# direct methods
.method constructor <init>(Lo/DR;)V
    .locals 0

    iput-object p1, p0, Lo/DR$StateListAnimator;->a:Lo/DR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 3

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lo/DR$StateListAnimator;->a:Lo/DR;

    invoke-virtual {v0}, Lo/DR;->d()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 83
    new-instance v1, Lo/CO$TaskDescription;

    invoke-direct {v1}, Lo/CO$TaskDescription;-><init>()V

    check-cast v1, Lo/CO;

    .line 84
    iget-object v2, p0, Lo/DR$StateListAnimator;->a:Lo/DR;

    invoke-static {v2}, Lo/DR;->b(Lo/DR;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    .line 87
    invoke-virtual {p1}, Lo/Am;->g()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    sget-object v0, Lo/CO$TaskDescription;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->e()V

    :cond_0
    return-void
.end method
