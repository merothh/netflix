.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$2;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$2;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "prefs_debug_settings_force_pin_check"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 192
    const/4 v0, 0x1

    return v0
.end method
