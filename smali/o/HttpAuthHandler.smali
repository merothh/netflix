.class public Lo/HttpAuthHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lo/HttpAuthHandler;->d(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic d(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "nf_uiservices"

    const-string v1, "launchSeePlanOptions::timeout"

    .line 188
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://www.netflix.com/changeplan"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-static {p1}, Lo/JL;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 79
    invoke-static {p1, p2}, Lo/ConsoleMessage;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 181
    invoke-static {p1, p2, p3}, Lo/aeV;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 255
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 124
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/acR;->d(ZZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 103
    invoke-static {}, Lo/acR;->c()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    const/4 p2, 0x0

    .line 176
    invoke-static {p1, p2}, Lo/Jx;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .line 134
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/abD$StateListAnimator;->h(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 0

    .line 119
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j()V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 0

    .line 129
    invoke-static {p1, p2}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V
    .locals 7

    .line 187
    new-instance v3, Lo/GeolocationPermissions;

    invoke-direct {v3, p1, p4}, Lo/GeolocationPermissions;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x2710

    .line 195
    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    new-instance v6, Lo/HttpAuthHandler$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/HttpAuthHandler$2;-><init>(Lo/HttpAuthHandler;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Ljava/lang/Runnable;)V

    const-string p1, "nf_uiservices"

    const-string p2, "launchSeePlanOptions::create autologin token..."

    .line 217
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, 0x36ee80

    .line 218
    invoke-interface {p3, p1, p2, v6}, Lcom/netflix/mediaclient/service/user/UserAgent;->c(JLo/ym;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 144
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 149
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/RestrictedProfilesReceiver;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public d()Lo/cC;
    .locals 1

    .line 109
    sget-object v0, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;->e:Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)V
    .locals 1

    .line 91
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {v0, p1, p2}, Lo/Zg;->a(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public d(Ljava/lang/Runnable;Lio/reactivex/subjects/PublishSubject;)V
    .locals 1

    .line 236
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->s()Lio/reactivex/Observable;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lo/HttpAuthHandler$4;

    invoke-direct {v0, p0, p1}, Lo/HttpAuthHandler$4;-><init>(Lo/HttpAuthHandler;Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()Lo/hT;
    .locals 1

    .line 154
    sget-object v0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->d:Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 3

    .line 96
    invoke-static {p1}, Lo/acV;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/netflix/cl/model/AppView;->contactUs:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Lo/BC;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 224
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    .line 225
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {}, Lo/adq;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aE:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public i(Landroid/content/Context;)Lo/ahG;
    .locals 1

    .line 171
    new-instance v0, Lo/FY;

    invoke-direct {v0, p1}, Lo/FY;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 265
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 267
    invoke-static {v0}, Lo/adR;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v1, v0}, Lo/abD$StateListAnimator;->h(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    const-class v1, Lo/IE;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/IE;

    invoke-interface {v1, v0}, Lo/IE;->a(Ljava/util/Locale;)Z

    return-void
.end method

.method public j()Ljava/lang/Class;
    .locals 1

    .line 250
    const-class v0, Lo/bM;

    return-object v0
.end method
