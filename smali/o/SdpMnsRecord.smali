.class public Lo/SdpMnsRecord;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SdpMnsRecord$Application;,
        Lo/SdpMnsRecord$Activity;,
        Lo/SdpMnsRecord$ActionBar;,
        Lo/SdpMnsRecord$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/SdpMnsRecord$StateListAnimator;

.field public static final b:Lo/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackupDataOutput<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lo/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackupDataOutput<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lo/RulesUpdaterContract;

.field private final d:Lo/SdpMnsRecord$ActionBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SdpMnsRecord$ActionBar<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final i:Lo/SdpMnsRecord$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lo/SdpMnsRecord$4;

    invoke-direct {v1}, Lo/SdpMnsRecord$4;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 54
    invoke-static {v2, v0, v1}, Lo/FullBackupDataOutput;->d(Ljava/lang/String;Ljava/lang/Object;Lo/FullBackupDataOutput$StateListAnimator;)Lo/FullBackupDataOutput;

    move-result-object v0

    sput-object v0, Lo/SdpMnsRecord;->b:Lo/FullBackupDataOutput;

    const/4 v0, 0x2

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lo/SdpMnsRecord$1;

    invoke-direct {v1}, Lo/SdpMnsRecord$1;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 80
    invoke-static {v2, v0, v1}, Lo/FullBackupDataOutput;->d(Ljava/lang/String;Ljava/lang/Object;Lo/FullBackupDataOutput$StateListAnimator;)Lo/FullBackupDataOutput;

    move-result-object v0

    sput-object v0, Lo/SdpMnsRecord;->e:Lo/FullBackupDataOutput;

    .line 102
    new-instance v0, Lo/SdpMnsRecord$StateListAnimator;

    invoke-direct {v0}, Lo/SdpMnsRecord$StateListAnimator;-><init>()V

    sput-object v0, Lo/SdpMnsRecord;->a:Lo/SdpMnsRecord$StateListAnimator;

    return-void
.end method

.method constructor <init>(Lo/RulesUpdaterContract;Lo/SdpMnsRecord$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesUpdaterContract;",
            "Lo/SdpMnsRecord$ActionBar<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    sget-object v0, Lo/SdpMnsRecord;->a:Lo/SdpMnsRecord$StateListAnimator;

    invoke-direct {p0, p1, p2, v0}, Lo/SdpMnsRecord;-><init>(Lo/RulesUpdaterContract;Lo/SdpMnsRecord$ActionBar;Lo/SdpMnsRecord$StateListAnimator;)V

    return-void
.end method

.method constructor <init>(Lo/RulesUpdaterContract;Lo/SdpMnsRecord$ActionBar;Lo/SdpMnsRecord$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesUpdaterContract;",
            "Lo/SdpMnsRecord$ActionBar<",
            "TT;>;",
            "Lo/SdpMnsRecord$StateListAnimator;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lo/SdpMnsRecord;->c:Lo/RulesUpdaterContract;

    .line 128
    iput-object p2, p0, Lo/SdpMnsRecord;->d:Lo/SdpMnsRecord$ActionBar;

    .line 129
    iput-object p3, p0, Lo/SdpMnsRecord;->i:Lo/SdpMnsRecord$StateListAnimator;

    return-void
.end method

.method private static b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .locals 2

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_0

    if-eq p5, v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->h:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    if-eq p6, v0, :cond_0

    .line 201
    invoke-static/range {p0 .. p6}, Lo/SdpMnsRecord;->c(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    .line 206
    invoke-static {p0, p1, p2, p3}, Lo/SdpMnsRecord;->e(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method private static c(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    const/16 v0, 0x12

    .line 223
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    .line 227
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    .line 231
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    .line 242
    :cond_1
    invoke-virtual {p6, v0, v1, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->c(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float p5, p5, p4

    .line 244
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float p4, p4, p5

    .line 245
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    .line 247
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x3

    const-string p2, "VideoDecoder"

    .line 254
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Exception trying to decode frame on oreo+"

    .line 255
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lo/RulesUpdaterContract;)Lo/FullBackup;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesUpdaterContract;",
            ")",
            "Lo/FullBackup<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lo/SdpMnsRecord;

    new-instance v1, Lo/SdpMnsRecord$Activity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/SdpMnsRecord$Activity;-><init>(Lo/SdpMnsRecord$4;)V

    invoke-direct {v0, p0, v1}, Lo/SdpMnsRecord;-><init>(Lo/RulesUpdaterContract;Lo/SdpMnsRecord$ActionBar;)V

    return-object v0
.end method

.method private static e(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lo/RulesUpdaterContract;)Lo/FullBackup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesUpdaterContract;",
            ")",
            "Lo/FullBackup<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lo/SdpMnsRecord;

    new-instance v1, Lo/SdpMnsRecord$Application;

    invoke-direct {v1}, Lo/SdpMnsRecord$Application;-><init>()V

    invoke-direct {v0, p0, v1}, Lo/SdpMnsRecord;-><init>(Lo/RulesUpdaterContract;Lo/SdpMnsRecord$ActionBar;)V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/FullBackupAgent;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Lo/SdpMnsRecord;->b:Lo/FullBackupDataOutput;

    invoke-virtual {p4, v0}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lo/SdpMnsRecord;->e:Lo/FullBackupDataOutput;

    invoke-virtual {p4, v0}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 153
    :cond_2
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->g:Lo/FullBackupDataOutput;

    invoke-virtual {p4, v1}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    if-nez p4, :cond_3

    .line 155
    sget-object p4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->f:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    :cond_3
    move-object v7, p4

    .line 159
    iget-object p4, p0, Lo/SdpMnsRecord;->i:Lo/SdpMnsRecord$StateListAnimator;

    invoke-virtual {p4}, Lo/SdpMnsRecord$StateListAnimator;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object p4

    .line 161
    :try_start_0
    iget-object v1, p0, Lo/SdpMnsRecord;->d:Lo/SdpMnsRecord$ActionBar;

    invoke-interface {v1, p4, p1}, Lo/SdpMnsRecord$ActionBar;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p4

    move v5, p2

    move v6, p3

    .line 163
    invoke-static/range {v1 .. v7}, Lo/SdpMnsRecord;->b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 178
    iget-object p2, p0, Lo/SdpMnsRecord;->c:Lo/RulesUpdaterContract;

    invoke-static {p1, p2}, Lo/BluetoothHidDeviceAppQosSettings;->c(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)Lo/BluetoothHidDeviceAppQosSettings;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 173
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_1
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method