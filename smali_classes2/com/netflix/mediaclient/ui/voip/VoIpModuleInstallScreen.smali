.class public Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;
.super Lo/IF;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;
    }
.end annotation


# instance fields
.field private final b:Landroid/widget/ViewFlipper;

.field private final c:Lo/acV;

.field private d:Lo/PendingIntent;

.field private e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

.field private f:Lo/ImageSwitcher;

.field private g:Lo/ImageSwitcher;

.field private h:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;


# direct methods
.method public constructor <init>(Lo/acV;)V
    .locals 1

    .line 67
    const-class v0, Lo/bY;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bY;

    invoke-direct {p0, v0}, Lo/IF;-><init>(Lo/bY;)V

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;->e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->h:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    .line 69
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kF:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b:Landroid/widget/ViewFlipper;

    .line 71
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kI:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    .line 72
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eZ:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    .line 73
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dz:I

    invoke-virtual {p1, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->g:Lo/ImageSwitcher;

    .line 75
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->a:Lo/bY;

    sget-object v0, Lo/bY$TaskDescription;->b:Lo/bY$TaskDescription;

    invoke-interface {p1, v0}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VoIpModuleInstall"

    const-string v0, "module is already installed"

    .line 76
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c()V

    .line 81
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    new-instance v0, Lo/ada;

    invoke-direct {v0, p0}, Lo/ada;-><init>(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 268
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v1, Lo/io;

    sget-object v2, Lo/bY$TaskDescription;->b:Lo/bY$TaskDescription;

    invoke-direct {v1, v2, p1}, Lo/io;-><init>(Lo/bY$TaskDescription;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lo/io;->b(Ljava/lang/String;)Lo/io;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "voipModuleInstalled"

    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d()V

    .line 88
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$5;->d:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->h:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    const-string v1, "module_install_error"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;->e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->h:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    invoke-virtual {v0}, Lo/acV;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v1, Lo/bY$TaskDescription;->b:Lo/bY$TaskDescription;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c(Lio/reactivex/subjects/PublishSubject;Lo/bY$TaskDescription;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 171
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b(Landroid/view/View;)V

    return-void
.end method

.method private c(Lo/acV;Lo/bY$ActionBar;)V
    .locals 2

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->a:Lo/bY;

    sget v1, Lo/ClientCertRequest;->b:I

    invoke-interface {v0, p2, p1, v1}, Lo/bY;->d(Lo/bY$ActionBar;Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "downloadVoipModule"

    .line 109
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->g()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    const-string v1, "module_install_error"

    invoke-static {v0, v1, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;->b:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->h:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    .line 157
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->aG:I

    invoke-virtual {v1, v2}, Lo/acV;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->g:Lo/ImageSwitcher;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ia:I

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d:Lo/PendingIntent;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lo/PendingIntent;->dismiss()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d:Lo/PendingIntent;

    .line 167
    :cond_0
    new-instance v0, Lo/PendingIntent$Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 168
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ia:I

    invoke-virtual {v1, v2}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 169
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lq:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 170
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    sget-object v1, Lo/adf;->b:Lo/adf;

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 173
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kr:I

    new-instance v1, Lo/ade;

    invoke-direct {v1, p0}, Lo/ade;-><init>(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V

    invoke-virtual {v0, p1, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 176
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d:Lo/PendingIntent;

    .line 177
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d:Lo/PendingIntent;

    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b()V

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setProgress(I)V

    .line 147
    new-instance v0, Lo/adb;

    invoke-direct {v0, p0}, Lo/adb;-><init>(Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "voipModuleInstallError"

    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 137
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v1, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 263
    sget-object v0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;->e:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->h:Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen$ButtonState;

    .line 264
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c()V

    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "screenDestroy"

    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(Lo/bY$ActionBar;)V
    .locals 9

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytesDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/bY$ActionBar;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalBytesToDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/bY$ActionBar;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoIpModuleInstall"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b(Lo/bY$ActionBar;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    sget-object v2, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 188
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 222
    :pswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c:Lo/acV;

    invoke-direct {p0, v1, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->c(Lo/acV;Lo/bY$ActionBar;)V

    goto/16 :goto_1

    .line 227
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lo/bY$ActionBar;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lo/bY$ActionBar;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :pswitch_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    invoke-virtual {p1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lu:I

    invoke-virtual {p1, v1}, Lo/ImageSwitcher;->setText(I)V

    .line 219
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e()V

    goto :goto_1

    .line 213
    :pswitch_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    invoke-virtual {p1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lv:I

    invoke-virtual {p1, v1}, Lo/ImageSwitcher;->setText(I)V

    goto :goto_1

    .line 208
    :pswitch_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setProgress(I)V

    .line 209
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    invoke-virtual {p1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lr:I

    invoke-virtual {p1, v1}, Lo/ImageSwitcher;->setText(I)V

    goto :goto_1

    .line 199
    :pswitch_6
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    invoke-virtual {v1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 200
    invoke-interface {p1}, Lo/bY$ActionBar;->e()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    .line 202
    invoke-interface {p1}, Lo/bY$ActionBar;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long v5, v5, v7

    div-long/2addr v5, v1

    long-to-int p1, v5

    .line 203
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v1, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setProgress(I)V

    .line 204
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->lt:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "percentage"

    invoke-virtual {v2, v5, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 190
    :pswitch_7
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    invoke-virtual {p1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->f:Lo/ImageSwitcher;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lw:I

    invoke-virtual {p1, v1}, Lo/ImageSwitcher;->setText(I)V

    :goto_1
    :pswitch_8
    if-eqz v5, :cond_1

    .line 235
    invoke-direct {p0, v0, v4}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 2

    .line 258
    sget-object v0, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->f:Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->d(Ljava/lang/String;)V

    return-void
.end method
