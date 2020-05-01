.class Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;->c:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;->c:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    new-instance v1, Lo/CO$TaskDescription;

    invoke-direct {v1}, Lo/CO$TaskDescription;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;->c:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->d(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;->c:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 98
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;->c:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->n()V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;->c:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
