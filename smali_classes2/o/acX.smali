.class Lo/acX;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/acV;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field protected e:Lo/JM;

.field private f:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

.field private h:Landroid/view/View;

.field private i:Lio/reactivex/disposables/CompositeDisposable;

.field private j:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lo/acX;->i:Lio/reactivex/disposables/CompositeDisposable;

    .line 53
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    iput-object v0, p0, Lo/acX;->e:Lo/JM;

    .line 59
    iput-object p1, p0, Lo/acX;->a:Lo/acV;

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dh:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/acX;->c:Landroid/view/View;

    .line 61
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dA:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/acX;->d:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lo/acX;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Lo/acY;

    invoke-direct {v1, p0}, Lo/acY;-><init>(Lo/acX;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->di:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/acX;->b:Landroid/view/View;

    .line 70
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dy:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/acX;->j:Landroid/view/View;

    .line 71
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dC:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/acX;->h:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;-><init>(Lo/acV;)V

    iput-object v0, p0, Lo/acX;->f:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    .line 74
    invoke-direct {p0}, Lo/acX;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lo/acX;->b:Landroid/view/View;

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->c:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 76
    iget-object p1, p0, Lo/acX;->j:Landroid/view/View;

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->c:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 77
    iget-object p1, p0, Lo/acX;->h:Landroid/view/View;

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->c:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lo/acX;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lo/acX;->a:Lo/acV;

    invoke-static {v0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lo/acX;->i:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lo/acX;->e:Lo/JM;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v2, v3}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lo/acX$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lo/acX$4;-><init>(Lo/acX;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    .line 252
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    .line 251
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, p1, p3}, Lo/acX;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lo/acX;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lo/acX;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
    .locals 1

    .line 287
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 288
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 290
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    iget-object p2, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {p2}, Lo/acV;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 292
    iget-object p2, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {p2, p1}, Lo/acV;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "VoipActivity"

    const-string p2, "Unable to launchHelp"

    .line 297
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 244
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const-string v1, "?"

    invoke-direct {p0, p1, v1, v0}, Lo/acX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    return-void
.end method

.method static synthetic c(Lo/acX;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/acX;->e(Landroid/view/View;)V

    return-void
.end method

.method private c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 3

    .line 64
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->csChatButton:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v1, Lcom/netflix/cl/model/event/session/command/cs/ChatCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/cs/ChatCommand;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    const-string p1, "https://help.netflix.com/mobilechat"

    .line 66
    invoke-direct {p0, p1}, Lo/acX;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .line 278
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-direct {p0, p1, v0}, Lo/acX;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    return-void
.end method

.method private e()Z
    .locals 3

    const-string v0, "VoipActivity"

    const/4 v1, 0x0

    .line 122
    :try_start_0
    iget-object v2, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {v2}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/acX;->a:Lo/acV;

    .line 123
    invoke-virtual {v2}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v2

    invoke-virtual {v2}, Lo/Am;->i()Lo/cz;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lo/acX;->a:Lo/acV;

    .line 126
    invoke-virtual {v2}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v2

    invoke-virtual {v2}, Lo/Am;->i()Lo/cz;

    move-result-object v2

    invoke-interface {v2}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "VOIP config does not exist, by default it is enabled"

    .line 128
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 131
    :cond_0
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isDisableChatButton()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const-string v2, "Something is very wrong, go with default ."

    .line 134
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private f()V
    .locals 3

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "voipCallButtonPress"

    .line 237
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private g()Z
    .locals 5

    const-string v0, "VoipActivity"

    const/4 v1, 0x1

    .line 148
    :try_start_0
    iget-object v2, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {v2}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {v2}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v2

    invoke-virtual {v2}, Lo/Am;->i()Lo/cz;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 150
    iget-object v2, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {v2}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v2

    invoke-virtual {v2}, Lo/Am;->i()Lo/cz;

    move-result-object v2

    invoke-interface {v2}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "VOIP config does not exist, by default it is enabled"

    .line 152
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    iget-object v3, p0, Lo/acX;->a:Lo/acV;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v3

    .line 157
    iget-object v4, p0, Lo/acX;->a:Lo/acV;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->i(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverData()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_1
    if-eqz v3, :cond_2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On WiFi, VOIP call is enabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_2
    const-string v2, "Not on data or WiFi? We most likely do not have network Hide by default"

    .line 171
    invoke-static {v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v2, "Service manager or configuration not found, hide VOIP"

    .line 175
    invoke-static {v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v2, "Something is very wrong, go with default ."

    .line 179
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 302
    iget-object v0, p0, Lo/acX;->c:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 6

    .line 92
    iget-object v0, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->dD:I

    invoke-virtual {v0, v1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lo/acX;->a:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dE:I

    invoke-virtual {v1, v2}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-direct {p0}, Lo/acX;->e()Z

    move-result v2

    .line 97
    invoke-direct {p0}, Lo/acX;->g()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lo/acX;->c:Landroid/view/View;

    sget-object v5, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->c:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 99
    sget-object v3, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->b:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v3, p0, Lo/acX;->c:Landroid/view/View;

    sget-object v5, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 103
    sget-object v3, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    const/4 v1, 0x1

    :goto_0
    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lo/acX;->d:Landroid/view/View;

    sget-object v3, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->c:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_1

    .line 110
    :cond_1
    iget-object v1, p0, Lo/acX;->d:Landroid/view/View;

    sget-object v2, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 112
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->b:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    :goto_2
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "VoipActivity"

    if-nez p1, :cond_0

    const-string p1, "launchBrowser:: null view? This should never happen!"

    .line 194
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 199
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dx:I

    if-ne p1, v2, :cond_1

    .line 200
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rz:I

    invoke-virtual {p1, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 201
    :cond_1
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dw:I

    if-ne p1, v2, :cond_2

    .line 202
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rC:I

    invoke-virtual {p1, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :cond_2
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->du:I

    if-ne p1, v2, :cond_3

    .line 204
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rA:I

    invoke-virtual {p1, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :cond_3
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dy:I

    if-ne p1, v2, :cond_4

    .line 206
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rB:I

    invoke-virtual {p1, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    :cond_4
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->di:I

    if-ne p1, v2, :cond_5

    .line 208
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rx:I

    invoke-virtual {p1, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_5
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dB:I

    if-ne p1, v2, :cond_6

    .line 210
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ry:I

    invoke-virtual {p1, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_6
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dC:I

    if-ne p1, v2, :cond_7

    .line 212
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rG:I

    invoke-virtual {p1, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_7
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dt:I

    if-ne p1, v2, :cond_9

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/acX;->a:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ru:I

    invoke-virtual {v1, v2}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    const-string v1, "en"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lo/acX;->a:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->rw:I

    invoke-virtual {v1, v2}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acX;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_9
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dh:I

    if-ne p1, v2, :cond_a

    .line 219
    invoke-direct {p0}, Lo/acX;->f()V

    .line 220
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {p1}, Lo/acV;->a()V

    goto :goto_1

    .line 221
    :cond_a
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->dF:I

    if-ne p1, v2, :cond_b

    const-string p1, "Perform up action"

    .line 222
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lo/acX;->a:Lo/acV;

    invoke-virtual {p1}, Lo/acV;->performUpAction()V

    :goto_1
    return v0

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/acX;->f:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->a()V

    .line 87
    :cond_0
    iget-object v0, p0, Lo/acX;->i:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method
