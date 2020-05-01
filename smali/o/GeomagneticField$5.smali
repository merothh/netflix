.class final Lo/GeomagneticField$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CameraCaptureSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GeomagneticField;->b(Lo/UserInfo;Lo/RuntimePermissionPresenter;Lo/SensorEventCallback$Application;)Lo/SensorEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/CameraCaptureSession<",
        "Lo/LegacyRequestMapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lo/LegacyRequestMapper;

    invoke-virtual {p0, p1}, Lo/GeomagneticField$5;->d(Lo/LegacyRequestMapper;)I

    move-result p1

    return p1
.end method

.method public d(Lo/LegacyRequestMapper;)I
    .locals 0

    .line 35
    invoke-virtual {p1}, Lo/LegacyRequestMapper;->c()I

    move-result p1

    return p1
.end method
