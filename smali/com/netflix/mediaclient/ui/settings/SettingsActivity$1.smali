.class Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V

    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "nf_settings"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
