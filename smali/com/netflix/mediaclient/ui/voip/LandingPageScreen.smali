.class Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;
.super Ljava/lang/Object;
.source "LandingPageScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoipActivity"


# instance fields
.field private mCancelMyAccount:Landroid/view/View;

.field private mChangePassword:Landroid/view/View;

.field private mFab:Landroid/view/View;

.field private mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    .line 37
    const v0, 0x7f0f010c

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    .line 38
    const v0, 0x7f0f0110

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mCancelMyAccount:Landroid/view/View;

    .line 39
    const v0, 0x7f0f010e

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mChangePassword:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->shouldHidePersonalizedLinks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mCancelMyAccount:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mChangePassword:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->shouldHideCallButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 49
    :cond_1
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Opening external URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->url:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Unable to launchHelp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldHideCallButton()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 90
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "VOIP config does not exist, by default it is enabled"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v3

    .line 97
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "On data, VOIP call is enabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverData()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverData()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 106
    :cond_3
    if-eqz v3, :cond_4

    .line 107
    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "On WiFi, VOIP call is enabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 111
    :cond_4
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Not on data or WiFi? We most likely do not have network Hide by default"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Something is very wrong, go with default ."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_5
    :try_start_1
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Service manager or configuration not found, hide VOIP"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private shouldHidePersonalizedLinks()Z
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "User is logged in, leave links..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 69
    :cond_0
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "User is NOT logged in, remove personal links..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "User is NOT logged in, remove personal links..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getFab()Landroid/view/View;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    return-object v0
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 133
    if-nez p1, :cond_0

    .line 134
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "launchBrowser:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 159
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "VoipActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown view, unable to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :sswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f080331

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :sswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f080332

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :sswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f08032f

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :sswitch_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f080330

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :sswitch_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->startDial()V

    goto :goto_0

    .line 155
    :sswitch_5
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Perform up action"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->performUpAction()V

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00db -> :sswitch_5
        0x7f0f010c -> :sswitch_4
        0x7f0f010d -> :sswitch_0
        0x7f0f010e -> :sswitch_1
        0x7f0f010f -> :sswitch_3
        0x7f0f0110 -> :sswitch_2
    .end sparse-switch
.end method

.method public update()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->shouldHideCallButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0
.end method
