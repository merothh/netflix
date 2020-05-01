.class public Lo/BiometricAuthenticator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SerialPort;


# static fields
.field private static d:Lo/BiometricAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized i()Lo/BiometricAuthenticator;
    .locals 2

    const-class v0, Lo/BiometricAuthenticator;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lo/BiometricAuthenticator;->d:Lo/BiometricAuthenticator;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lo/BiometricAuthenticator;

    invoke-direct {v1}, Lo/BiometricAuthenticator;-><init>()V

    sput-object v1, Lo/BiometricAuthenticator;->d:Lo/BiometricAuthenticator;

    .line 25
    :cond_0
    sget-object v1, Lo/BiometricAuthenticator;->d:Lo/BiometricAuthenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lo/MacAuthenticatedInputStream;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lo/MacAuthenticatedInputStream;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(Lo/MacAuthenticatedInputStream;)V
    .locals 0

    return-void
.end method

.method public d(Lo/SensorEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Lo/MacAuthenticatedInputStream;)V
    .locals 0

    return-void
.end method

.method public e(Lo/SensorEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
