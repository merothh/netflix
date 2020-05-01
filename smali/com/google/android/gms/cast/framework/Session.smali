.class public abstract Lcom/google/android/gms/cast/framework/Session;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/Session$zza;
    }
.end annotation


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdh;


# instance fields
.field private final zziw:Lcom/google/android/gms/cast/framework/zzt;

.field private final zzix:Lcom/google/android/gms/cast/framework/Session$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "Session"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/Session;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/framework/Session$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/Session$zza;-><init>(Lcom/google/android/gms/cast/framework/Session;Lcom/google/android/gms/cast/framework/zzad;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zzix:Lcom/google/android/gms/cast/framework/Session$zza;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zzix:Lcom/google/android/gms/cast/framework/Session$zza;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/cast/zze;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/zzab;)Lcom/google/android/gms/cast/framework/zzt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/Session;->zziw:Lcom/google/android/gms/cast/framework/zzt;

    return-void
.end method


# virtual methods
.method protected abstract end(Z)V
.end method

.method public getSessionRemainingTimeMs()J
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isConnected()Z
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zziw:Lcom/google/android/gms/cast/framework/zzt;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzt;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 26
    sget-object v1, Lcom/google/android/gms/cast/framework/Session;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "isConnected"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzt;

    .line 27
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "Unable to call %s on %s."

    .line 28
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public isResuming()Z
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zziw:Lcom/google/android/gms/cast/framework/zzt;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzt;->isResuming()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 54
    sget-object v1, Lcom/google/android/gms/cast/framework/Session;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "isResuming"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzt;

    .line 55
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "Unable to call %s on %s."

    .line 56
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method protected final notifyFailedToResumeSession(I)V
    .locals 4

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zziw:Lcom/google/android/gms/cast/framework/zzt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/zzt;->notifyFailedToResumeSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    sget-object v0, Lcom/google/android/gms/cast/framework/Session;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "notifyFailedToResumeSession"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/zzt;

    .line 97
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 98
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected final notifyFailedToStartSession(I)V
    .locals 4

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zziw:Lcom/google/android/gms/cast/framework/zzt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/zzt;->notifyFailedToStartSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    sget-object v0, Lcom/google/android/gms/cast/framework/Session;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "notifyFailedToStartSession"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/zzt;

    .line 76
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 77
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected final notifySessionEnded(I)V
    .locals 4

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zziw:Lcom/google/android/gms/cast/framework/zzt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/zzt;->notifySessionEnded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    sget-object v0, Lcom/google/android/gms/cast/framework/Session;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "notifySessionEnded"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/zzt;

    .line 83
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 84
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResuming(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStarting(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected abstract resume(Landroid/os/Bundle;)V
.end method

.method protected abstract start(Landroid/os/Bundle;)V
.end method

.method public final zzz()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 5

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session;->zziw:Lcom/google/android/gms/cast/framework/zzt;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzt;->zzz()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/google/android/gms/cast/framework/Session;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getWrappedObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/gms/cast/framework/zzt;

    .line 110
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 111
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
