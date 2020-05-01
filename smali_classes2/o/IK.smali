.class public final Lo/IK;
.super Lo/IF;
.source ""

# interfaces
.implements Lo/IE;


# instance fields
.field private c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private e:Z

.field private final f:Lio/reactivex/disposables/CompositeDisposable;

.field private final g:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/bY;)V
    .locals 1

    const-string v0, "moduleInstaller"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lo/IF;-><init>(Lo/bY;)V

    const-string p1, "LangModuleInstall"

    .line 38
    iput-object p1, p0, Lo/IK;->g:Ljava/lang/String;

    .line 44
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/IK;->f:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private final a()V
    .locals 2

    .line 136
    iget-object v0, p0, Lo/IK;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 137
    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lo/IK;->f:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0, v1}, Lo/IK;->e(Ljava/util/Collection;Lio/reactivex/disposables/CompositeDisposable;)V

    const/4 v0, 0x0

    .line 138
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/IK;->j:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 192
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v1, Lo/io;

    sget-object v2, Lo/bY$TaskDescription;->a:Lo/bY$TaskDescription;

    const-string v3, "ModuleInstaller.ModuleInfo.Languages"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lo/io;-><init>(Lo/bY$TaskDescription;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lo/io;->b(Ljava/lang/String;)Lo/io;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/Logblob;

    .line 193
    invoke-interface {v0, p1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method private final b()Z
    .locals 4

    .line 148
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    const-string v1, "requestMissingLanguagesForeground"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lo/IK;->e()Ljava/util/List;

    move-result-object v0

    .line 150
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 151
    iget-boolean v2, p0, Lo/IK;->e:Z

    if-eqz v2, :cond_0

    .line 152
    iget-object v1, p0, Lo/IK;->g:Ljava/lang/String;

    const-string v2, "waiting for previous language request to finish the installation."

    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-object v0, p0, Lo/IK;->j:Ljava/util/List;

    return v3

    .line 156
    :cond_0
    iput-boolean v3, p0, Lo/IK;->e:Z

    .line 157
    iget-object v0, p0, Lo/IK;->f:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1, v0}, Lo/IK;->e(Ljava/util/Collection;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 159
    :cond_1
    iget-boolean v0, p0, Lo/IK;->e:Z

    return v0
.end method

.method private final e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance().nfAgentProvider"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    invoke-static {v0}, Lo/ij;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "LanguageModuleInstallUti\u2026fAgentProvider.userAgent)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lo/IK;->a:Lo/bY;

    const-string v2, "moduleInstaller"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/bY;->e()Ljava/util/Set;

    move-result-object v1

    const-string v2, "moduleInstaller.installedLanguages"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {v0, v1}, Lo/ij;->b(Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    const-string v1, "LanguageModuleInstallUti\u2026ales, installedLanguages)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/bY$ActionBar;)V
    .locals 2

    .line 180
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :try_start_0
    iget-object v0, p0, Lo/IK;->a:Lo/bY;

    .line 184
    check-cast p1, Landroid/app/Activity;

    .line 185
    sget v1, Lo/ClientCertRequest;->a:I

    .line 182
    invoke-interface {v0, p2, p1, v1}, Lo/bY;->d(Lo/bY$ActionBar;Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final i()Z
    .locals 3

    .line 218
    sget-object v0, Lo/ys;->a:Lo/ys;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 231
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 218
    invoke-virtual {v0, v1}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lo/IK;->a:Lo/bY;

    const-string v2, "moduleInstaller"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/bY;->e()Ljava/util/Set;

    move-result-object v1

    const-string v2, "moduleInstaller.installedLanguages"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 47
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onActivityResultForModuleInstall resultCode %d"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    sget-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->e:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/IK;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Locale;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    const-string v1, "installMissingLanguagesOnInitialConfig"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 77
    invoke-static {p1}, Lo/ij;->e(Ljava/util/Locale;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lo/IK;->b()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    const-string v1, "onActivityPause"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lo/IK;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 60
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lo/IK;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Locale;)Z
    .locals 2

    const-string v0, "locale"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    const-string v1, "installMissingLanguagesForSignup"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lo/ij;->e(Ljava/util/Locale;)V

    .line 70
    invoke-direct {p0}, Lo/IK;->b()Z

    move-result p1

    return p1
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    check-cast p1, Landroid/content/Context;

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lo/IK;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 54
    invoke-direct {p0}, Lo/IK;->b()Z

    return-void
.end method

.method protected c(Lo/bY$ActionBar;)V
    .locals 6

    const-string v0, "installStatus"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNextUpdate status= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytesDownloaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p1}, Lo/bY$ActionBar;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " totalBytesToDownload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {p1}, Lo/bY$ActionBar;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, p1}, Lo/IK;->b(Lo/bY$ActionBar;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    .line 120
    :pswitch_0
    iput-boolean v5, p0, Lo/IK;->e:Z

    goto :goto_1

    .line 117
    :pswitch_1
    iget-object v2, p0, Lo/IK;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, v2, p1}, Lo/IK;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/bY$ActionBar;)V

    goto :goto_1

    .line 123
    :pswitch_2
    iput-boolean v5, p0, Lo/IK;->e:Z

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 98
    :pswitch_3
    iput-boolean v5, p0, Lo/IK;->e:Z

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lo/bY$ActionBar;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 112
    :pswitch_4
    iput-boolean v5, p0, Lo/IK;->e:Z

    .line 113
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 224
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 113
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lo/IE;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 114
    invoke-direct {p0}, Lo/IK;->a()V

    goto :goto_1

    .line 102
    :pswitch_5
    iput-boolean v4, p0, Lo/IK;->e:Z

    goto :goto_0

    .line 95
    :pswitch_6
    iput-boolean v4, p0, Lo/IK;->e:Z

    :goto_1
    :pswitch_7
    if-eqz v4, :cond_0

    .line 131
    invoke-direct {p0, v0, v1}, Lo/IK;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lo/IK;->g:Ljava/lang/String;

    const-string v1, "installingMissingLanguagesForSignedInUser"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lo/IK;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lo/IK;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public d()V
    .locals 3

    .line 211
    invoke-direct {p0}, Lo/IK;->e()Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/cL;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lo/ako;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    .line 214
    :goto_0
    new-instance v2, Lo/iq;

    invoke-direct {v2, v0, v1}, Lo/iq;-><init>(Ljava/util/List;Ljava/util/List;)V

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/Logblob;

    invoke-static {v2}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method protected d(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lo/IK;->e:Z

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->f:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lo/IK;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/IK;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
