.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

.field final synthetic val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$500(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$500(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;->getDownloadsSize()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;)V

    invoke-static {v3, v4, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createDownloadDeleteAllDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
