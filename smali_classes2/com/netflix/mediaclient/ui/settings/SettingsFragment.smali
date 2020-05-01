.class public Lcom/netflix/mediaclient/ui/settings/SettingsFragment;
.super Lo/RuntimeException;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;,
        Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;
    }
.end annotation


# instance fields
.field private b:Landroid/app/Dialog;

.field private final c:Lo/Aj;

.field private d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lo/RuntimeException;-><init>()V

    .line 146
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c:Lo/Aj;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 896
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object p2

    .line 897
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 898
    invoke-static {p2, v0}, Lo/QU;->d(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 900
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private a(Lo/Am;)V
    .locals 3

    const-string v0, "pref.downloads.remove_all"

    .line 591
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 592
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 597
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v1

    invoke-interface {v1}, Lo/Rq;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const-string p1, "pref.downloads"

    .line 599
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    return-void

    .line 602
    :cond_1
    new-instance v1, Lo/abq;

    invoke-direct {v1, p0, p1}, Lo/abq;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/preference/Preference;)Z
    .locals 0

    .line 1173
    new-instance p1, Lo/Ik;

    invoke-direct {p1, p0}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1}, Lo/Ik;->d()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->l(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lo/Aj;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c:Lo/Aj;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Landroid/content/Context;)I

    move-result p1

    .line 999
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->d(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "channelIdSource"

    .line 1201
    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1202
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1203
    invoke-static {p1}, Lo/cE;->e(Landroid/content/Context;)V

    .line 1204
    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1206
    :cond_0
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, " ("

    .line 1207
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/Am;)V
    .locals 1

    .line 698
    invoke-virtual {p2}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p2}, Lo/Am;->q()Lo/nS;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/nS;->a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)V

    :cond_0
    return-void
.end method

.method private b(Lo/Am;)V
    .locals 2

    .line 491
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref.downloads.wifi_only"

    .line 495
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;

    if-nez v0, :cond_1

    return-void

    .line 500
    :cond_1
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    invoke-interface {v1}, Lo/nS;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->e(Z)V

    .line 502
    new-instance v1, Lo/abs;

    invoke-direct {v1, p0, p1}, Lo/abs;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->a(Landroidx/preference/Preference$Application;)V

    return-void
.end method

