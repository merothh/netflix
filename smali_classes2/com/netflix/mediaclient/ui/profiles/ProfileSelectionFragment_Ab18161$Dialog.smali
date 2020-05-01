.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    .line 746
    new-instance v0, Lo/CO$ActionBar;

    invoke-direct {v0}, Lo/CO$ActionBar;-><init>()V

    check-cast v0, Lo/CO;

    .line 747
    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Dialog;)V

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    .line 745
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object p1

    .line 750
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->e()V

    return-void
.end method
