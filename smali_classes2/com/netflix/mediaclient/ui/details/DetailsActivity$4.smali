.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/DetailsActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$4;->b:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$4;->b:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    new-instance v0, Lo/CO$TaskDescription;

    invoke-direct {v0}, Lo/CO$TaskDescription;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$4;->b:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->k()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->e()V

    return-void
.end method
