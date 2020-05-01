.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;
.super Lo/Aj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {p0}, Lo/Aj;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lo/Aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method
