.class public Lcom/google/android/gms/cast/framework/media/MediaNotificationService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;,
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;
    }
.end annotation


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdh;


# instance fields
.field private zzbu:Landroid/app/Notification;

.field private zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private zzls:Landroid/content/ComponentName;

.field private zzlt:Landroid/content/ComponentName;

.field private zzlu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzlv:[I

.field private zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

.field private zzlx:J

.field private zzly:Lcom/google/android/gms/internal/cast/zzx;

.field private zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzma:Landroid/content/res/Resources;

.field private zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

.field private zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

.field private zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

.field private zzme:Lcom/google/android/gms/cast/framework/CastContext;

.field private final zzmf:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 291
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "MediaNotificationService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlu:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzh;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmf:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    return-object p1
.end method

.method private final zza(Lo/OnGenericMotionListener$Activity;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 194
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v6, "com.google.android.gms.cast.framework.action.FORWARD"

    const-string v7, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const-string v8, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    const-string v9, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    const-string v10, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    const-string v11, "com.google.android.gms.cast.framework.action.REWIND"

    const/4 v12, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string v3, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-wide/16 v13, 0x7530

    const-wide/16 v15, 0x2710

    const/high16 v5, 0x8000000

    const-string v4, "googlecast-extra_skip_step_ms"

    const/16 v17, 0x0

    packed-switch v3, :pswitch_data_0

    .line 284
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v12

    const-string v2, "Action: %s is not a pre-defined action."

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 275
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 277
    invoke-static {v0, v12, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 278
    new-instance v3, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 279
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 280
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbx()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 281
    invoke-virtual {v3}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d()Lo/OnGenericMotionListener$StateListAnimator;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    return-void

    .line 255
    :pswitch_1
    iget-wide v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlx:J

    .line 256
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v6, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 260
    invoke-static {v0, v12, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 261
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewindDrawableResId()I

    move-result v5

    .line 262
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbu()I

    move-result v6

    cmp-long v7, v2, v15

    if-nez v7, :cond_1

    .line 264
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind10DrawableResId()I

    move-result v5

    .line 265
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbv()I

    move-result v6

    goto :goto_2

    :cond_1
    cmp-long v7, v2, v13

    if-nez v7, :cond_2

    .line 267
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind30DrawableResId()I

    move-result v5

    .line 268
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbw()I

    move-result v6

    .line 269
    :cond_2
    :goto_2
    new-instance v2, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 270
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3, v4}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 271
    invoke-virtual {v2}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d()Lo/OnGenericMotionListener$StateListAnimator;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    return-void

    .line 236
    :pswitch_2
    iget-wide v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlx:J

    .line 237
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    invoke-virtual {v7, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 241
    invoke-static {v0, v12, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 242
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForwardDrawableResId()I

    move-result v5

    .line 243
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbr()I

    move-result v6

    cmp-long v7, v2, v15

    if-nez v7, :cond_3

    .line 245
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward10DrawableResId()I

    move-result v5

    .line 246
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbs()I

    move-result v6

    goto :goto_3

    :cond_3
    cmp-long v7, v2, v13

    if-nez v7, :cond_4

    .line 248
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward30DrawableResId()I

    move-result v5

    .line 249
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbt()I

    move-result v6

    .line 250
    :cond_4
    :goto_3
    new-instance v2, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 251
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3, v4}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 252
    invoke-virtual {v2}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d()Lo/OnGenericMotionListener$StateListAnimator;

    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    return-void

    .line 224
    :pswitch_3
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmm:Z

    if-eqz v2, :cond_5

    .line 227
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    invoke-static {v0, v12, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    :cond_5
    move-object/from16 v2, v17

    .line 230
    new-instance v3, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 231
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 232
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbq()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 233
    invoke-virtual {v3}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d()Lo/OnGenericMotionListener$StateListAnimator;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    return-void

    .line 212
    :pswitch_4
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzml:Z

    if-eqz v2, :cond_6

    .line 215
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    invoke-static {v0, v12, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    :cond_6
    move-object/from16 v2, v17

    .line 218
    new-instance v3, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 219
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 220
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbp()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 221
    invoke-virtual {v3}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d()Lo/OnGenericMotionListener$StateListAnimator;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    return-void

    .line 195
    :pswitch_5
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v3, v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmj:Z

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 198
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v2

    .line 199
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result v4

    goto :goto_4

    .line 200
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v2

    .line 201
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbn()I

    move-result v4

    :goto_4
    if-eqz v3, :cond_8

    goto :goto_5

    .line 202
    :cond_8
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v2

    :goto_5
    if-eqz v3, :cond_9

    goto :goto_6

    .line 203
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbo()I

    move-result v4

    .line 204
    :goto_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    invoke-static {v0, v12, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 207
    new-instance v5, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 208
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v2, v4, v3}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 209
    invoke-virtual {v5}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d()Lo/OnGenericMotionListener$StateListAnimator;

    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final zzaz()V
    .locals 9

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmo:Landroid/graphics/Bitmap;

    .line 102
    :goto_0
    new-instance v2, Lo/OnGenericMotionListener$Activity;

    const-string v3, "cast_media_notification"

    invoke-direct {v2, p0, v3}, Lo/OnGenericMotionListener$Activity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v0}, Lo/OnGenericMotionListener$Activity;->c(Landroid/graphics/Bitmap;)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v2

    invoke-virtual {v0, v2}, Lo/OnGenericMotionListener$Activity;->c(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v2}, Lo/OnGenericMotionListener$Activity;->a(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmk:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 107
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Lo/OnGenericMotionListener$Activity;->e(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v4}, Lo/OnGenericMotionListener$Activity;->d(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v7}, Lo/OnGenericMotionListener$Activity;->b(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v4}, Lo/OnGenericMotionListener$Activity;->a(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    const-string v3, "targetActivity"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 118
    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v0, v1}, Lo/OnGenericMotionListener$Activity;->e(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    if-eqz v1, :cond_11

    .line 123
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "mActionsProvider != null"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/cast/zzdh;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/media/zzd;->getNotificationActions()Ljava/util/List;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/cast/framework/media/zzd;->getCompactViewActionIndices()[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    .line 133
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 136
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_5

    .line 137
    sget-object v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v5, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, " provides more than 5 actions."

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    goto :goto_4

    .line 134
    :cond_6
    :goto_2
    sget-object v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v5, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, " doesn\'t provide any action."

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_10

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v2, :cond_b

    .line 143
    array-length v5, v2

    if-nez v5, :cond_7

    goto :goto_7

    .line 148
    :cond_7
    array-length v5, v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_a

    aget v8, v2, v6

    if-ltz v8, :cond_9

    if-lt v8, v3, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 150
    :cond_9
    :goto_6
    sget-object v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v5, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    .line 151
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "provides a compact view action whose index is out of bounds."

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    const/4 v3, 0x1

    goto :goto_9

    .line 144
    :cond_b
    :goto_7
    sget-object v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const-class v5, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    .line 145
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, " doesn\'t provide any actions for compact view."

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 146
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_c

    goto/16 :goto_d

    .line 158
    :cond_c
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 159
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 160
    new-instance v5, Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;-><init>()V

    .line 161
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/media/NotificationAction$Builder;

    .line 162
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 166
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "com.google.android.gms.cast.framework.action.REWIND"

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v5, 0x1

    :goto_c
    if-eqz v5, :cond_f

    .line 170
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Lo/OnGenericMotionListener$Activity;Ljava/lang/String;)V

    goto :goto_a

    .line 171
    :cond_f
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    invoke-static {p0, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 174
    new-instance v6, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;

    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v8, v3, v5}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 176
    invoke-virtual {v6}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d()Lo/OnGenericMotionListener$StateListAnimator;

    move-result-object v3

    .line 177
    invoke-virtual {v0, v3}, Lo/OnGenericMotionListener$Activity;->a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;

    goto/16 :goto_a

    :cond_10
    :goto_d
    return-void

    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getNotificationActions"

    aput-object v3, v2, v7

    const-class v3, Lcom/google/android/gms/cast/framework/media/zzd;

    .line 129
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Unable to call %s on %s."

    .line 130
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 180
    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Lo/OnGenericMotionListener$Activity;Ljava/lang/String;)V

    goto :goto_e

    .line 183
    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlv:[I

    .line 184
    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_14

    .line 185
    new-instance v1, Lo/InstantiationException$ActionBar;

    invoke-direct {v1}, Lo/InstantiationException$ActionBar;-><init>()V

    .line 186
    invoke-virtual {v1, v2}, Lo/InstantiationException$ActionBar;->c([I)Lo/InstantiationException$ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmi:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 187
    invoke-virtual {v1, v2}, Lo/InstantiationException$ActionBar;->d(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lo/InstantiationException$ActionBar;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lo/OnGenericMotionListener$Activity;->d(Lo/OnGenericMotionListener$Application;)Lo/OnGenericMotionListener$Activity;

    .line 189
    :cond_14
    invoke-virtual {v0}, Lo/OnGenericMotionListener$Activity;->c()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbu:Landroid/app/Notification;

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->isAppVisible()Z

    move-result v0

    if-nez v0, :cond_15

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbu:Landroid/app/Notification;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->startForeground(ILandroid/app/Notification;)V

    return-void

    .line 192
    :cond_15
    invoke-virtual {p0, v4}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->stopForeground(Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)Landroid/app/Notification;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbu:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic zzba()Lcom/google/android/gms/internal/cast/zzdh;
    .locals 1

    .line 287
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzaz()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    .line 9
    new-instance v1, Landroid/content/ComponentName;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzls:Landroid/content/ComponentName;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Landroid/content/ComponentName;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    goto :goto_0

    .line 14
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzby()Lcom/google/android/gms/cast/framework/media/zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlw:Lcom/google/android/gms/cast/framework/media/zzd;

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlu:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v0

    .line 19
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlv:[I

    goto :goto_1

    .line 21
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlv:[I

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlx:J

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzma:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzll:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzbm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 25
    new-instance v1, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    .line 27
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzi;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->addAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmf:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 34
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    const-string v3, "cast_media_notification"

    const-string v4, "Cast"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlt:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unregistering trampoline BroadcastReceiver failed"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const-string v0, "notification"

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzme:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmb:Lcom/google/android/gms/cast/framework/AppVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->removeAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "extra_media_info"

    .line 42
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 45
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v6, "extra_remote_media_client_player_state"

    .line 49
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v7, "extra_cast_device"

    .line 52
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/CastDevice;

    if-nez v7, :cond_3

    goto/16 :goto_3

    .line 55
    :cond_3
    new-instance v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    .line 56
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v10

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    .line 57
    invoke-virtual {v5, v3}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v12

    const-string v3, "extra_media_session_token"

    .line 59
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v3, "extra_can_skip_next"

    .line 60
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    const-string v3, "extra_can_skip_prev"

    .line 61
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object v8, v15

    move-object v6, v15

    move v15, v3

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    const-string v3, "extra_media_notification_force_update"

    .line 63
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 64
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    if-eqz v1, :cond_5

    .line 65
    iget-boolean v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmj:Z

    iget-boolean v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmj:Z

    if-ne v3, v7, :cond_5

    iget v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    iget v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    if-ne v3, v7, :cond_5

    iget-object v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    .line 66
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmk:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmk:Ljava/lang/String;

    .line 67
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzml:Z

    iget-boolean v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzml:Z

    if-ne v3, v7, :cond_5

    iget-boolean v3, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmm:Z

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzmm:Z

    if-ne v3, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    .line 69
    :cond_6
    iput-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmc:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzaz()V

    .line 71
    :cond_7
    new-instance v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    .line 73
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v3, :cond_8

    .line 74
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v3

    goto :goto_2

    .line 75
    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 76
    :goto_2
    invoke-direct {v1, v3}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 77
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzmd:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    if-eqz v3, :cond_a

    .line 78
    iget-object v5, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmn:Landroid/net/Uri;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmn:Landroid/net/Uri;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    :cond_a
    if-nez v4, :cond_b

    .line 80
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    new-instance v4, Lcom/google/android/gms/cast/framework/media/zzj;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/cast/framework/media/zzj;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 81
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzmn:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    :cond_b
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_c

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->stopForeground(Z)V

    :cond_c
    return v2
.end method
