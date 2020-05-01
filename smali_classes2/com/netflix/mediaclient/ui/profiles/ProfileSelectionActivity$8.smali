.class public Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;->e(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic e(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V
    .locals 0

    .line 959
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->c(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    .line 956
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    new-instance v0, Lo/CO$ActionBar;

    invoke-direct {v0}, Lo/CO$ActionBar;-><init>()V

    new-instance v1, Lo/Zb;

    invoke-direct {v1, p0}, Lo/Zb;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;)V

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object p1

    .line 961
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->e()V

    return-void
.end method
