.class public Lo/Ik;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ik$Application;
    }
.end annotation


# instance fields
.field private c:Z

.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lo/Ik$1;->c:[I

    invoke-static {p1}, Lo/cI;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "https://www.netflix.com"

    return-object p1

    :cond_0
    const-string p1, "https://develop.staging.web.netflix.com"

    return-object p1

    :cond_1
    const-string p1, "https://develop.test.web.netflix.com"

    return-object p1
.end method

.method static synthetic a(Lo/Ik;Lo/Ik$Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Ik;->b(Lo/Ik$Application;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    :try_start_0
    const-string v0, "nftoken"

    const-string v1, "UTF-8"

    .line 165
    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "should not happen"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lo/Ik$Application;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/In;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/In;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    .line 102
    new-instance v1, Lo/Ik$4;

    invoke-direct {v1, p0, p1}, Lo/Ik$4;-><init>(Lo/Ik;Lo/Ik$Application;)V

    invoke-virtual {v0, v1}, Lo/In;->e(Lo/WebChromeClient$Application;)V

    return-void
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "youraccount"

    .line 153
    invoke-direct {p0, p1, v0}, Lo/Ik;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lo/Ik;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, v0}, Lo/Ik;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lo/Ik;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lo/Ik$Application;)V
    .locals 3

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lo/Ik;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "AccountHandler"

    const-string v2, "Account handler already executed because of timeout. Do nothing..."

    .line 77
    invoke-static {v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_0
    iput-boolean v1, p0, Lo/Ik;->c:Z

    .line 82
    :goto_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    invoke-static {p3, p1}, Lo/Ik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance p2, Lo/adM;

    iget-object p3, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p2, p3, p1}, Lo/adM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p4, :cond_2

    .line 92
    invoke-interface {p4, v1}, Lo/Ik$Application;->e(Z)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object p1, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lo/Ij;

    invoke-direct {p2, p0, p4}, Lo/Ij;-><init>(Lo/Ik;Lo/Ik$Application;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/Ik;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lo/Ik$Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/Ik$Application;)V
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, v0}, Lo/Ik;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lo/Ik;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lo/Ik$Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Z
    .locals 1

    const-string v0, "youraccount"

    .line 212
    invoke-virtual {p0, v0}, Lo/Ik;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p1, v0}, Lo/Ik;->e(Ljava/lang/String;Lo/Ik$Application;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Lo/Ik$Application;)Z
    .locals 4

    const-string v0, "AccountHandler"

    const-string v1, "Get autologin token..."

    .line 178
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "userAgent is not available!"

    .line 187
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 191
    :cond_1
    iget-object v0, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, v0, p1}, Lo/Ik;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lo/Ik;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 195
    invoke-static {v1}, Lo/BatteryProperties;->a(Lo/UnicodeScript;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/Ik$2;

    const-string v2, "createAutoLoginToken"

    invoke-direct {v1, p0, v2, p1, p2}, Lo/Ik$2;-><init>(Lo/Ik;Ljava/lang/String;Ljava/lang/String;Lo/Ik$Application;)V

    .line 196
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "On Account clicked -> NetflixActivity is null"

    .line 181
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
