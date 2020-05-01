.class public Lcom/netflix/mediaclient/ui/settings/AboutFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static create()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;-><init>()V

    return-object v0
.end method

.method private createViewCookiesPolicyIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "http://www.netflix.com/privacy#cookies"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createViewLegalTermsOfUseIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "http://www.netflix.com/termsofuse"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createViewPrivacyPolicyIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "http://www.netflix.com/privacy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private updateAboutDevice()V
    .locals 6

    .prologue
    const/16 v5, 0x200f

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const v3, 0x7f08022a

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    if-lez v1, :cond_1

    .line 115
    const-string/jumbo v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    const v0, 0x7f0801c4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {v2, v5}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 125
    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_2

    .line 128
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {v2, v5}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 130
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_2
    const-string/jumbo v0, "ui.about.device"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0800ee

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "ui.account"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    const-string/jumbo v0, "ui.account"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->updateDebugInfo()V

    .line 142
    return-void
.end method

.method private updateDebugInfo()V
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "ui.about.prefs.screen"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 170
    const-string/jumbo v1, "ui.about.debug.cat"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->activity:Landroid/app/Activity;

    .line 46
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->addPreferencesFromResource(I)V

    .line 48
    const v0, 0x7f08032c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->create(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 49
    const-string/jumbo v0, "pref.privacy"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->createViewPrivacyPolicyIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 51
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/AboutFragment$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment$1;-><init>(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    const-string/jumbo v0, "pref.privacy.cookies"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->createViewCookiesPolicyIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 61
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/AboutFragment$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment$2;-><init>(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    const-string/jumbo v0, "pref.terms"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->createViewLegalTermsOfUseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 71
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/AboutFragment$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment$3;-><init>(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string/jumbo v0, "ui.diagnosis"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 81
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/AboutFragment$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment$4;-><init>(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->updateAboutDevice()V

    .line 90
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->updateAboutDevice()V

    .line 181
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 186
    return-void
.end method