.method public static synthetic b(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->m(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic b(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "SettingsFragment"

    const-string v1, "Notification enabled clicked"

    .line 781
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    instance-of p1, p1, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;

    if-eqz p1, :cond_2

    .line 784
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 785
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "source"

    const-string v1, "com.netflix.mediaclient.intent.category.PUSH"

    if-eqz p1, :cond_0

    const-string v2, "Register for notifications"

    .line 791
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    sget-object v2, Lcom/netflix/cl/model/AppView;->settings:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v2}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    invoke-virtual {p2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string v2, "Unregister from notifications"

    .line 797
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    sget-object v1, Lcom/netflix/cl/model/AppView;->settings:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    invoke-virtual {p2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 804
    :goto_0
    sget-object p2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->allowNotificationsSetting:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    .line 806
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    .line 804
    invoke-virtual {p2, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    goto :goto_1

    .line 787
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newValue -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in the onPreferenceChange is expected to be a Boolean object. But it is not!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const-string p1, "We did not received notification checkbox preference!"

    .line 808
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->f(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Lo/nS;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private static synthetic b(Lo/nP;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 540
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lo/nP;->e(Z)V

    .line 541
    sget-object p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v0, Lcom/netflix/cl/model/AppView;->smartDownloadsSetting:Lcom/netflix/cl/model/AppView;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    .line 542
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 541
    invoke-virtual {p0, p1, v0, p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 1

    .line 1003
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eA:I

    return p0

    .line 1007
    :cond_0
    invoke-static {p0}, Lo/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 1008
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    move-result-object p0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)I

    move-result p0

    return p0
.end method

.method private static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 902
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private c(Landroidx/preference/ListPreference;)V
    .locals 5

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 708
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->mV:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->mX:I

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lo/aeE;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->mS:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->mU:I

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lo/aeE;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 714
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->c([Ljava/lang/CharSequence;)V

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 715
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->d([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->f(Lo/Am;)V

    return-void
.end method

.method private synthetic c(Lo/Am;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 615
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 617
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c:Lo/Aj;

    invoke-interface {p1, p3}, Lo/nS;->e(Lo/nV;)V

    .line 618
    invoke-interface {p1}, Lo/nS;->m()V

    .line 619
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j()V

    .line 621
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private c(Lo/nS;Landroidx/preference/ListPreference;)V
    .locals 2

    .line 722
    invoke-interface {p1}, Lo/nS;->h()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object p1

    const-string v0, "pref.downloads.video_quality"

    .line 724
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 726
    sget-object v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$3;->c:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    .line 735
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mV:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 728
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    .line 729
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mS:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private synthetic c(Landroidx/preference/ListPreference;Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 666
    instance-of p3, p4, Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "SettingsFragment"

    if-eqz p3, :cond_5

    .line 667
    check-cast p4, Ljava/lang/String;

    const/4 p3, -0x1

    .line 669
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x79209ddf

    if-eq v2, v3, :cond_1

    const v3, 0x1f0de4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "BEST"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "DEFAULT"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p3, 0x1

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eq p3, v0, :cond_3

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received unexpected value for downloads video quality "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p3, "Set downloads video quality to default"

    .line 677
    invoke-static {v1, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->mV:I

    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 679
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/Am;)V

    goto :goto_1

    :cond_4
    const-string p3, "Set downloads video quality to best"

    .line 671
    invoke-static {v1, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->mS:I

    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 673
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/Am;)V

    .line 684
    :goto_1
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object p3, Lcom/netflix/cl/model/AppView;->downloadVideoQualitySetting:Lcom/netflix/cl/model/AppView;

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p3, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-direct {p3, p4}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    goto :goto_2

    .line 688
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received unexpected NON string value for downloads video quality "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v0
.end method

.method public static synthetic c(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->h(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static d(Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;)I
    .locals 2

    .line 1012
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eA:I

    .line 1013
    sget-object v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$3;->a:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1021
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eB:I

    goto :goto_0

    .line 1018
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eC:I

    goto :goto_0

    .line 1015
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eD:I

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->v()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method private d(Lo/Am;)V
    .locals 1

    .line 859
    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->j(Lo/Am;)V

    .line 861
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a(Lo/Am;)V

    .line 862
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Lo/Am;)V

    .line 863
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lo/Am;)V

    .line 864
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Lo/Am;)V

    goto :goto_0

    :cond_0
    const-string p1, "pref.downloads"

    .line 866
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic d(Lo/nS;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 954
    invoke-interface {p1}, Lo/nS;->p()Lo/Bg;

    move-result-object v0

    invoke-interface {v0, p4}, Lo/Bg;->b(I)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 955
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "SettingsFragment"

    const-string v3, "selected=%d isRemovable=%b"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 956
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->na:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mH:I

    :goto_0
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->d(I)V

    if-eqz v0, :cond_1

    .line 957
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bt:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->aZ:I

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->a(I)V

    .line 958
    invoke-interface {p1, p4}, Lo/nS;->c(I)V

    .line 959
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 961
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 963
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 964
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->notifyDataSetChanged()V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_3

    .line 968
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->s()V

    .line 969
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object p3, Lcom/netflix/cl/model/AppView;->downloadLocationSetting:Lcom/netflix/cl/model/AppView;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p3, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    if-eqz v0, :cond_4

    sget-object p4, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->EXTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    .line 972
    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->name()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_4
    sget-object p4, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->INTERNAL:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;

    .line 973
    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$StorageLocation;->name()Ljava/lang/String;

    move-result-object p4

    :goto_2
    invoke-direct {p3, p4}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    .line 969
    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private static synthetic d(Landroid/app/Activity;Lo/Am;Landroidx/preference/Preference;)Z
    .locals 0

    .line 1180
    check-cast p0, Lo/aaV;

    .line 1181
    sget-object p2, Lo/gf;->e:Lo/gf$TaskDescription;

    invoke-virtual {p2}, Lo/gf$TaskDescription;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1182
    new-instance p2, Lo/aaQ;

    invoke-direct {p2}, Lo/aaQ;-><init>()V

    invoke-virtual {p2, p0, p1}, Lo/aaQ;->b(Lo/aaV;Lo/Am;)V

    goto :goto_0

    .line 1184
    :cond_0
    invoke-static {p0, p1}, Lo/aaO;->c(Lo/aaV;Lo/Am;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->g(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic d(Lo/Am;Landroidx/preference/Preference;)Z
    .locals 2

    .line 603
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;

    if-eqz v0, :cond_0

    .line 609
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 612
    :goto_0
    new-instance v1, Lo/abo;

    invoke-direct {v1, p0, p1}, Lo/abo;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;)V

    invoke-static {p2, v1, v0}, Lo/PY;->e(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b:Landroid/app/Dialog;

    .line 624
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic d(Lo/nP;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Lo/nP;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    const-string v0, "pref.downloads.remove_all"

    .line 168
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "pref.downloads"

    .line 169
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Lo/nS;->q()V

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->g(Lo/Am;)V

    return-void
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Lo/Am;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Lo/nS;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 1341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1343
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1345
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-16740: Exception occurred when launching URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e(Lo/Am;)V
    .locals 3

    .line 636
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    .line 637
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref.downloads"

    .line 641
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "pref.downloads.video_quality"

    .line 642
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "SettingsFragment"

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    instance-of v0, v0, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_2

    const-string p1, "downloadCategoryPref not a group pref"

    .line 650
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 654
    :cond_2
    instance-of v0, v1, Landroidx/preference/ListPreference;

    if-nez v0, :cond_3

    const-string p1, "downloads downloadQualityPref not a list pref"

    .line 655
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 661
    :cond_3
    check-cast v1, Landroidx/preference/ListPreference;

    const-string v0, "Debug: downloads video quality"

    .line 663
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v0, Lo/abt;

    invoke-direct {v0, p0, v1, p1}, Lo/abt;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/ListPreference;Lo/Am;)V

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->a(Landroidx/preference/Preference$Application;)V

    .line 694
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Lo/nS;Landroidx/preference/ListPreference;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "downloads downloadCategoryPref or downloadQualityPref is null"

    .line 645
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic e(Landroid/app/Activity;Lo/Am;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Landroid/app/Activity;Lo/Am;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->j(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/ListPreference;Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Landroidx/preference/ListPreference;Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->i(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/Am;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Lo/Am;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic e(Lo/Am;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 503
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lo/nS;->c(Z)V

    .line 504
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireActivity()Lo/Serializable;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "extra_download_playableId"

    .line 507
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 508
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 509
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 513
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v0, Lcom/netflix/cl/model/AppView;->wifiOnlyDownloadsSetting:Lcom/netflix/cl/model/AppView;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-direct {v0, p3}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic e(Lo/nS;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 12

    .line 892
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p3

    invoke-interface {p3}, Lo/Rq;->h()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 893
    new-instance p1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, p2, p3}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 894
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nf:I

    invoke-virtual {p1, p2}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mf:I

    new-instance p3, Lo/abm;

    invoke-direct {p3, p0}, Lo/abm;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    .line 895
    invoke-virtual {p1, p2, p3}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    sget-object p3, Lo/abl;->b:Lo/abl;

    .line 902
    invoke-virtual {p1, p2, p3}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 903
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 904
    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    goto/16 :goto_3

    .line 906
    :cond_0
    invoke-interface {p1}, Lo/nS;->p()Lo/Bg;

    move-result-object p3

    .line 907
    invoke-interface {p3}, Lo/Bg;->c()I

    move-result v1

    const-string v2, "SettingsFragment"

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    .line 908
    invoke-interface {p3}, Lo/Bg;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "osvList size=%d"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 911
    :cond_1
    invoke-interface {p1}, Lo/nS;->q()V

    .line 912
    invoke-interface {p3}, Lo/Bg;->d()I

    move-result v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 913
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "currentlySelected=%d"

    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 915
    invoke-interface {p3}, Lo/Bg;->c()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 916
    :goto_0
    invoke-interface {p3}, Lo/Bg;->c()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 917
    invoke-interface {p3, v4}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Bh;

    .line 918
    invoke-interface {v5}, Lo/Bh;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->na:I

    goto :goto_1

    :cond_2
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->mH:I

    :goto_1
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 919
    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->mF:I

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v9

    invoke-interface {v5}, Lo/Bh;->a()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 920
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v5}, Lo/aeE;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 923
    :cond_3
    new-instance p3, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p3, v4, v5}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 924
    array-length v4, v2

    const/4 v5, 0x0

    if-ne v4, v0, :cond_4

    .line 929
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->cc:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 930
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->cb:I

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v4}, Lo/aeE;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 933
    new-instance v4, Lo/ImageSwitcher;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;)V

    .line 934
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ar:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 935
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 936
    invoke-virtual {v4, v6, v6, v6, v7}, Lo/ImageSwitcher;->setPadding(IIII)V

    .line 937
    invoke-virtual {v4, v3}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 938
    invoke-virtual {p3, v4}, Lo/PendingIntent$Activity;->e(Landroid/view/View;)Lo/PendingIntent$Activity;

    .line 939
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p3, v3, v5}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_2

    .line 945
    :cond_4
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->mC:I

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 946
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 947
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v8

    sget v9, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->t:I

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v3, v8, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 948
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v3, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 949
    invoke-virtual {p3, v6}, Lo/PendingIntent$Activity;->d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 950
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {p3, v3, v5}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 953
    :goto_2
    new-instance v3, Lo/abk;

    invoke-direct {v3, p0, p1, p2}, Lo/abk;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;)V

    invoke-virtual {p3, v2, v1, v3}, Lo/PendingIntent$Activity;->c([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 976
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    :goto_3
    return v0
.end method

.method private synthetic f(Lo/Am;)V
    .locals 2

    .line 1064
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "SettingsFragment"

    const-string v1, "onRequestPermissionsResult, permission denied, reverting to internal storage"

    .line 1066
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1067
    invoke-interface {p1, v0}, Lo/nS;->c(I)V

    const-string p1, "pref.downloads.storage_selector"

    .line 1068
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1070
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mH:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->d(I)V

    :cond_0
    return-void
.end method

.method private synthetic f(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "https://fast.com/"

    .line 1301
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic g(Lo/Am;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->t()V

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->o()V

    .line 200
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Lo/Am;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->i(Lo/Am;)V

    return-void
.end method

.method private synthetic g(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "http://www.netflix.com/termsofuse"

    .line 1281
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static h()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 140
    invoke-static {}, Lo/fo;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lo/abv;

    invoke-direct {v0}, Lo/abv;-><init>()V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;-><init>()V

    return-object v0
.end method

.method private h(Lo/Am;)V
    .locals 0

    return-void
.end method

.method private static synthetic h(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private i(Lo/Am;)V
    .locals 9

    .line 1078
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1082
    :cond_0
    invoke-static {v0}, Lo/adi;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1083
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kB:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1084
    :cond_1
    invoke-static {v0}, Lo/adi;->e(Landroid/content/Context;)I

    move-result v2

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->kA:I

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v2, :cond_2

    const-string v1, " ("

    .line 1091
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ky:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iy:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/adk;->c()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1106
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v2, ", "

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1107
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "\n"

    .line 1110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->hH:I

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {p1}, Lo/Am;->f()Lo/cz;

    move-result-object v5

    .line 1115
    invoke-interface {v5}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/partner/PartnerInstallType;->c(Ljava/lang/String;)Z

    move-result v6

    .line 1116
    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->hk:I

    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v7, v8}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1120
    invoke-interface {v5}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v6

    .line 1121
    invoke-static {v6}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eN:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 1124
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1126
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :goto_0
    invoke-interface {v5}, Lo/cz;->ad()Ljava/lang/String;

    move-result-object v2

    .line 1130
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1131
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->eL:I

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v6, v7}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_5
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ev:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v2, v6}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gQ:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v2, v6}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {p1}, Lo/Am;->k()Lo/ds;

    move-result-object v2

    invoke-interface {v2}, Lo/ds;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    sget-object v2, Lo/ael;->a:Lo/ael;

    invoke-virtual {v2}, Lo/ael;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1145
    invoke-interface {v5}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v2

    const-string v6, ""

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-interface {v5}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "api: "

    .line 1148
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "nq api: "

    .line 1150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/nq/androidui/samurai/~7.54.0/api"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config: "

    .line 1152
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "playback: "

    .line 1154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/nq/android/playback/~1.0.0"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "playback logs: "

    .line 1156
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/nq/android/api/~7.1.0"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "ui.about.device"

    .line 1160
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 1161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 1162
    invoke-static {}, Lo/adq;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->as:I

    goto :goto_1

    :cond_7
    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->au:I

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->a(I)V

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ca:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Am;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    sget-object v2, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->b:Lcom/netflix/mediaclient/service/user/SmartLockMonitor;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/SmartLockMonitor;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->jB:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    .line 1167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v2, "ui.account"

    .line 1170
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 1171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 1173
    new-instance v3, Lo/abe;

    invoke-direct {v3, v1}, Lo/abe;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    const-string v1, "ui.diagnosis.download"

    .line 1175
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1177
    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1178
    new-instance v2, Lo/aba;

    invoke-direct {v2, v0, p1}, Lo/aba;-><init>(Landroid/app/Activity;Lo/Am;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    goto :goto_2

    :cond_9
    const-string v0, "ui.diagnosis"

    .line 1189
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 1190
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1194
    :cond_a
    :goto_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->h(Lo/Am;)V

    return-void
.end method

.method private synthetic i(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "http://www.netflix.com/privacy#cookies"

    .line 1272
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private j(Lo/Am;)V
    .locals 6

    const-string v0, "SettingsFragment"

    const-string v1, "handleDownloadsStorageSelectorSetting"

    .line 874
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "handleDownloadsStorageSelectorSetting offlineAgent is null"

    .line 877
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "pref.downloads.storage_selector"

    .line 880
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "handleDownloadsStorageSelectorSetting dl location pref is null"

    .line 882
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 886
    :cond_1
    invoke-interface {p1}, Lo/nS;->p()Lo/Bg;

    move-result-object v2

    invoke-interface {p1}, Lo/nS;->p()Lo/Bg;

    move-result-object v3

    invoke-interface {v3}, Lo/Bg;->d()I

    move-result v3

    invoke-interface {v2, v3}, Lo/Bg;->b(I)Z

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 887
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "currentStorageRemovable=%b"

    invoke-static {v0, v4, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v2, :cond_2

    .line 888
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->na:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mH:I

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->d(I)V

    .line 889
    invoke-interface {p1}, Lo/nS;->q()V

    .line 891
    new-instance v0, Lo/abc;

    invoke-direct {v0, p0, p1, v1}, Lo/abc;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    return-void
.end method

.method private static synthetic j(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private k()V
    .locals 3

    const-string v0, "SettingsFragment"

    const-string v1, "removing WiFiOnly settings"

    .line 580
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "nf_play_no_wifi_warning"

    .line 581
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "video.playback"

    .line 582
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 583
    instance-of v2, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 584
    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 548
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/x;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->n()V

    return-void

    :cond_0
    const-string v0, "nf.bw_save"

    .line 553
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->n()V

    return-void

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Landroid/content/Context;Landroidx/preference/Preference;)V

    .line 561
    sget-object v1, Lo/abp;->b:Lo/abp;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    return-void
.end method

.method private synthetic l(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "http://www.netflix.com/privacy"

    .line 1264
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private m()V
    .locals 5

    const-string v0, "SettingsFragment"

    const-string v1, "removing qa.debugonly preferences for partner build"

    .line 260
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pref.qa.debugonly"

    .line 261
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "ui.castAppId"

    .line 263
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 264
    instance-of v3, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const-string v4, "removing ui.castAppId"

    .line 265
    invoke-static {v0, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object v4, v1

    check-cast v4, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_0
    const-string v2, "ui.bootParams"

    .line 268
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v4, "removing ui.bootParams"

    .line 270
    invoke-static {v0, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object v4, v1

    check-cast v4, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v2, "ui.reset_license_sync_time"

    .line 273
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const-string v4, "removing ui.reset_license_sync_time"

    .line 275
    invoke-static {v0, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object v4, v1

    check-cast v4, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_2
    const-string v2, "ui.reset_bootloader"

    .line 278
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    const-string v4, "removing ui.reset_bootloader"

    .line 280
    invoke-static {v0, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object v4, v1

    check-cast v4, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_3
    const-string v2, "ui.site"

    .line 283
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    const-string v4, "removing ui.site"

    .line 285
    invoke-static {v0, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object v4, v1

    check-cast v4, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_4
    const-string v2, "ui.allowpip"

    .line 288
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    const-string v3, "removing ui.allowpip"

    .line 290
    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private static synthetic m(Landroidx/preference/Preference;)Z
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug: player type. preference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsFragment"

    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private n()V
    .locals 3

    const-string v0, "SettingsFragment"

    const-string v1, "removing bandwidth settings"

    .line 568
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "nf.bw_save"

    .line 569
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "video.playback"

    .line 570
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 571
    instance-of v2, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 572
    move-object v2, v1

    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    :cond_0
    const-string v0, "pref.screen"

    .line 575
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    .line 576
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private o()V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/x;->g(Landroid/content/Context;)V

    .line 487
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->k()V

    return-void
.end method

.method private p()V
    .locals 3

    const-string v0, "nf_notification_enable"

    .line 823
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;

    .line 825
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref.notification"

    .line 826
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    .line 833
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private q()Z
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/cT;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private r()Z
    .locals 3

    const-string v0, "SettingsFragment"

    :try_start_0
    const-string v1, "Verifies that the device supports GCM"

    .line 747
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    const-string v2, "Device does NOT supports GCM"

    .line 750
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private s()V
    .locals 3

    .line 1030
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "SettingsFragment"

    if-eqz v0, :cond_0

    const-string v0, "requestExternalStoragePermission, requesting permission"

    .line 1032
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "requestExternalStoragePermission, already has permission"

    .line 1037
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 764
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->r()Z

    move-result v0

    const-string v1, "SettingsFragment"

    if-nez v0, :cond_0

    const-string v0, "Notifications are NOT supported!"

    .line 765
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->p()V

    goto :goto_0

    :cond_0
    const-string v0, "Enable notifications"

    .line 769
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->q()Z

    move-result v0

    const-string v1, "nf_notification_enable"

    .line 777
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;

    if-eqz v1, :cond_1

    .line 779
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->e(Z)V

    .line 780
    new-instance v0, Lo/abx;

    invoke-direct {v0, p0}, Lo/abx;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->a(Landroidx/preference/Preference$Application;)V

    goto :goto_0

    .line 813
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->p()V

    :goto_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 1255
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pR:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1256
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/aaS;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->d(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "pref.privacy"

    .line 1260
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1261
    new-instance v1, Lo/abf;

    invoke-direct {v1, p0}, Lo/abf;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    const-string v0, "pref.privacy.cookies"

    .line 1268
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1269
    new-instance v1, Lo/abj;

    invoke-direct {v1, p0}, Lo/abj;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    const-string v0, "pref.terms"

    .line 1277
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1278
    new-instance v1, Lo/abi;

    invoke-direct {v1, p0}, Lo/abi;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    return-void
.end method

.method private v()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 1361
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method private w()V
    .locals 2

    const-string v0, "ui.diagnosis.network"

    .line 1287
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1289
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->d(Landroid/content/Intent;)V

    .line 1291
    :cond_0
    sget-object v1, Lo/abh;->b:Lo/abh;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    .line 1297
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->x()V

    const-string v0, "ui.diagnosis.speed.test"

    .line 1299
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1300
    new-instance v1, Lo/abg;

    invoke-direct {v1, p0}, Lo/abg;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    return-void
.end method

.method private x()V
    .locals 3

    const-string v0, "ui.diagnosis.playback_specification"

    .line 1307
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1311
    :cond_0
    sget-object v1, Lo/gM;->b:Lo/gM$Application;

    invoke-virtual {v1}, Lo/gM$Application;->e()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ui.diagnosis"

    .line 1312
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 1313
    instance-of v2, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_3

    .line 1314
    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1317
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1318
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/aaW;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->d(Landroid/content/Intent;)V

    .line 1320
    :cond_2
    sget-object v1, Lo/abn;->c:Lo/abn;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference$ActionBar;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 2

    .line 1352
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1356
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0

    .line 1354
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fragment has a null activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "nf.bw_save"

    .line 984
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 989
    invoke-static {p1}, Lo/yn;->j(Landroid/content/Context;)V

    .line 991
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Landroid/content/Context;Landroidx/preference/Preference;)V

    return-void
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 2

    .line 298
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreference;

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lo/CK;->e()Lo/CK;

    move-result-object p1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, p0, v0}, Lo/PushbackReader;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 301
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->requireFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {p1, v0, v1}, Lo/PushbackReader;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-super {p0, p1}, Lo/RuntimeException;->a(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method

.method protected c(Lo/Am;)V
    .locals 2

    .line 522
    invoke-virtual {p1}, Lo/Am;->u()Lo/nP;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "pref.downloads.smart"

    .line 527
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;

    if-nez v1, :cond_1

    return-void

    .line 532
    :cond_1
    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 537
    :cond_2
    invoke-interface {v0}, Lo/nP;->c()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->e(Z)V

    .line 539
    new-instance p1, Lo/abr;

    invoke-direct {p1, v0}, Lo/abr;-><init>(Lo/nP;)V

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->a(Landroidx/preference/Preference$Application;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b()Lo/StackOverflowError;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/StackOverflowError;->e(I)V

    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b()Lo/StackOverflowError;

    move-result-object p1

    const-string p2, "nfxpref"

    invoke-virtual {p1, p2}, Lo/StackOverflowError;->a(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->g()V

    const-string p1, "pref.downloads.video_quality"

    .line 216
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 218
    instance-of p2, p1, Landroidx/preference/ListPreference;

    if-eqz p2, :cond_0

    .line 219
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->c(Landroidx/preference/ListPreference;)V

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->l()V

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->w()V

    .line 224
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->u()V

    const-string p1, "pref.qa.debugonly"

    .line 233
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const-string p2, "pref.screen"

    .line 234
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 235
    instance-of v0, p2, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 236
    check-cast p2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference;)Z

    .line 240
    :cond_1
    invoke-static {}, Lo/aek;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->m()V

    :cond_2
    return-void
.end method

.method protected g()V
    .locals 1

    .line 206
    sget v0, Lcom/netflix/mediaclient/ui/R$VoiceInteractor;->d:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Lo/RuntimeException;->onAttach(Landroid/app/Activity;)V

    .line 190
    const-class v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;

    invoke-static {p1, v0}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 195
    invoke-super {p0, p1}, Lo/RuntimeException;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance v0, Lo/abb;

    invoke-direct {v0, p0}, Lo/abb;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 331
    invoke-super {p0}, Lo/RuntimeException;->onPause()V

    .line 333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1046
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRequestPermissionResult, requestCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SettingsFragment"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    new-array p2, p2, [Ljava/lang/Object;

    .line 1048
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "unknown permission request code: %d"

    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 1053
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    const-string p1, "permission is granted"

    .line 1054
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1058
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1060
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    new-array p2, p2, [Ljava/lang/Object;

    .line 1061
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "onRequestPermissionsResult, shouldShowRationale=%b"

    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1063
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance p2, Lo/abd;

    invoke-direct {p2, p0}, Lo/abd;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 324
    invoke-super {p0}, Lo/RuntimeException;->onResume()V

    .line 326
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string p1, "nf_play_no_wifi_warning"

    .line 339
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Lo/Serializable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 247
    invoke-super {p0, p1, p2}, Lo/RuntimeException;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 252
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 253
    new-instance p2, Lo/ThreadLocal;

    .line 254
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lo/ThreadLocal;-><init>(Landroid/content/Context;I)V

    .line 253
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    :cond_0
    return-void
.end method
