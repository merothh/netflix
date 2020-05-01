.class public final Lo/aeY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader;
.implements Lo/TransceiveResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeY$ActionBar;,
        Lo/aeY$TaskDescription;,
        Lo/aeY$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/aeY$StateListAnimator;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/aeY$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/aeY$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final f:Lo/afc;

.field private i:Lio/reactivex/disposables/Disposable;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aeY$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aeY$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/afc;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryTrimmables"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aeY;->j:Landroid/content/Context;

    iput-object p2, p0, Lo/aeY;->f:Lo/afc;

    .line 85
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/aeY;->d:Ljava/util/HashSet;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/aeY;->b:Ljava/util/ArrayList;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/aeY;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/api/res/AssetType;)Ljava/lang/Object;
    .locals 1

    .line 654
    sget-object v0, Lo/afa;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/api/res/AssetType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 663
    :pswitch_0
    sget-object p1, Lcom/netflix/mediaclient/net/NetworkRequestType;->I:Lcom/netflix/mediaclient/net/NetworkRequestType;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x3

    .line 385
    invoke-static {v11, v10, v2, v11}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 387
    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v2}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 388
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "ImageLoader, showImg called with empty URL!"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 391
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v2

    const-string v5, "imageView.imageView"

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v2}, Lo/aeY;->e(Landroid/widget/ImageView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 392
    sget-object v2, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    check-cast v2, Lo/MessagePdu;

    :cond_3
    if-eqz p4, :cond_4

    .line 396
    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v9, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 399
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v2

    .line 400
    new-instance v5, Lo/DigitalClock;

    move-object/from16 v12, p5

    invoke-direct {v5, v4, v12, v1, v0}, Lo/DigitalClock;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/api/res/AssetType;)V

    if-eqz v2, :cond_5

    .line 402
    iget-boolean v6, v2, Lo/DigitalClock;->e:Z

    if-eqz v6, :cond_5

    iget-object v6, v2, Lo/DigitalClock;->d:Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v7, v5, Lo/DigitalClock;->d:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 403
    iput-boolean v3, v5, Lo/DigitalClock;->e:Z

    .line 405
    :cond_5
    invoke-interface {v9, v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageLoaderInfo(Lo/DigitalClock;)V

    if-eqz v2, :cond_6

    .line 407
    iget-object v2, v2, Lo/DigitalClock;->d:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v2, v11

    :goto_2
    invoke-static {v4, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 414
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->b()Lo/DdmRegister;

    move-result-object v13

    const-string v2, "imageView.draweeHolder"

    invoke-static {v13, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    move/from16 v3, p7

    .line 417
    invoke-direct {v8, v3}, Lo/aeY;->b(I)Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    const-string v3, "imageRequestBuilder"

    .line 418
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/CryptoObject;->e()Lo/CameraAccessException;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/CameraAccessException;->c(Landroid/graphics/Bitmap$Config;)Lo/CameraAccessException;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraAccessException;->f()Lo/CryptoObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Lo/CryptoObject;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    if-eqz p9, :cond_8

    .line 420
    new-instance v1, Lo/HashCodeHelpers;

    const/4 v3, 0x5

    iget-object v5, v8, Lo/aeY;->j:Landroid/content/Context;

    invoke-direct {v1, v3, v5}, Lo/HashCodeHelpers;-><init>(ILandroid/content/Context;)V

    check-cast v1, Lo/GeofenceHardwareCallback;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e(Lo/GeofenceHardwareCallback;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 422
    :cond_8
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 425
    new-instance v3, Lo/aeW;

    invoke-direct {v3, v9, v4, v10}, Lo/aeW;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Z)V

    .line 430
    iget-object v5, v8, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v3, v5}, Lo/aeW;->d(Ljava/util/Map;)V

    .line 432
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->e()Lo/DngCreator;

    move-result-object v5

    .line 433
    invoke-virtual {v5, v1}, Lo/DngCreator;->e(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v7

    .line 434
    new-instance v6, Lo/afg;

    invoke-direct {v8, v0}, Lo/aeY;->a(Lcom/netflix/mediaclient/api/res/AssetType;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v0}, Lo/afg;-><init>(Ljava/lang/Object;)V

    .line 435
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->d()Lo/CursorWindowAllocationException;

    move-result-object v0

    .line 436
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CursorWindowAllocationException;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lo/CursorWindowAllocationException;

    .line 437
    invoke-virtual {v0, v6}, Lo/CursorWindowAllocationException;->d(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lo/CursorWindowAllocationException;

    .line 438
    invoke-virtual {v13}, Lo/DdmRegister;->a()Lo/DdmHandleExit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CursorWindowAllocationException;->b(Lo/DdmHandleExit;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    .line 435
    move-object v14, v0

    check-cast v14, Lo/CursorWindowAllocationException;

    const-string v0, "controllerBuilder"

    .line 439
    invoke-static {v14, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lo/aeY$FragmentManager;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v7}, Lo/aeY$FragmentManager;-><init>(Lo/aeY;Lo/aeW;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lo/afg;Z)V

    check-cast v15, Lo/SQLiteBindOrColumnIndexOutOfRangeException;

    invoke-virtual {v14, v15}, Lo/CursorWindowAllocationException;->d(Lo/SQLiteBindOrColumnIndexOutOfRangeException;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 493
    invoke-virtual {v14}, Lo/CursorWindowAllocationException;->i()Lo/SQLiteConnection;

    move-result-object v0

    check-cast v0, Lo/DdmHandleExit;

    invoke-virtual {v13, v0}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 494
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 495
    invoke-virtual {v13}, Lo/DdmRegister;->e()Lo/DdmHandleHeap;

    move-result-object v0

    check-cast v0, Lo/SqliteWrapper;

    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/SqliteWrapper;->b(I)V

    goto :goto_3

    .line 497
    :cond_9
    invoke-virtual {v13}, Lo/DdmRegister;->e()Lo/DdmHandleHeap;

    move-result-object v0

    check-cast v0, Lo/SqliteWrapper;

    invoke-virtual {v0, v11}, Lo/SqliteWrapper;->b(Landroid/graphics/drawable/Drawable;)V

    .line 499
    :goto_3
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->a()I

    move-result v0

    if-eqz v0, :cond_a

    .line 500
    invoke-virtual {v13}, Lo/DdmRegister;->e()Lo/DdmHandleHeap;

    move-result-object v0

    check-cast v0, Lo/SqliteWrapper;

    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/SqliteWrapper;->d(I)V

    goto :goto_4

    .line 502
    :cond_a
    invoke-virtual {v13}, Lo/DdmRegister;->e()Lo/DdmHandleHeap;

    move-result-object v0

    check-cast v0, Lo/SqliteWrapper;

    invoke-virtual {v0, v11}, Lo/SqliteWrapper;->e(Landroid/graphics/drawable/Drawable;)V

    .line 504
    :goto_4
    invoke-virtual {v13}, Lo/DdmRegister;->e()Lo/DdmHandleHeap;

    move-result-object v0

    const-string v1, "draweeHolder.hierarchy"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/SqliteWrapper;

    if-eqz p6, :cond_b

    const/16 v10, 0x96

    :cond_b
    invoke-virtual {v0, v10}, Lo/SqliteWrapper;->c(I)V

    .line 505
    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->am_()V

    return-void
.end method

.method private final a(Lo/aeY$ActionBar;)V
    .locals 9

    .line 623
    invoke-virtual {p1}, Lo/aeY$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LegacyRequestMapper;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lo/LegacyFocusStateMapper;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lo/LegacyFocusStateMapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/LegacyFocusStateMapper;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    move-object v3, v1

    .line 624
    new-instance v0, Lo/aeU;

    .line 626
    invoke-virtual {p1}, Lo/aeY$ActionBar;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 628
    invoke-virtual {p1}, Lo/aeY$ActionBar;->c()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    .line 624
    invoke-direct/range {v2 .. v8}, Lo/aeU;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 633
    invoke-virtual {p1}, Lo/aeY$ActionBar;->c()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v1

    invoke-virtual {p1}, Lo/aeY$ActionBar;->a()Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object v2

    invoke-virtual {p1}, Lo/aeY$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    return-void
.end method

.method private final b(I)Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 570
    sget-object p1, Lcom/facebook/imagepipeline/common/Priority;->d:Lcom/facebook/imagepipeline/common/Priority;

    goto :goto_0

    .line 569
    :cond_0
    sget-object p1, Lcom/facebook/imagepipeline/common/Priority;->d:Lcom/facebook/imagepipeline/common/Priority;

    goto :goto_0

    .line 568
    :cond_1
    sget-object p1, Lcom/facebook/imagepipeline/common/Priority;->b:Lcom/facebook/imagepipeline/common/Priority;

    :goto_0
    return-object p1
.end method

.method public static final synthetic b(Lo/aeY;Lo/afg;Z)Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lo/aeY;->c(Lo/afg;Z)Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 310
    invoke-static {v1, v0, v2, v1}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 312
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 313
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "ImageLoader, getImg called with empty URL!"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_2
    instance-of v0, p3, Lo/aeW;

    if-eqz v0, :cond_3

    .line 317
    move-object v0, p3

    check-cast v0, Lo/aeW;

    iget-object v1, p0, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lo/aeW;->d(Ljava/util/Map;)V

    .line 320
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 321
    invoke-direct {p0, p6}, Lo/aeY;->b(I)Lcom/facebook/imagepipeline/common/Priority;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p6

    .line 322
    invoke-static {p4, p5}, Lo/CameraConstrainedHighSpeedCaptureSession;->b(II)Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c(Lo/CameraConstrainedHighSpeedCaptureSession;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p4

    const-string p5, "imageRequestBuilder"

    .line 323
    invoke-static {p4, p5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/CryptoObject;->e()Lo/CameraAccessException;

    move-result-object p5

    invoke-virtual {p5, p7}, Lo/CameraAccessException;->c(Landroid/graphics/Bitmap$Config;)Lo/CameraAccessException;

    move-result-object p5

    invoke-virtual {p5}, Lo/CameraAccessException;->f()Lo/CryptoObject;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Lo/CryptoObject;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    if-eqz p9, :cond_4

    .line 325
    new-instance p5, Lo/HashCodeHelpers;

    const/4 p6, 0x5

    iget-object p7, p0, Lo/aeY;->j:Landroid/content/Context;

    invoke-direct {p5, p6, p7}, Lo/HashCodeHelpers;-><init>(ILandroid/content/Context;)V

    check-cast p5, Lo/GeofenceHardwareCallback;

    invoke-virtual {p4, p5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e(Lo/GeofenceHardwareCallback;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    :cond_4
    if-nez p8, :cond_5

    .line 328
    invoke-virtual {p4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k()Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 331
    :cond_5
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->e()Lo/DngCreator;

    move-result-object p5

    .line 332
    invoke-virtual {p4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p4

    .line 333
    invoke-virtual {p5, p4}, Lo/DngCreator;->e(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v5

    .line 334
    new-instance v4, Lo/afg;

    invoke-direct {p0, p2}, Lo/aeY;->a(Lcom/netflix/mediaclient/api/res/AssetType;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v4, p2}, Lo/afg;-><init>(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p5, p4, v4}, Lo/DngCreator;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/XmlResourceParser;

    move-result-object p2

    .line 337
    iget-object p4, p0, Lo/aeY;->d:Ljava/util/HashSet;

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance p4, Lo/aeY$Activity;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/aeY$Activity;-><init>(Lo/aeY;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lo/afg;Z)V

    check-cast p4, Lo/BulkCursorNative;

    .line 367
    invoke-static {}, Lo/ResolveInfo;->c()Lo/ResolveInfo;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 338
    invoke-interface {p2, p4, p1}, Lo/XmlResourceParser;->a(Lo/BulkCursorNative;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static final synthetic b(Lo/aeY;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lo/aeY;->d()V

    return-void
.end method

.method public static final synthetic b(Lo/aeY;Lo/aeY$ActionBar;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lo/aeY;->a(Lo/aeY$ActionBar;)V

    return-void
.end method

.method public static final synthetic b(Lo/aeY;Lo/aeY$TaskDescription;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lo/aeY;->d(Lo/aeY$TaskDescription;)V

    return-void
.end method

.method private final c(Lo/afg;Z)Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 0

    if-eqz p2, :cond_0

    .line 676
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->a:Lcom/netflix/android/imageloader/api/ImageDataSource;

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p1}, Lo/afg;->e()Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    goto :goto_0

    .line 678
    :cond_1
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    :goto_0
    return-object p1
.end method

.method private final c(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;
    .locals 1

    .line 543
    new-instance v0, Lo/aeY$Fragment;

    invoke-direct {v0, p1}, Lo/aeY$Fragment;-><init>(Lo/bP;)V

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    return-object v0
.end method

.method public static final synthetic c(Lo/aeY;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lo/aeY;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic d(Lo/aeY;)Ljava/util/HashSet;
    .locals 0

    .line 60
    iget-object p0, p0, Lo/aeY;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method private final d()V
    .locals 6

    .line 597
    iget-object v0, p0, Lo/aeY;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 725
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 726
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/aeY$ActionBar;

    .line 597
    invoke-virtual {v4}, Lo/aeY$ActionBar;->a()Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 727
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 598
    iget-object v0, p0, Lo/aeY;->b:Ljava/util/ArrayList;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 599
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aeY$ActionBar;

    .line 600
    invoke-direct {p0, v1}, Lo/aeY;->a(Lo/aeY$ActionBar;)V

    goto :goto_2

    .line 603
    :cond_3
    iget-object v0, p0, Lo/aeY;->i:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/aeY;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/aeY;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    :cond_4
    const-wide/16 v0, 0x64

    .line 605
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 606
    new-instance v1, Lo/aeY$PendingIntent;

    invoke-direct {v1, p0}, Lo/aeY$PendingIntent;-><init>(Lo/aeY;)V

    check-cast v1, Lio/reactivex/functions/Action;

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/aeY;->i:Lio/reactivex/disposables/Disposable;

    :cond_5
    return-void
.end method

.method private final d(Lo/aeY$TaskDescription;)V
    .locals 2

    .line 637
    invoke-virtual {p1}, Lo/aeY$TaskDescription;->a()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v0

    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-virtual {p1}, Lo/aeY$TaskDescription;->e()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->b(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static final synthetic d(Lo/aeY;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/aeY;->i:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final e(I)Lcom/facebook/common/memory/MemoryTrimType;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 590
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->c:Lcom/facebook/common/memory/MemoryTrimType;

    goto :goto_0

    .line 588
    :cond_0
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->c:Lcom/facebook/common/memory/MemoryTrimType;

    goto :goto_0

    .line 586
    :cond_1
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->c:Lcom/facebook/common/memory/MemoryTrimType;

    goto :goto_0

    .line 585
    :cond_2
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->b:Lcom/facebook/common/memory/MemoryTrimType;

    goto :goto_0

    .line 581
    :cond_3
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->a:Lcom/facebook/common/memory/MemoryTrimType;

    goto :goto_0

    .line 579
    :cond_4
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->d:Lcom/facebook/common/memory/MemoryTrimType;

    :goto_0
    return-object p1
.end method

.method public static final synthetic e(Lo/aeY;Lo/afg;Z)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lo/aeY;->e(Lo/afg;Z)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object p0

    return-object p0
.end method

.method private final e(Lo/afg;Z)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
    .locals 0

    if-eqz p2, :cond_0

    .line 645
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-object p1

    .line 647
    :cond_0
    invoke-virtual {p1}, Lo/afg;->e()Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 648
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-object p1

    .line 650
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-object p1
.end method

.method public static final synthetic e(Lo/aeY;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lo/aeY;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lo/aeY;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 383
    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lo/aeY;->a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method private final e(Landroid/widget/ImageView;)Z
    .locals 3

    .line 514
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 520
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_2

    return v1

    .line 530
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 531
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    return v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 234
    iget-object v0, p0, Lo/aeY;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/XmlResourceParser;

    .line 235
    invoke-interface {v1}, Lo/XmlResourceParser;->g()Z

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lo/aeY;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 239
    iget-object v0, p0, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    .line 240
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d()V

    goto :goto_1

    .line 243
    :cond_1
    iget-object v0, p0, Lo/aeY;->i:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 3

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tracker.id"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/mediaclient/api/res/AssetType;)V
    .locals 13

    const-string v0, "assetType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 253
    sget-object p1, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 257
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    sget-object p1, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 263
    :cond_1
    iget-object v1, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    sget-object p1, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 270
    :cond_2
    iget-object v2, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    const/4 v4, 0x0

    .line 273
    invoke-virtual {v0}, Lo/DigitalClock;->d()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    move-result-object v5

    const-string v1, "info.getImgViewConfig()"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 276
    iget-object v8, v0, Lo/DigitalClock;->b:Landroid/graphics/Bitmap$Config;

    const-string v0, "info.bitmapConfig"

    invoke-static {v8, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 268
    invoke-static/range {v0 .. v12}, Lo/aeY;->e(Lo/aeY;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 12

    const-string v0, "imageView"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    move-object v3, p2

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticImgConfig"

    move-object v6, p3

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConfig"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v4, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 212
    invoke-direct/range {v1 .. v11}, Lo/aeY;->a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method public b(Ljava/lang/String;III)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lio/reactivex/Single<",
            "Lo/NfcActivityManager$ActionBar;",
            ">;"
        }
    .end annotation

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 111
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 117
    invoke-static {p2, p3}, Lo/CameraConstrainedHighSpeedCaptureSession;->b(II)Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c(Lo/CameraConstrainedHighSpeedCaptureSession;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 120
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->e()Lo/DngCreator;

    move-result-object v3

    .line 121
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v4

    .line 122
    new-instance v5, Lo/afg;

    sget-object p1, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-direct {p0, p1}, Lo/aeY;->a(Lcom/netflix/mediaclient/api/res/AssetType;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v5, p1}, Lo/afg;-><init>(Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0, p4}, Lo/aeY;->b(I)Lcom/facebook/imagepipeline/common/Priority;

    move-result-object p1

    invoke-virtual {v3, v4, v5, p1}, Lo/DngCreator;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lo/XmlResourceParser;

    move-result-object v2

    .line 126
    new-instance p1, Lo/aeY$Application;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/aeY$Application;-><init>(Lo/aeY;Lo/XmlResourceParser;Lo/DngCreator;Lcom/facebook/imagepipeline/request/ImageRequest;Lo/afg;)V

    check-cast p1, Lio/reactivex/SingleOnSubscribe;

    invoke-static {p1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    .line 153
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.create<DownloadIm\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public d(I)V
    .locals 2

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 288
    sget-object v0, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 289
    invoke-direct {p0, p1}, Lo/aeY;->e(I)Lcom/facebook/common/memory/MemoryTrimType;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lo/aeY;->f:Lo/afc;

    invoke-interface {v0}, Lo/afc;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SplitAssetDependencyLoader;

    .line 291
    invoke-interface {v1, p1}, Lo/SplitAssetDependencyLoader;->b(Lcom/facebook/common/memory/MemoryTrimType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 97
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 98
    iget-object v0, p0, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;IILo/bP;ZILandroid/graphics/Bitmap$Config;Z)V
    .locals 12

    move-object/from16 v0, p4

    const-string v1, "imageUrl"

    move-object v3, p1

    invoke-static {p1, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bitmapConfig"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object v4, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    move-object v1, p0

    .line 192
    invoke-direct {p0, v0}, Lo/aeY;->c(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v5

    move-object v2, p0

    move v6, p2

    move v7, p3

    move/from16 v8, p6

    move/from16 v10, p5

    move/from16 v11, p8

    .line 189
    invoke-direct/range {v2 .. v11}, Lo/aeY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/aeY;->a:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    return-object p1
.end method

.method public e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 3

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 227
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    move-object v1, v0

    check-cast v1, Lo/DigitalClock;

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageLoaderInfo(Lo/DigitalClock;)V

    .line 229
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->b()Lo/DdmRegister;

    move-result-object v1

    const-string v2, "imageView.draweeHolder"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/DdmHandleExit;

    invoke-virtual {v1, v0}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 230
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->am_()V

    return-void
.end method

.method public e(Ljava/lang/String;IILo/aeW;ZILandroid/graphics/Bitmap$Config;Z)V
    .locals 12

    move-object/from16 v0, p4

    const-string v1, "imageUrl"

    move-object v3, p1

    invoke-static {p1, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bitmapConfig"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v4, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 169
    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-object v2, p0

    move v6, p2

    move v7, p3

    move/from16 v8, p6

    move/from16 v10, p5

    move/from16 v11, p8

    .line 166
    invoke-direct/range {v2 .. v11}, Lo/aeY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V

    return-void
.end method
