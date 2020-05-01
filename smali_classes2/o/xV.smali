.class public Lo/xV;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/yf;

.field private d:Lo/yh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/yf;Lo/FragmentManagerNonConfig$Activity;ILo/yh;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    .line 35
    iput-object p2, p0, Lo/xV;->b:Lo/yf;

    .line 36
    iput-object p5, p0, Lo/xV;->d:Lo/yh;

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lo/xV;->a(Z)V

    .line 38
    new-instance p1, Lo/ContentProviderHolder;

    const/4 p2, 0x2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p1, p4, p2, p3}, Lo/ContentProviderHolder;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lo/xV;->d(Lo/FragmentController;)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lo/xV;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method protected c(Ljava/lang/Integer;)V
    .locals 8

    .line 55
    iget-object p1, p0, Lo/xV;->d:Lo/yh;

    invoke-virtual {p0}, Lo/xV;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/yh;->a(Ljava/lang/String;)Lo/yh$Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lo/xV;->b:Lo/yf;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lo/xV;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/yh$Activity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/yh$Activity;->c()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/yh$Activity;->e()J

    move-result-wide v5

    sget-object v7, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface/range {v0 .. v7}, Lo/yf;->a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Lo/LauncherActivity;->e(Lo/ExitTransitionCoordinator;)Lo/ContextImpl$StateListAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Request to cache response is not allowed because the response has no-cache param in header"

    const-string v0, "DownloadAndCacheRequest"

    .line 46
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lo/LauncherActivity;->e(Lo/ExitTransitionCoordinator;)Lo/ContextImpl$StateListAnimator;

    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lo/xV;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/afT;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
