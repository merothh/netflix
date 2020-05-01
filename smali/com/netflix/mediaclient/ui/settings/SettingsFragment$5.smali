.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9SoftwareDecoder()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "force swdecoder selected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->setUseSoftwareDecoder(Z)V

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9HardwareDecoder()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "No Need To Force Software Decoder"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v3

    :cond_1
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "force swdecoder unselected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->setUseSoftwareDecoder(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "Software Decoder Not Available"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDebugToast(Ljava/lang/String;)V

    goto :goto_1
.end method
