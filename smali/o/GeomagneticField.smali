.class public Lo/GeomagneticField;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lo/UserInfo;Lo/RuntimePermissionPresenter;Lo/SensorEventCallback$Application;)Lo/SensorEventCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "Lo/SystemSensorManager;",
            ">;",
            "Lo/RuntimePermissionPresenter;",
            "Lo/SensorEventCallback$Application;",
            ")",
            "Lo/SensorEventCallback<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lo/GeomagneticField$5;

    invoke-direct {v0}, Lo/GeomagneticField$5;-><init>()V

    .line 39
    new-instance v1, Lo/SensorEventCallback;

    invoke-direct {v1, v0, p2, p0}, Lo/SensorEventCallback;-><init>(Lo/CameraCaptureSession;Lo/SensorEventCallback$Application;Lo/UserInfo;)V

    .line 42
    invoke-interface {p1, v1}, Lo/RuntimePermissionPresenter;->d(Lo/SplitAssetDependencyLoader;)V

    return-object v1
.end method
