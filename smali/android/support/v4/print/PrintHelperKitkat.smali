.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mIsMinMarginsHandlingCorrect:Z

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field protected mPrintActivityRespectsOrientation:Z

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .line 102
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 104
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 109
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mPrintActivityRespectsOrientation:Z

    .line 110
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    .line 112
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/print/PrintHelperKitkat;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Landroid/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 682
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 697
    :goto_0
    return-object p1

    .line 686
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 688
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 689
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 690
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 691
    invoke-virtual {v3, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 692
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 693
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 694
    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 695
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 697
    goto :goto_0
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 292
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 295
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v2, p1

    div-float/2addr v0, v2

    .line 296
    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    .line 297
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 301
    :goto_0
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 304
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 306
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    div-float/2addr v0, v5

    .line 308
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 309
    return-object v1

    .line 299
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private static isPortrait(Landroid/graphics/Bitmap;)Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 663
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 669
    const/4 v0, 0x0

    invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 671
    if-eqz v1, :cond_2

    .line 673
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 676
    :cond_2
    :goto_0
    return-object v0

    .line 674
    :catch_0
    move-exception v1

    .line 675
    const-string/jumbo v2, "PrintHelperKitkat"

    const-string/jumbo v3, "close fail "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 673
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 676
    :cond_3
    :goto_1
    throw v0

    .line 674
    :catch_1
    move-exception v1

    .line 675
    const-string/jumbo v2, "PrintHelperKitkat"

    const-string/jumbo v3, "close fail "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 613
    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 618
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 619
    invoke-direct {p0, p1, v2}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 621
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 622
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 625
    if-lez v3, :cond_2

    if-gtz v4, :cond_3

    .line 654
    :cond_2
    :goto_0
    return-object v0

    .line 630
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 633
    :goto_1
    if-le v2, p2, :cond_4

    .line 634
    ushr-int/lit8 v2, v2, 0x1

    .line 635
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 639
    :cond_4
    if-lez v1, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/2addr v2, v1

    if-lez v2, :cond_2

    .line 643
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 644
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 645
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 646
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 647
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 648
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 650
    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 652
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 654
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 648
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 652
    :catchall_2
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 654
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method private writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 9

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v0, :cond_0

    move-object v3, p1

    .line 336
    :goto_0
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    move-object v7, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 434
    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 435
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v1, Landroid/print/PrintAttributes$Margins;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 216
    :cond_0
    return-object v0
.end method

.method public getColorMode()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    goto :goto_0
.end method

.method public getScaleMode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 8

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 231
    :cond_0
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 232
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/print/PrintManager;

    .line 234
    invoke-static {p2}, Landroid/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 239
    :goto_1
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 240
    invoke-virtual {v1, v0}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 241
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v7

    .line 244
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    invoke-virtual {v6, p1, v0, v7}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    goto :goto_0

    .line 237
    :cond_1
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    goto :goto_1
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 6

    .prologue
    .line 448
    iget v5, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 450
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$3;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;I)V

    .line 590
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 591
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 592
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 594
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v3, :cond_2

    .line 595
    :cond_0
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 599
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    .line 601
    invoke-virtual {v1, p1, v0, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 602
    return-void

    .line 596
    :cond_2
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 597
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0
.end method

.method public setColorMode(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 149
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 159
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 127
    return-void
.end method
