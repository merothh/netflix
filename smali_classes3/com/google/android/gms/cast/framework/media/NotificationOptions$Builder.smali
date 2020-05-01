.class public final Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzlx:J

.field private zznr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzns:[I

.field private zznt:Ljava/lang/String;

.field private zznu:I

.field private zznv:I

.field private zznw:I

.field private zznx:I

.field private zzny:I

.field private zznz:I

.field private zzoa:I

.field private zzob:I

.field private zzoc:I

.field private zzod:I

.field private zzoe:I

.field private zzof:I

.field private zzog:I

.field private zzow:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbz()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznr:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzca()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzns:[I

    .line 4
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_small_icon:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznu:I

    .line 5
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_stop_live_stream:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznv:I

    .line 6
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_pause:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznw:I

    .line 7
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_play:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznx:I

    .line 8
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_skip_next:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzny:I

    .line 9
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_skip_prev:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznz:I

    .line 10
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_forward:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzoa:I

    .line 11
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_forward10:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzob:I

    .line 12
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_forward30:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzoc:I

    .line 13
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_rewind:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzod:I

    .line 14
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_rewind10:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzoe:I

    .line 15
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_rewind30:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzof:I

    .line 16
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->cast_ic_notification_disconnect:I

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzog:I

    const-wide/16 v0, 0x2710

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzlx:J

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 37

    move-object/from16 v0, p0

    .line 77
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzow:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;->zzbl()Lcom/google/android/gms/cast/framework/media/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/media/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    move-object/from16 v35, v1

    .line 80
    new-instance v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-object v2, v1

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznr:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzns:[I

    iget-wide v5, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzlx:J

    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznt:Ljava/lang/String;

    iget v8, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznu:I

    iget v9, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznv:I

    iget v10, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznw:I

    iget v11, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznx:I

    iget v12, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzny:I

    iget v13, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zznz:I

    iget v14, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzoa:I

    iget v15, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzob:I

    move-object/from16 v36, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzoc:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzod:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzoe:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzof:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;->zzog:I

    move/from16 v20, v1

    sget v21, Lcom/google/android/gms/cast/framework/R$dimen;->cast_notification_image_size:I

    sget v22, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    sget v23, Lcom/google/android/gms/cast/framework/R$string;->cast_stop_live_stream:I

    sget v24, Lcom/google/android/gms/cast/framework/R$string;->cast_pause:I

    sget v25, Lcom/google/android/gms/cast/framework/R$string;->cast_play:I

    sget v26, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_next:I

    sget v27, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_prev:I

    sget v28, Lcom/google/android/gms/cast/framework/R$string;->cast_forward:I

    sget v29, Lcom/google/android/gms/cast/framework/R$string;->cast_forward_10:I

    sget v30, Lcom/google/android/gms/cast/framework/R$string;->cast_forward_30:I

    sget v31, Lcom/google/android/gms/cast/framework/R$string;->cast_rewind:I

    sget v32, Lcom/google/android/gms/cast/framework/R$string;->cast_rewind_10:I

    sget v33, Lcom/google/android/gms/cast/framework/R$string;->cast_rewind_30:I

    sget v34, Lcom/google/android/gms/cast/framework/R$string;->cast_disconnect:I

    invoke-direct/range {v2 .. v35}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;-><init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;)V

    return-object v36
.end method
