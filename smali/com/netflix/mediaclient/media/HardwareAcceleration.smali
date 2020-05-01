.class public final Lcom/netflix/mediaclient/media/HardwareAcceleration;
.super Ljava/lang/Object;
.source "HardwareAcceleration.java"


# static fields
.field private static final PREFERENCE_HARDWARE_ACCELERATION:Ljava/lang/String; = "nflx_hardwarer_acc"

.field private static final TAG:Ljava/lang/String; = "nf-hwac"

.field private static hardwareAccelerationForced:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static candHardwareAccelerationBeForced(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHardwareAccelerationApprovedApi()Z
    .locals 2

    .prologue
    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHardwareAccelerationApprovedDevice()Z
    .locals 2

    .prologue
    .line 142
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KFOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized shouldHardwareAccelerationBeForced(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 86
    const-class v1, Lcom/netflix/mediaclient/media/HardwareAcceleration;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 87
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Jelly Beans device, force hardware acceleration"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v0, 0x1

    .line 121
    :goto_0
    monitor-exit v1

    return v0

    .line 91
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/netflix/mediaclient/media/HardwareAcceleration;->candHardwareAccelerationBeForced(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const-string/jumbo v2, "nf-hwac"

    const-string/jumbo v3, "Device is runing preICS Android. Do not apply hardware acceleration or check for it!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/media/HardwareAcceleration;->isHardwareAccelerationApprovedDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Pre-approved device..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    .line 103
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/media/HardwareAcceleration;->isHardwareAccelerationApprovedApi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Pre-approved api device ..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    .line 108
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 109
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Find if we already had set flag that hardware acceleration should be enforced from preferences..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v0, "nflx_hardwarer_acc"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    .line 116
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 117
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "hardwareAccelerationForced == null. This should NOT happen!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    .line 121
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 112
    :cond_5
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Find if we have update for flag that hardware acceleration should be enforced from preferences..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string/jumbo v0, "nflx_hardwarer_acc"

    sget-object v2, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized update(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 52
    const-class v1, Lcom/netflix/mediaclient/media/HardwareAcceleration;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "nf-hwac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Force hardware acceleration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    if-nez p1, :cond_2

    .line 57
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Hardware acceleration is NOT enforced, ignore"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 61
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/netflix/mediaclient/media/HardwareAcceleration;->candHardwareAccelerationBeForced(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Device is runing preICS Android. Ignore!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :cond_3
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 67
    :cond_4
    sput-object p1, Lcom/netflix/mediaclient/media/HardwareAcceleration;->hardwareAccelerationForced:Ljava/lang/Boolean;

    .line 68
    const-string/jumbo v0, "nflx_hardwarer_acc"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 69
    const-string/jumbo v0, "nf-hwac"

    const-string/jumbo v2, "Forcing hardware acceleration on next start"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, "nf-hwac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No need to do anything. The same as existed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
