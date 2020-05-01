.class final synthetic Lcom/google/android/gms/internal/cast/zzdp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzzb:Lcom/google/android/gms/internal/cast/zzdo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdp;->zzzb:Lcom/google/android/gms/internal/cast/zzdo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdp;->zzzb:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzdo;->zzdr()V

    return-void
.end method
