.class public Lo/Instance;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z

.field private static c:Lo/Learner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lo/Camera;Lo/CaptureRequest;Lo/SensorEventCallback;Z)Lo/Learner;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Camera;",
            "Lo/CaptureRequest;",
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;Z)",
            "Lo/Learner;"
        }
    .end annotation

    .line 27
    sget-boolean v0, Lo/Instance;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl"

    .line 30
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    .line 31
    const-class v4, Lo/Camera;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lo/CaptureRequest;

    aput-object v4, v3, v0

    const-class v4, Lo/SensorEventCallback;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    .line 43
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/Learner;

    sput-object p0, Lo/Instance;->c:Lo/Learner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 47
    :goto_0
    sget-object p0, Lo/Instance;->c:Lo/Learner;

    if-eqz p0, :cond_0

    .line 48
    sput-boolean v0, Lo/Instance;->a:Z

    .line 51
    :cond_0
    sget-object p0, Lo/Instance;->c:Lo/Learner;

    return-object p0
.end method
