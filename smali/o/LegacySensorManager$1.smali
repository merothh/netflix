.class Lo/LegacySensorManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LegacySensorManager;->d(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/LegacyFaceDetectMapper;

.field final synthetic b:Lo/LegacySensorManager;

.field final synthetic c:Lo/MacAuthenticatedInputStream;


# direct methods
.method constructor <init>(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lo/LegacySensorManager$1;->b:Lo/LegacySensorManager;

    iput-object p2, p0, Lo/LegacySensorManager$1;->c:Lo/MacAuthenticatedInputStream;

    iput-object p3, p0, Lo/LegacySensorManager$1;->a:Lo/LegacyFaceDetectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 266
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#putAsync"

    .line 267
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lo/LegacySensorManager$1;->b:Lo/LegacySensorManager;

    iget-object v1, p0, Lo/LegacySensorManager$1;->c:Lo/MacAuthenticatedInputStream;

    iget-object v2, p0, Lo/LegacySensorManager$1;->a:Lo/LegacyFaceDetectMapper;

    invoke-static {v0, v1, v2}, Lo/LegacySensorManager;->e(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v0, p0, Lo/LegacySensorManager$1;->b:Lo/LegacySensorManager;

    invoke-static {v0}, Lo/LegacySensorManager;->c(Lo/LegacySensorManager;)Lo/BiometricPrompt;

    move-result-object v0

    iget-object v1, p0, Lo/LegacySensorManager$1;->c:Lo/MacAuthenticatedInputStream;

    iget-object v2, p0, Lo/LegacySensorManager$1;->a:Lo/LegacyFaceDetectMapper;

    invoke-virtual {v0, v1, v2}, Lo/BiometricPrompt;->c(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)Z

    .line 272
    iget-object v0, p0, Lo/LegacySensorManager$1;->a:Lo/LegacyFaceDetectMapper;

    invoke-static {v0}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 273
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 271
    iget-object v1, p0, Lo/LegacySensorManager$1;->b:Lo/LegacySensorManager;

    invoke-static {v1}, Lo/LegacySensorManager;->c(Lo/LegacySensorManager;)Lo/BiometricPrompt;

    move-result-object v1

    iget-object v2, p0, Lo/LegacySensorManager$1;->c:Lo/MacAuthenticatedInputStream;

    iget-object v3, p0, Lo/LegacySensorManager$1;->a:Lo/LegacyFaceDetectMapper;

    invoke-virtual {v1, v2, v3}, Lo/BiometricPrompt;->c(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)Z

    .line 272
    iget-object v1, p0, Lo/LegacySensorManager$1;->a:Lo/LegacyFaceDetectMapper;

    invoke-static {v1}, Lo/LegacyFaceDetectMapper;->a(Lo/LegacyFaceDetectMapper;)V

    .line 273
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw v0
.end method
