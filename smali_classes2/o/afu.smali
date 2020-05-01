.class public Lo/afu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader;
.implements Lo/TransceiveResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afu$StateListAnimator;,
        Lo/afu$ActionBar;,
        Lo/afu$Activity;,
        Lo/afu$TaskDescription;,
        Lo/afu$Application;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lo/FragmentHostCallback;

.field private c:I

.field private final d:Ljava/lang/Object;

.field e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lo/afu$Application;

.field private g:J

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/aeS;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/aeS;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;

.field private final o:Ljava/io/File;


# direct methods
.method public constructor <init>(Lo/FragmentHostCallback;IJLjava/io/File;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IMAGE"

    .line 75
    iput-object v0, p0, Lo/afu;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lo/afu;->c:I

    const/16 v0, 0x64

    .line 83
    iput v0, p0, Lo/afu;->a:I

    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lo/afu;->g:J

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/afu;->h:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/afu;->i:Ljava/util/HashMap;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/afu;->j:Landroid/os/Handler;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    iput-object p1, p0, Lo/afu;->b:Lo/FragmentHostCallback;

    .line 138
    iput p2, p0, Lo/afu;->c:I

    .line 139
    iput-wide p3, p0, Lo/afu;->g:J

    .line 140
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lo/afu;->o:Ljava/io/File;

    .line 141
    invoke-static {}, Lo/afm;->c()Lo/afm;

    move-result-object p1

    iput-object p1, p0, Lo/afu;->f:Lo/afu$Application;

    return-void
.end method

.method private a(I)Lcom/android/volley/Request$Priority;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 297
    sget-object p1, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    return-object p1

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    sget-object p1, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZ)Lio/reactivex/Single;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/api/res/AssetType;",
            "III",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)",
            "Lio/reactivex/Single<",
            "Lo/afu$StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 621
    new-instance v10, Lo/afs;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lo/afs;-><init>(Lo/afu;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZ)V

    invoke-static {v10}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lo/afu;Ljava/lang/String;ILo/afu$StateListAnimator;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/afu;->c(Ljava/lang/String;ILo/afu$StateListAnimator;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 914
    invoke-static {p0}, Lo/afT;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {p0}, Lo/afT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 923
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Ljava/lang/String;ILio/reactivex/SingleEmitter;)V
    .locals 8

    .line 215
    new-instance v7, Lo/yb;

    new-instance v2, Lo/afu$4;

    invoke-direct {v2, p0, p3}, Lo/afu$4;-><init>(Lo/afu;Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lo/afr;

    invoke-direct {v3, p3}, Lo/afr;-><init>(Lio/reactivex/SingleEmitter;)V

    iget v4, p0, Lo/afu;->c:I

    .line 241
    invoke-direct {p0, p2}, Lo/afu;->a(I)Lcom/android/volley/Request$Priority;

    move-result-object v5

    iget-object v6, p0, Lo/afu;->o:Ljava/io/File;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lo/yb;-><init>(Ljava/lang/String;Lo/yf;Lo/FragmentManagerNonConfig$Activity;ILcom/android/volley/Request$Priority;Ljava/io/File;)V

    .line 244
    iget-object p1, p0, Lo/afu;->b:Lo/FragmentHostCallback;

    invoke-virtual {p1, v7}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 842
    invoke-direct {p0}, Lo/afu;->b()V

    .line 846
    iget-object v0, p0, Lo/afu;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aeS;

    .line 849
    invoke-virtual {v0, p2}, Lo/aeS;->d(Lcom/android/volley/VolleyError;)V

    .line 852
    invoke-direct {p0, p1, v0}, Lo/afu;->a(Ljava/lang/String;Lo/aeS;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lo/aeS;)V
    .locals 2

    .line 861
    iget-object v0, p0, Lo/afu;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object p1, p0, Lo/afu;->n:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 865
    new-instance p1, Lo/afu$8;

    invoke-direct {p1, p0, p2}, Lo/afu$8;-><init>(Lo/afu;Lo/aeS;)V

    iput-object p1, p0, Lo/afu;->n:Ljava/lang/Runnable;

    .line 894
    iget-object p1, p0, Lo/afu;->j:Landroid/os/Handler;

    iget-object p2, p0, Lo/afu;->n:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lo/afu;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lo/afu;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lo/afu;->d(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic b(Lo/afu;)Ljava/util/HashMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/afu;->i:Ljava/util/HashMap;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 899
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 900
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lo/afu;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    return-void
.end method

.method static synthetic b(Lo/afu;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lo/afu;->a(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;ILo/afu$StateListAnimator;)Lio/reactivex/SingleSource;
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2}, Lo/afu;->d(Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lo/afu;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iput-object p1, p0, Lo/afu;->n:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic c(Lo/afu;)Ljava/util/HashMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/afu;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method private c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;ZZ)Lo/aeU;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move/from16 v9, p9

    .line 672
    invoke-direct/range {p0 .. p0}, Lo/afu;->b()V

    .line 678
    invoke-static/range {p1 .. p1}, Lo/afu;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lo/afu;->b:Lo/FragmentHostCallback;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 696
    :cond_0
    instance-of v1, v8, Lo/aeW;

    if-eqz v1, :cond_1

    .line 697
    move-object v1, v8

    check-cast v1, Lo/aeW;

    iget-object v2, v0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Lo/aeW;->d(Ljava/util/Map;)V

    :cond_1
    if-eqz v9, :cond_2

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lo/afu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "blurry515"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 704
    :cond_2
    invoke-static/range {p1 .. p1}, Lo/afu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v10, v1

    .line 707
    iget-object v1, v0, Lo/afu;->f:Lo/afu$Application;

    invoke-interface {v1, v10}, Lo/afu$Application;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v7, 0x0

    if-eqz v12, :cond_3

    .line 713
    new-instance v1, Lo/aeU;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v2, v0, Lo/afu;->h:Ljava/util/HashMap;

    iget-object v3, v0, Lo/afu;->i:Ljava/util/HashMap;

    move-object v11, v1

    move-object/from16 v13, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lo/aeU;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 714
    sget-object v2, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-interface {v8, v1, v2, v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    return-object v1

    .line 724
    :cond_3
    new-instance v11, Lo/aeU;

    const/4 v2, 0x0

    iget-object v6, v0, Lo/afu;->h:Ljava/util/HashMap;

    iget-object v12, v0, Lo/afu;->i:Ljava/util/HashMap;

    move-object v1, v11

    move-object/from16 v3, p1

    move-object v4, v10

    move-object/from16 v5, p3

    move-object v13, v7

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lo/aeU;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 727
    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->b:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-interface {v8, v11, v1, v13}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    .line 730
    iget-object v1, v0, Lo/afu;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aeS;

    if-eqz v1, :cond_4

    .line 735
    invoke-virtual {v1, v11}, Lo/aeS;->a(Lo/aeU;)V

    return-object v11

    .line 742
    :cond_4
    new-instance v1, Lo/afo;

    new-instance v14, Lo/afu$1;

    move/from16 v2, p8

    invoke-direct {v14, v0, v10, v9, v2}, Lo/afu$1;-><init>(Lo/afu;Ljava/lang/String;ZZ)V

    new-instance v2, Lo/afu$2;

    invoke-direct {v2, v0, v10}, Lo/afu$2;-><init>(Lo/afu;Ljava/lang/String;)V

    iget v3, v0, Lo/afu;->c:I

    iget-wide v4, v0, Lo/afu;->g:J

    move-object v12, v1

    move-object/from16 v13, p1

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p7

    move-object/from16 v18, v2

    move-object/from16 v19, p6

    move/from16 v20, v3

    move-wide/from16 v21, v4

    invoke-direct/range {v12 .. v22}, Lo/afo;-><init>(Ljava/lang/String;Lo/FragmentManagerNonConfig$StateListAnimator;IILandroid/graphics/Bitmap$Config;Lo/FragmentManagerNonConfig$Activity;Lcom/android/volley/Request$Priority;IJ)V

    .line 784
    iget-object v2, v0, Lo/afu;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->b(Ljava/lang/Object;)V

    .line 786
    sget-object v2, Lo/afu$7;->d:[I

    invoke-virtual/range {p2 .. p2}, Lcom/netflix/mediaclient/api/res/AssetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 795
    :pswitch_0
    sget-object v2, Lcom/netflix/mediaclient/net/NetworkRequestType;->I:Lcom/netflix/mediaclient/net/NetworkRequestType;

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->c(Ljava/lang/Object;)V

    .line 804
    :goto_1
    iget-object v2, v0, Lo/afu;->b:Lo/FragmentHostCallback;

    invoke-virtual {v2, v1}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 805
    iget-object v2, v0, Lo/afu;->h:Ljava/util/HashMap;

    new-instance v3, Lo/aeS;

    invoke-direct {v3, v1, v11}, Lo/aeS;-><init>(Lcom/android/volley/Request;Lo/aeU;)V

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    .line 680
    :cond_5
    :goto_2
    iget-object v1, v0, Lo/afu;->b:Lo/FragmentHostCallback;

    if-nez v1, :cond_6

    const-string v1, "Request queue is null - can\'t get bitmap"

    move-object/from16 v3, p1

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request URL is NOT valid, unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v9, v1

    const-string v10, "VolleyImageLoader"

    .line 683
    invoke-static {v10, v9}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v11, Lo/aeU;

    const/4 v2, 0x0

    iget-object v6, v0, Lo/afu;->h:Ljava/util/HashMap;

    iget-object v7, v0, Lo/afu;->i:Ljava/util/HashMap;

    const-string v4, "ERROR"

    move-object v1, v11

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lo/aeU;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/util/HashMap;Ljava/util/HashMap;)V

    if-eqz v8, :cond_7

    .line 687
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v9}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->b(Lcom/android/volley/VolleyError;)V

    goto :goto_4

    :cond_7
    const-string v1, "Unable to report an error, missing listener"

    .line 689
    invoke-static {v10, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v11

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

.method private c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 1

    const/4 v0, 0x0

    .line 932
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 18

    if-eqz p4, :cond_0

    .line 423
    invoke-interface/range {p4 .. p4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lo/afu$ActionBar;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lo/afu$ActionBar;-><init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    new-instance v7, Lo/afu$Activity;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lo/afu$Activity;-><init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    goto :goto_0

    :cond_1
    new-instance v7, Lo/afu$TaskDescription;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lo/afu$TaskDescription;-><init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    :goto_0
    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-lez p6, :cond_2

    .line 430
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    :goto_1
    move-object v14, v0

    if-eqz p8, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v15, v0

    goto :goto_2

    :cond_3
    move-object/from16 v15, p7

    :goto_2
    const/16 v16, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v17, p8

    invoke-direct/range {v8 .. v17}, Lo/afu;->c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;ZZ)Lo/aeU;

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 10

    move-object v1, p1

    move-object v2, p2

    move-object v0, p4

    if-eqz v0, :cond_0

    .line 397
    invoke-interface {p1, p4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 399
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 400
    :cond_1
    iget-object v3, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    .line 402
    :goto_0
    new-instance v4, Lo/DigitalClock;

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p8

    invoke-direct {v4, p2, p5, v7, p3}, Lo/DigitalClock;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/api/res/AssetType;)V

    invoke-interface {p1, v4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageLoaderInfo(Lo/DigitalClock;)V

    if-eqz v0, :cond_2

    .line 405
    iget-boolean v4, v0, Lo/DigitalClock;->e:Z

    if-eqz v4, :cond_2

    iget-object v0, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lo/DigitalClock;->d(Z)V

    :cond_2
    if-nez v2, :cond_3

    .line 410
    invoke-direct {p0, p1}, Lo/afu;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    return-void

    .line 412
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 417
    invoke-direct/range {v0 .. v9}, Lo/afu;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method static synthetic c(Lo/afu;Ljava/lang/String;ILio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/afu;->a(Ljava/lang/String;ILio/reactivex/SingleEmitter;)V

    return-void
.end method

.method private d(Ljava/lang/String;I)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Single<",
            "Lo/NfcActivityManager$ActionBar;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Lo/aft;

    invoke-direct {v0, p0, p1, p2}, Lo/aft;-><init>(Lo/afu;Ljava/lang/String;I)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 815
    invoke-direct {p0}, Lo/afu;->b()V

    if-eqz p3, :cond_0

    .line 822
    iget-object p3, p0, Lo/afu;->f:Lo/afu$Application;

    invoke-interface {p3, p1, p2}, Lo/afu$Application;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 826
    :cond_0
    iget-object p3, p0, Lo/afu;->h:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/aeS;

    if-eqz p3, :cond_1

    .line 830
    iput-object p2, p3, Lo/aeS;->c:Landroid/graphics/Bitmap;

    .line 833
    invoke-direct {p0, p1, p3}, Lo/afu;->a(Ljava/lang/String;Lo/aeS;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lo/afu;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;I)V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    .line 950
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 956
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 961
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_2
    :goto_0
    return v1
.end method

.method private e(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;
    .locals 1

    .line 304
    new-instance v0, Lo/afu$5;

    invoke-direct {v0, p0, p1}, Lo/afu$5;-><init>(Lo/afu;Lo/bP;)V

    return-object v0
.end method

.method private e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;I)V
    .locals 0

    .line 936
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageResource(I)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 940
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZLio/reactivex/SingleEmitter;)V
    .locals 11

    move-object v10, p0

    .line 622
    new-instance v3, Lo/afu$3;

    move-object v1, p1

    move-object/from16 v0, p9

    invoke-direct {v3, p0, v0, p1}, Lo/afu$3;-><init>(Lo/afu;Lio/reactivex/SingleEmitter;Ljava/lang/String;)V

    move/from16 v0, p5

    .line 649
    invoke-direct {p0, v0}, Lo/afu;->a(I)Lcom/android/volley/Request$Priority;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 622
    invoke-direct/range {v0 .. v9}, Lo/afu;->c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;ZZ)Lo/aeU;

    return-void
.end method

.method static synthetic e(Lo/afu;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZLio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lo/afu;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZLio/reactivex/SingleEmitter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "VolleyImageLoader"

    const-string v1, "Cancelling all ImageLoader requests!"

    .line 168
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lo/afu;->b:Lo/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lo/afu;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/FragmentHostCallback;->e(Ljava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lo/afu;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    :cond_1
    iget-object v0, p0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    .line 177
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInteractiveTracker -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolleyImageLoader"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/mediaclient/api/res/AssetType;)V
    .locals 12

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshImgIfNecessary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolleyImageLoader"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "refreshImgIfNecessary: null imageView"

    .line 331
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "refreshImgIfNecessary: null image loader info object"

    .line 337
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_1
    iget-object v4, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    .line 342
    invoke-static {v4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "refreshImgIfNecessary: empty url"

    .line 343
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_2
    invoke-virtual {v0}, Lo/DigitalClock;->d()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, Lo/DigitalClock;->b:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v11}, Lo/afu;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 11

    .line 377
    sget-object v3, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lo/afu;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method public b(Ljava/lang/String;III)Lio/reactivex/Single;
    .locals 10
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

    .line 189
    invoke-static {}, Lo/aeB;->a()Z

    .line 190
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget-object v3, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v9}, Lo/afu;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZ)Lio/reactivex/Single;

    move-result-object p2

    new-instance p3, Lo/afv;

    invoke-direct {p3, p0, p1, p4}, Lo/afv;-><init>(Lo/afu;Ljava/lang/String;I)V

    .line 204
    invoke-virtual {p2, p3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "image url is blank"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 2

    .line 353
    iget-object v0, p0, Lo/afu;->f:Lo/afu$Application;

    instance-of v1, v0, Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 354
    check-cast v0, Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    const-string p1, "VolleyImageLoader"

    const-string v0, "clearing bitmap cache."

    .line 361
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lo/afu;->d()V

    :cond_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 155
    iget-object v0, p0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;IILo/bP;ZILandroid/graphics/Bitmap$Config;Z)V
    .locals 11

    move-object v10, p0

    .line 280
    sget-object v2, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    move-object v0, p4

    .line 283
    invoke-direct {p0, p4}, Lo/afu;->e(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v3

    move/from16 v0, p6

    .line 286
    invoke-direct {p0, v0}, Lo/afu;->a(I)Lcom/android/volley/Request$Priority;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object/from16 v7, p7

    move/from16 v8, p5

    move/from16 v9, p8

    .line 280
    invoke-direct/range {v0 .. v9}, Lo/afu;->c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;ZZ)Lo/aeU;

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
    .locals 1

    .line 160
    iget-object v0, p0, Lo/afu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    return-object p1
.end method

.method public e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 2

    const/4 v0, 0x0

    .line 435
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageLoaderInfo(Lo/DigitalClock;)V

    .line 437
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 439
    check-cast p1, Landroid/view/View;

    .line 440
    sget v1, Lo/MifareClassic$Activity;->a:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 442
    invoke-static {v1}, Lo/adX;->c(Ljava/lang/Runnable;)V

    .line 443
    sget v1, Lo/MifareClassic$Activity;->a:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;IILo/aeW;ZILandroid/graphics/Bitmap$Config;Z)V
    .locals 11

    .line 258
    sget-object v2, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    move-object v10, p0

    move/from16 v0, p6

    .line 264
    invoke-direct {p0, v0}, Lo/afu;->a(I)Lcom/android/volley/Request$Priority;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v4, p2

    move v5, p3

    move-object/from16 v7, p7

    move/from16 v8, p5

    move/from16 v9, p8

    .line 258
    invoke-direct/range {v0 .. v9}, Lo/afu;->c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;ZZ)Lo/aeU;

    return-void
.end method
