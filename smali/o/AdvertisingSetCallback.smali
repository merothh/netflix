.class public Lo/AdvertisingSetCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AdvertisingSetCallback$Application;,
        Lo/AdvertisingSetCallback$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Ljava/nio/ByteBuffer;",
        "Lo/AdvertisingSetParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/AdvertisingSetCallback$StateListAnimator;

.field private static final b:Lo/AdvertisingSetCallback$Application;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/AdvertisingSetCallback$Application;

.field private final e:Landroid/content/Context;

.field private final f:Lo/AdvertisingSetCallback$StateListAnimator;

.field private final h:Lo/BluetoothLeAdvertiser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lo/AdvertisingSetCallback$StateListAnimator;

    invoke-direct {v0}, Lo/AdvertisingSetCallback$StateListAnimator;-><init>()V

    sput-object v0, Lo/AdvertisingSetCallback;->a:Lo/AdvertisingSetCallback$StateListAnimator;

    .line 38
    new-instance v0, Lo/AdvertisingSetCallback$Application;

    invoke-direct {v0}, Lo/AdvertisingSetCallback$Application;-><init>()V

    sput-object v0, Lo/AdvertisingSetCallback;->b:Lo/AdvertisingSetCallback$Application;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lo/RulesUpdaterContract;Lo/RulesManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/RulesUpdaterContract;",
            "Lo/RulesManager;",
            ")V"
        }
    .end annotation

    .line 56
    sget-object v5, Lo/AdvertisingSetCallback;->b:Lo/AdvertisingSetCallback$Application;

    sget-object v6, Lo/AdvertisingSetCallback;->a:Lo/AdvertisingSetCallback$StateListAnimator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lo/AdvertisingSetCallback;-><init>(Landroid/content/Context;Ljava/util/List;Lo/RulesUpdaterContract;Lo/RulesManager;Lo/AdvertisingSetCallback$Application;Lo/AdvertisingSetCallback$StateListAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lo/RulesUpdaterContract;Lo/RulesManager;Lo/AdvertisingSetCallback$Application;Lo/AdvertisingSetCallback$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/RulesUpdaterContract;",
            "Lo/RulesManager;",
            "Lo/AdvertisingSetCallback$Application;",
            "Lo/AdvertisingSetCallback$StateListAnimator;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/AdvertisingSetCallback;->e:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lo/AdvertisingSetCallback;->c:Ljava/util/List;

    .line 69
    iput-object p6, p0, Lo/AdvertisingSetCallback;->f:Lo/AdvertisingSetCallback$StateListAnimator;

    .line 70
    new-instance p1, Lo/BluetoothLeAdvertiser;

    invoke-direct {p1, p3, p4}, Lo/BluetoothLeAdvertiser;-><init>(Lo/RulesUpdaterContract;Lo/RulesManager;)V

    iput-object p1, p0, Lo/AdvertisingSetCallback;->h:Lo/BluetoothLeAdvertiser;

    .line 71
    iput-object p5, p0, Lo/AdvertisingSetCallback;->d:Lo/AdvertisingSetCallback$Application;

    return-void
.end method

.method private static a(Lo/FileBackupHelper;II)I
    .locals 4

    .line 128
    invoke-virtual {p0}, Lo/FileBackupHelper;->a()I

    move-result v0

    div-int/2addr v0, p2

    .line 129
    invoke-virtual {p0}, Lo/FileBackupHelper;->d()I

    move-result v1

    div-int/2addr v1, p1

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 133
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    .line 134
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downsampling GIF, sampleSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target dimens: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lo/FileBackupHelper;->d()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/FileBackupHelper;->a()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private d(Ljava/nio/ByteBuffer;IILo/BackupTransport;Lo/FullBackupAgent;)Lo/PeriodicAdvertisingCallback;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Decoded GIF from stream in "

    const-string v3, "BufferGifDecoder"

    .line 94
    invoke-static {}, Lo/ComponentInfo;->c()J

    move-result-wide v4

    const/4 v6, 0x2

    .line 96
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lo/BackupTransport;->d()Lo/FileBackupHelper;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lo/FileBackupHelper;->e()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_5

    invoke-virtual {v0}, Lo/FileBackupHelper;->b()I

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1

    .line 102
    :cond_0
    sget-object v7, Lo/ScanCallback;->c:Lo/FullBackupDataOutput;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lcom/bumptech/glide/load/DecodeFormat;->c:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v7, v9, :cond_1

    .line 103
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v14, p3

    move-object v9, v7

    move/from16 v7, p2

    .line 105
    invoke-static {v0, v7, v14}, Lo/AdvertisingSetCallback;->a(Lo/FileBackupHelper;II)I

    move-result v10

    .line 106
    iget-object v11, v1, Lo/AdvertisingSetCallback;->f:Lo/AdvertisingSetCallback$StateListAnimator;

    iget-object v12, v1, Lo/AdvertisingSetCallback;->h:Lo/BluetoothLeAdvertiser;

    move-object/from16 v13, p1

    invoke-virtual {v11, v12, v0, v13, v10}, Lo/AdvertisingSetCallback$StateListAnimator;->b(Lo/BackupManager$StateListAnimator;Lo/FileBackupHelper;Ljava/nio/ByteBuffer;I)Lo/BackupManager;

    move-result-object v11

    .line 107
    invoke-interface {v11, v9}, Lo/BackupManager;->b(Landroid/graphics/Bitmap$Config;)V

    .line 108
    invoke-interface {v11}, Lo/BackupManager;->a()V

    .line 109
    invoke-interface {v11}, Lo/BackupManager;->f()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_3

    .line 121
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lo/ComponentInfo;->e(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v8

    .line 114
    :cond_3
    :try_start_1
    invoke-static {}, Lo/BluetoothHidDeviceAppSdpSettings;->e()Lo/BluetoothHidDeviceAppSdpSettings;

    move-result-object v12

    .line 116
    new-instance v0, Lo/AdvertisingSetParameters;

    iget-object v10, v1, Lo/AdvertisingSetCallback;->e:Landroid/content/Context;

    move-object v9, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lo/AdvertisingSetParameters;-><init>(Landroid/content/Context;Lo/BackupManager;Lo/RestoreObserver;IILandroid/graphics/Bitmap;)V

    .line 119
    new-instance v7, Lo/PeriodicAdvertisingCallback;

    invoke-direct {v7, v0}, Lo/PeriodicAdvertisingCallback;-><init>(Lo/AdvertisingSetParameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lo/ComponentInfo;->e(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v7

    .line 121
    :cond_5
    :goto_1
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lo/ComponentInfo;->e(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v8

    :catchall_0
    move-exception v0

    .line 121
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lo/ComponentInfo;->e(J)D

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v0
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lo/AdvertisingSetCallback;->d(Ljava/nio/ByteBuffer;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/nio/ByteBuffer;Lo/FullBackupAgent;)Z
    .locals 1

    .line 76
    sget-object v0, Lo/ScanCallback;->a:Lo/FullBackupDataOutput;

    invoke-virtual {p2, v0}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lo/AdvertisingSetCallback;->c:Ljava/util/List;

    .line 77
    invoke-static {p2, p1}, Lo/BackupObserver;->e(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Ljava/nio/ByteBuffer;IILo/FullBackupAgent;)Lo/PeriodicAdvertisingCallback;
    .locals 7

    .line 83
    iget-object v0, p0, Lo/AdvertisingSetCallback;->d:Lo/AdvertisingSetCallback$Application;

    invoke-virtual {v0, p1}, Lo/AdvertisingSetCallback$Application;->a(Ljava/nio/ByteBuffer;)Lo/BackupTransport;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p4

    .line 85
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lo/AdvertisingSetCallback;->d(Ljava/nio/ByteBuffer;IILo/BackupTransport;Lo/FullBackupAgent;)Lo/PeriodicAdvertisingCallback;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object p2, p0, Lo/AdvertisingSetCallback;->d:Lo/AdvertisingSetCallback$Application;

    invoke-virtual {p2, v0}, Lo/AdvertisingSetCallback$Application;->a(Lo/BackupTransport;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/AdvertisingSetCallback;->d:Lo/AdvertisingSetCallback$Application;

    invoke-virtual {p2, v0}, Lo/AdvertisingSetCallback$Application;->a(Lo/BackupTransport;)V

    throw p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/AdvertisingSetCallback;->e(Ljava/nio/ByteBuffer;IILo/FullBackupAgent;)Lo/PeriodicAdvertisingCallback;

    move-result-object p1

    return-object p1
.end method
