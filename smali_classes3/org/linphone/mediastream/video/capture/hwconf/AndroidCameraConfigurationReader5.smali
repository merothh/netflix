.class Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfigurationReader5;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static probeCameras()[Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;
    .locals 7

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 40
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 43
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTab()Z

    move-result v2

    const/16 v4, 0x5a

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Hack Galaxy S : has one or more cameras"

    aput-object v6, v2, v5

    .line 44
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->isGalaxySOrTabWithFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Hack Galaxy S : HAS a front camera with id=2"

    aput-object v6, v2, v5

    .line 46
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 47
    new-instance v2, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    const/4 v6, 0x2

    invoke-direct {v2, v6, v1, v4, v3}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Hack Galaxy S : NO front camera"

    aput-object v6, v2, v5

    .line 49
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Hack Galaxy S : HAS a rear camera with id=1"

    aput-object v6, v2, v5

    .line 51
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 52
    new-instance v2, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    invoke-direct {v2, v1, v5, v4, v3}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_1
    new-instance v2, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    invoke-direct {v2, v5, v5, v4, v3}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->hasTwoCamerasRear0Front1()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Hack SPHD700 has 2 cameras a rear with id=0 and a front with id=1"

    aput-object v6, v2, v5

    .line 57
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 58
    new-instance v2, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    invoke-direct {v2, v1, v1, v4, v3}, Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;-><init>(IZILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/mediastream/video/capture/hwconf/AndroidCameraConfiguration$AndroidCamera;

    return-object v0
.end method
