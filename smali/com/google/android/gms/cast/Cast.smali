.class public final Lcom/google/android/gms/cast/Cast;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/Cast$CastApi;,
        Lcom/google/android/gms/cast/Cast$zza;,
        Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;,
        Lcom/google/android/gms/cast/Cast$CastOptions;,
        Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;,
        Lcom/google/android/gms/cast/Cast$Listener;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/cast/Cast$CastOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/cast/zzco;",
            "Lcom/google/android/gms/cast/Cast$CastOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CastApi:Lcom/google/android/gms/cast/Cast$CastApi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/zze;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/Cast;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/cast/Cast;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v2, Lcom/google/android/gms/internal/cast/zzdg;->zzxo:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "Cast.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    .line 4
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/cast/Cast$CastApi$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    return-void
.end method
