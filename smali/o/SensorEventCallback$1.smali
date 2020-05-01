.class Lo/SensorEventCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CameraCaptureSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SensorEventCallback;->c(Lo/CameraCaptureSession;)Lo/CameraCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/CameraCaptureSession<",
        "Lo/SensorEventCallback$ActionBar<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/CameraCaptureSession;

.field final synthetic b:Lo/SensorEventCallback;


# direct methods
.method constructor <init>(Lo/SensorEventCallback;Lo/CameraCaptureSession;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/SensorEventCallback$1;->b:Lo/SensorEventCallback;

    iput-object p2, p0, Lo/SensorEventCallback$1;->a:Lo/CameraCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 135
    check-cast p1, Lo/SensorEventCallback$ActionBar;

    invoke-virtual {p0, p1}, Lo/SensorEventCallback$1;->e(Lo/SensorEventCallback$ActionBar;)I

    move-result p1

    return p1
.end method

.method public e(Lo/SensorEventCallback$ActionBar;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SensorEventCallback$ActionBar<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lo/SensorEventCallback$1;->a:Lo/CameraCaptureSession;

    iget-object p1, p1, Lo/SensorEventCallback$ActionBar;->c:Lo/CompatibilityInfo;

    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/CameraCaptureSession;->d(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
