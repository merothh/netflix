.class public Lcom/netflix/mediaclient/NetflixApp;
.super Lo/ValueFinder;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/String;

.field public netflixFlipper:Lo/agc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lo/ValueFinder;-><init>()V

    const-string v0, "NetflixApplication"

    .line 25
    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApp;->h:Ljava/lang/String;

    return-void
.end method

.method private final R()V
    .locals 2

    .line 52
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    sget-object v1, Lo/u;->b:Lo/u$ActionBar;

    invoke-virtual {v1}, Lo/u$ActionBar;->e()Lo/alA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Og$StateListAnimator;->e(Lo/alA;)V

    .line 55
    sget-object v0, Lo/MW;->c:Lo/MW$StateListAnimator;

    invoke-virtual {v0}, Lo/MW$StateListAnimator;->c()V

    .line 58
    sget-object v0, Lo/GO;->b:Lo/GO$ActionBar;

    invoke-virtual {v0}, Lo/GO$ActionBar;->a()V

    .line 61
    sget-object v0, Lo/Ze;->b:Lo/Ze$Activity;

    invoke-virtual {v0}, Lo/Ze$Activity;->b()Lo/Ze;

    move-result-object v0

    invoke-interface {v0}, Lo/Ze;->a()V

    .line 64
    sget-object v0, Lo/Ud;->d:Lo/Ud$Application;

    invoke-virtual {v0}, Lo/Ud$Application;->a()V

    .line 67
    sget-object v0, Lo/Cs;->d:Lo/Cs$TaskDescription;

    invoke-virtual {v0}, Lo/Cs$TaskDescription;->b()V

    .line 70
    sget-object v0, Lo/Ns;->c:Lo/Ns$Activity;

    invoke-virtual {v0}, Lo/Ns$Activity;->d()V

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApp;->p()V

    .line 76
    sget-object v0, Lo/ZC;->d:Lo/ZC$TaskDescription;

    invoke-virtual {v0}, Lo/ZC$TaskDescription;->d()V

    .line 79
    sget-object v0, Lo/aay;->a:Lo/aay$ActionBar;

    invoke-virtual {v0}, Lo/aay$ActionBar;->a()V

    .line 82
    sget-object v0, Lo/IB;->d:Lo/IB;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/IB;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "buildData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Lo/ValueFinder;->c(Ljava/util/Properties;)V

    .line 95
    check-cast p1, Ljava/util/Map;

    const-string v0, "code"

    const-string v1, "34837"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    const-string v1, "7.54.2 build 38 34837"

    .line 96
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lo/jE;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lo/ValueFinder;->c(Lo/jE;)V

    if-eqz p1, :cond_0

    const v0, 0x8815

    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-interface {p1, v1, v0}, Lo/jE;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApp;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-super {p0}, Lo/ValueFinder;->onCreate()V

    return-void

    .line 38
    :cond_0
    invoke-super {p0}, Lo/ValueFinder;->onCreate()V

    const/4 v0, 0x0

    const/16 v1, 0x148

    const/16 v2, 0x19

    .line 39
    :try_start_0
    invoke-static {v0, v1, v2}, Lo/NetworkTemplate;->c(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApp;->R()V

    .line 43
    sget-object v0, Lo/IB;->d:Lo/IB;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/IB;->a(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw v0
.end method

.method protected p()V
    .locals 0

    return-void
.end method
