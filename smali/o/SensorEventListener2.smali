.class public Lo/SensorEventListener2;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Lo/UserInfo;Lo/RuntimePermissionPresenter;)Lo/SensorEventCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;",
            "Lo/RuntimePermissionPresenter;",
            ")",
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lo/SensorEventListener2$4;

    invoke-direct {v0}, Lo/SensorEventListener2$4;-><init>()V

    .line 29
    new-instance v1, Lo/TriggerEvent;

    invoke-direct {v1}, Lo/TriggerEvent;-><init>()V

    .line 31
    new-instance v2, Lo/SensorEventCallback;

    invoke-direct {v2, v0, v1, p0}, Lo/SensorEventCallback;-><init>(Lo/CameraCaptureSession;Lo/SensorEventCallback$Application;Lo/UserInfo;)V

    .line 34
    invoke-interface {p1, v2}, Lo/RuntimePermissionPresenter;->d(Lo/SplitAssetDependencyLoader;)V

    return-object v2
.end method
