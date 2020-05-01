.class public final Lo/app;
.super Lo/aon;
.source ""


# static fields
.field public static final b:Lo/app;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/app;

    invoke-direct {v0}, Lo/app;-><init>()V

    sput-object v0, Lo/app;->b:Lo/app;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/aon;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/alj;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lo/alj;Ljava/lang/Runnable;)V
    .locals 0

    .line 18
    sget-object p2, Lo/apq;->c:Lo/apq$StateListAnimator;

    check-cast p2, Lo/alj$Application;

    invoke-interface {p1, p2}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p1

    check-cast p1, Lo/apq;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p1, Lo/apq;->d:Z

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Unconfined"

    return-object v0
.end method
