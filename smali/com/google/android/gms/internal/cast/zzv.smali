.class public final Lcom/google/android/gms/internal/cast/zzv;
.super Lo/Object$Application;


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdh;


# instance fields
.field private final zzjs:Lcom/google/android/gms/internal/cast/zzl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "MediaRouterCallback"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzv;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/Object$Application;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzl;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjs:Lcom/google/android/gms/internal/cast/zzl;

    return-void
.end method


# virtual methods
.method public final onRouteAdded(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 3

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjs:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lo/Object$LoaderManager;->k()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zza(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteAdded"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/internal/cast/zzl;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 23
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteChanged(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 3

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjs:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lo/Object$LoaderManager;->k()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zzb(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/internal/cast/zzl;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 30
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteRemoved(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 3

    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjs:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lo/Object$LoaderManager;->k()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zzc(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteRemoved"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/internal/cast/zzl;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 37
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteSelected(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 3

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjs:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lo/Object$LoaderManager;->k()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzl;->zzd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteSelected"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/internal/cast/zzl;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 9
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteUnselected(Lo/Object;Lo/Object$LoaderManager;I)V
    .locals 2

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzv;->zzjs:Lcom/google/android/gms/internal/cast/zzl;

    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lo/Object$LoaderManager;->k()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/gms/internal/cast/zzl;->zza(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/cast/zzv;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onRouteUnselected"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/google/android/gms/internal/cast/zzl;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "Unable to call %s on %s."

    .line 16
    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
