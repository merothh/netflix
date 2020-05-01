.class public abstract Lo/LocalActivityManager;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Lo/FragmentManagerNonConfig$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FragmentManagerNonConfig$StateListAnimator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    .line 40
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/LocalActivityManager;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lo/FragmentManagerNonConfig$StateListAnimator;Lo/FragmentManagerNonConfig$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/FragmentManagerNonConfig$StateListAnimator<",
            "TT;>;",
            "Lo/FragmentManagerNonConfig$Activity;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V

    .line 59
    iput-object p4, p0, Lo/LocalActivityManager;->d:Lo/FragmentManagerNonConfig$StateListAnimator;

    .line 60
    iput-object p3, p0, Lo/LocalActivityManager;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/LocalActivityManager;->d:Lo/FragmentManagerNonConfig$StateListAnimator;

    invoke-interface {v0, p1}, Lo/FragmentManagerNonConfig$StateListAnimator;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lo/LocalActivityManager;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()[B
    .locals 5

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 95
    :try_start_0
    iget-object v2, p0, Lo/LocalActivityManager;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lo/LocalActivityManager;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 97
    iget-object v4, p0, Lo/LocalActivityManager;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, v2}, Lo/FragmentContainer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lo/LocalActivityManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method public y()[B
    .locals 1

    .line 84
    invoke-virtual {p0}, Lo/LocalActivityManager;->v()[B

    move-result-object v0

    return-object v0
.end method
