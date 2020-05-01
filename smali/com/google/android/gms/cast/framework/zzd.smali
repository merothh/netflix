.class public final Lcom/google/android/gms/cast/framework/zzd;
.super Lcom/google/android/gms/cast/framework/zzo;


# instance fields
.field private final zzik:Lcom/google/android/gms/cast/framework/CastStateListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzd;->zzik:Lcom/google/android/gms/cast/framework/CastStateListener;

    return-void
.end method


# virtual methods
.method public final onCastStateChanged(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzd;->zzik:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/CastStateListener;->onCastStateChanged(I)V

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
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzd;->zzik:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
