.class public final Lcom/google/android/gms/cast/framework/zza;
.super Lcom/google/android/gms/cast/framework/zzg;


# instance fields
.field private final zzhd:Lcom/google/android/gms/cast/framework/AppVisibilityListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zza;->zzhd:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    return-void
.end method


# virtual methods
.method public final onAppEnteredBackground()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zza;->zzhd:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/AppVisibilityListener;->onAppEnteredBackground()V

    return-void
.end method

.method public final onAppEnteredForeground()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zza;->zzhd:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/AppVisibilityListener;->onAppEnteredForeground()V

    return-void
.end method

.method public final zzm()I
    .locals 1

    const v0, 0xbdfcc1

    return v0
.end method

.method public final zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zza;->zzhd:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
