.class final Lo/SensorEventListener2$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CameraCaptureSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SensorEventListener2;->e(Lo/UserInfo;Lo/RuntimePermissionPresenter;)Lo/SensorEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/CameraCaptureSession<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/common/memory/PooledByteBuffer;)I
    .locals 0

    .line 25
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result p1

    return p1
.end method

.method public synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-virtual {p0, p1}, Lo/SensorEventListener2$4;->a(Lcom/facebook/common/memory/PooledByteBuffer;)I

    move-result p1

    return p1
.end method
