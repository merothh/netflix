.class public Lo/SensorAdditionalInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SensorEventListener;


# static fields
.field private static e:Lo/SensorAdditionalInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lo/SensorAdditionalInfo;
    .locals 2

    const-class v0, Lo/SensorAdditionalInfo;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lo/SensorAdditionalInfo;->e:Lo/SensorAdditionalInfo;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lo/SensorAdditionalInfo;

    invoke-direct {v1}, Lo/SensorAdditionalInfo;-><init>()V

    sput-object v1, Lo/SensorAdditionalInfo;->e:Lo/SensorAdditionalInfo;

    .line 31
    :cond_0
    sget-object v1, Lo/SensorAdditionalInfo;->e:Lo/SensorAdditionalInfo;
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
.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;
    .locals 1

    .line 70
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lo/SensorAdditionalInfo;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;
    .locals 10

    .line 48
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lo/GeofenceHardwareCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lo/GeofenceHardwareCallback;->d()Lo/MacAuthenticatedInputStream;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v8, v7

    .line 58
    :goto_0
    new-instance v0, Lo/ConsumerIrManager;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/SensorAdditionalInfo;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v4

    .line 61
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v5

    .line 62
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lo/CryptoObject;

    move-result-object v6

    move-object v2, v0

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lo/ConsumerIrManager;-><init>(Ljava/lang/String;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/CameraDevice;Lo/CryptoObject;Lo/MacAuthenticatedInputStream;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected e(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public e(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;
    .locals 0

    .line 78
    new-instance p1, Lo/PackageInfoLite;

    invoke-virtual {p0, p2}, Lo/SensorAdditionalInfo;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/PackageInfoLite;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;
    .locals 9

    .line 36
    new-instance v8, Lo/ConsumerIrManager;

    .line 37
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/SensorAdditionalInfo;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lo/CameraDevice;

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lo/CryptoObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lo/ConsumerIrManager;-><init>(Ljava/lang/String;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/CameraDevice;Lo/CryptoObject;Lo/MacAuthenticatedInputStream;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v8
.end method
