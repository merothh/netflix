.class Lo/LegacySensorManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LegacySensorManager;->a(Lo/MacAuthenticatedInputStream;)Lo/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/LegacySensorManager;

.field final synthetic c:Lo/MacAuthenticatedInputStream;


# direct methods
.method constructor <init>(Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lo/LegacySensorManager$5;->b:Lo/LegacySensorManager;

    iput-object p2, p0, Lo/LegacySensorManager$5;->c:Lo/MacAuthenticatedInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lo/LegacySensorManager$5;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Void;
    .locals 2

    .line 305
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#remove"

    .line 306
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lo/LegacySensorManager$5;->b:Lo/LegacySensorManager;

    invoke-static {v0}, Lo/LegacySensorManager;->c(Lo/LegacySensorManager;)Lo/BiometricPrompt;

    move-result-object v0

    iget-object v1, p0, Lo/LegacySensorManager$5;->c:Lo/MacAuthenticatedInputStream;

    invoke-virtual {v0, v1}, Lo/BiometricPrompt;->c(Lo/MacAuthenticatedInputStream;)Z

    .line 309
    iget-object v0, p0, Lo/LegacySensorManager$5;->b:Lo/LegacySensorManager;

    invoke-static {v0}, Lo/LegacySensorManager;->e(Lo/LegacySensorManager;)Lo/PackageStats;

    move-result-object v0

    iget-object v1, p0, Lo/LegacySensorManager$5;->c:Lo/MacAuthenticatedInputStream;

    invoke-interface {v0, v1}, Lo/PackageStats;->c(Lo/MacAuthenticatedInputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 311
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    throw v0
.end method
