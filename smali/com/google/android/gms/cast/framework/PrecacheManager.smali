.class public Lcom/google/android/gms/cast/framework/PrecacheManager;
.super Ljava/lang/Object;


# instance fields
.field private final zzbe:Lcom/google/android/gms/internal/cast/zzdh;

.field private final zzhj:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zziu:Lcom/google/android/gms/internal/cast/zzci;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzci;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "PrecacheManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzhj:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zziu:Lcom/google/android/gms/internal/cast/zzci;

    return-void
.end method
