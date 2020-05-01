.class public Lo/xX;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "[B>;"
    }
.end annotation


# instance fields
.field private b:Lcom/android/volley/Request$Priority;

.field private e:Lo/yf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/yf;Lo/FragmentManagerNonConfig$Activity;ILcom/android/volley/Request$Priority;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    .line 33
    iput-object p2, p0, Lo/xX;->e:Lo/yf;

    .line 34
    iput-object p5, p0, Lo/xX;->b:Lcom/android/volley/Request$Priority;

    .line 35
    invoke-virtual {p0, v0}, Lo/xX;->a(Z)V

    .line 36
    new-instance p1, Lo/ContentProviderHolder;

    const/4 p2, 0x2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p1, p4, p2, p3}, Lo/ContentProviderHolder;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lo/xX;->d(Lo/FragmentController;)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/xX;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lo/xX;->e([B)V

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
            "[B>;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lo/xX;->k()Ljava/lang/String;

    .line 53
    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method protected e([B)V
    .locals 3

    .line 58
    iget-object v0, p0, Lo/xX;->e:Lo/yf;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lo/xX;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, p1, v2}, Lo/yf;->c(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
