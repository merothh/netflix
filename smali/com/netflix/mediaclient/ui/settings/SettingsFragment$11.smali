.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 725
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Notification enabled clicked"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 727
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 728
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Register for notifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 742
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 734
    :cond_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Unregister from notifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 740
    :cond_1
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "We did not received notification checkbox preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
