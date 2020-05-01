.class public Lo/CameraInfo;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lo/MarshalQueryableStreamConfiguration;Lo/TonemapCurve;Lo/CameraManager;)Lo/Camera;
    .locals 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 32
    new-instance p1, Lo/InstanceLearner;

    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->e()Lo/RequestQueue;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lo/InstanceLearner;-><init>(Lo/RequestQueue;Lo/CameraManager;)V

    return-object p1

    .line 33
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 34
    new-instance v0, Lo/CameraStatus;

    new-instance v1, Lo/GestureStroke;

    .line 35
    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->j()Lo/AssetFileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Lo/GestureStroke;-><init>(Lo/AssetFileDescriptor;)V

    invoke-direct {v0, v1, p1, p2}, Lo/CameraStatus;-><init>(Lo/GestureStroke;Lo/TonemapCurve;Lo/CameraManager;)V

    return-object v0

    .line 39
    :cond_1
    new-instance p0, Lo/GestureUtils;

    invoke-direct {p0}, Lo/GestureUtils;-><init>()V

    return-object p0
.end method
