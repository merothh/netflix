.class final Lcom/google/android/gms/cast/framework/media/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzy;


# instance fields
.field private final synthetic zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

.field private final synthetic zzmh:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzj;->zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzj;->zzmh:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzj;->zzmh:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmo:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzj;->zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzj;->zzmg:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzc(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    return-void
.end method
