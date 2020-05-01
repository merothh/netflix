.class public final Lo/afk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader;
.implements Lo/TransceiveResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afk$StateListAnimator;,
        Lo/afk$Activity;,
        Lo/afk$TaskDescription;,
        Lo/afk$Application;,
        Lo/afk$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/afk$ActionBar;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/afk$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/afk$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/UndoOwner<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/reactivex/disposables/Disposable;

.field private final i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/afk$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/afk$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/afk;->d:Lo/afk$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afk;->i:Landroid/content/Context;

    .line 69
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/afk;->c:Ljava/util/HashSet;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/afk;->b:Ljava/util/ArrayList;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/afk;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lo/afk;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/afk;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 241
    invoke-static {v0, p2, v1, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    .line 244
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "ImageLoader, getImg called with empty URL!"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_2
    instance-of p2, p3, Lo/aeW;

    if-eqz p2, :cond_3

    .line 248
    move-object p2, p3

    check-cast p2, Lo/aeW;

    iget-object v0, p0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p2, v0}, Lo/aeW;->d(Ljava/util/Map;)V

    .line 251
    :cond_3
    iget-object p2, p0, Lo/afk;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lo/BackupAgentHelper;

    move-result-object p2

    .line 252
    invoke-virtual {p2}, Lo/BackupAgentHelper;->f()Lo/BackupAgent;

    move-result-object p2

    .line 253
    invoke-virtual {p2, p1}, Lo/BackupAgent;->c(Ljava/lang/String;)Lo/BackupAgent;

    move-result-object p2

    .line 254
    invoke-direct {p0, p6}, Lo/afk;->c(I)Lcom/bumptech/glide/Priority;

    move-result-object p6

    invoke-virtual {p2, p6}, Lo/BackupAgent;->b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;

    move-result-object p2

    check-cast p2, Lo/BackupAgent;

    xor-int/lit8 p6, p8, 0x1

    .line 255
    invoke-virtual {p2, p6}, Lo/BackupAgent;->d(Z)Lo/PeriodicSync;

    move-result-object p2

    check-cast p2, Lo/BackupAgent;

    .line 256
    invoke-direct {p0, p7}, Lo/afk;->b(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object p6

    invoke-virtual {p2, p6}, Lo/BackupAgent;->c(Lcom/bumptech/glide/load/DecodeFormat;)Lo/PeriodicSync;

    move-result-object p2

    const-string p6, "Glide.with(context)\n    \u2026codeFormat(bitmapConfig))"

    invoke-static {p2, p6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    check-cast p2, Lo/BackupAgent;

    .line 259
    invoke-virtual {p2}, Lo/BackupAgent;->j()Lo/PeriodicSync;

    move-result-object p2

    const-string p6, "request.centerInside()"

    invoke-static {p2, p6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/BackupAgent;

    if-eqz p9, :cond_4

    .line 262
    new-instance p6, Lo/afh;

    iget-object p7, p0, Lo/afk;->i:Landroid/content/Context;

    invoke-direct {p6, p7}, Lo/afh;-><init>(Landroid/content/Context;)V

    check-cast p6, Lo/RestoreObserver;

    invoke-static {p6}, Lo/SearchRecentSuggestionsProvider;->d(Lo/RestoreObserver;)Lo/SearchRecentSuggestionsProvider;

    move-result-object p6

    check-cast p6, Lo/PeriodicSync;

    invoke-virtual {p2, p6}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object p2

    const-string p6, "request.apply(RequestOpt\u2026Transformation(context)))"

    invoke-static {p2, p6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    :cond_4
    invoke-direct {p0, p1, p9}, Lo/afk;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p6

    .line 266
    new-instance p7, Lo/afk$StateListAnimator;

    invoke-direct {p7, p6}, Lo/afk$StateListAnimator;-><init>(Ljava/lang/String;)V

    check-cast p7, Lo/FileBackupHelperBase;

    invoke-static {p7}, Lo/SearchRecentSuggestionsProvider;->d(Lo/FileBackupHelperBase;)Lo/SearchRecentSuggestionsProvider;

    move-result-object p6

    check-cast p6, Lo/PeriodicSync;

    invoke-virtual {p2, p6}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object p2

    const-string p6, "request.apply(RequestOpt\u2026ustomCacheKey(cacheKey)))"

    invoke-static {p2, p6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance p6, Lo/afk$FragmentManager;

    invoke-direct {p6, p0, p3, p1}, Lo/afk$FragmentManager;-><init>(Lo/afk;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/lang/String;)V

    check-cast p6, Lo/ReceiverCallNotAllowedException;

    invoke-virtual {p2, p6}, Lo/BackupAgent;->b(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;

    move-result-object p1

    const-string p2, "request.listener(object \u2026\n            }\n        })"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p2, -0x80000000

    if-nez p4, :cond_5

    const/high16 p4, -0x80000000

    :cond_5
    if-nez p5, :cond_6

    goto :goto_0

    :cond_6
    move p2, p5

    .line 308
    :goto_0
    new-instance p3, Lo/afk$LoaderManager;

    invoke-direct {p3, p4, p2, p4, p2}, Lo/afk$LoaderManager;-><init>(IIII)V

    check-cast p3, Lo/UndoOwner;

    invoke-virtual {p1, p3}, Lo/BackupAgent;->d(Lo/UndoOwner;)Lo/UndoOwner;

    move-result-object p1

    const-string p2, "request.into(object : Cu\u2026\n            }\n        })"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/afk$LoaderManager;

    .line 320
    iget-object p2, p0, Lo/afk;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Lo/afk$TaskDescription;)V
    .locals 8

    .line 613
    new-instance v7, Lo/aeU;

    .line 614
    invoke-virtual {p1}, Lo/afk$TaskDescription;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 615
    invoke-virtual {p1}, Lo/afk$TaskDescription;->c()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {p1}, Lo/afk$TaskDescription;->e()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 613
    invoke-direct/range {v0 .. v6}, Lo/aeU;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 621
    invoke-virtual {p1}, Lo/afk$TaskDescription;->e()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v0

    invoke-virtual {p1}, Lo/afk$TaskDescription;->a()Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v7, p1, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    return-void
.end method

.method private final b(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .line 577
    sget-object v0, Lo/afj;->c:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 580
    sget-object p1, Lcom/bumptech/glide/load/DecodeFormat;->c:Lcom/bumptech/glide/load/DecodeFormat;

    goto :goto_0

    .line 579
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/DecodeFormat;->e:Lcom/bumptech/glide/load/DecodeFormat;

    goto :goto_0

    .line 578
    :cond_1
    sget-object p1, Lcom/bumptech/glide/load/DecodeFormat;->c:Lcom/bumptech/glide/load/DecodeFormat;

    :goto_0
    return-object p1
.end method

.method public static final synthetic b(Lo/afk;)Ljava/util/HashSet;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/afk;->c:Ljava/util/HashSet;

    return-object p0
.end method

.method private final b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p9

    .line 372
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-static {v4}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    .line 373
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "ImageLoader, showImg called with empty URL!"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 376
    :cond_2
    instance-of v4, v1, Landroid/widget/ImageView;

    if-nez v4, :cond_3

    .line 377
    sget-object v1, Lo/afk;->d:Lo/afk$ActionBar;

    check-cast v1, Lo/MessagePdu;

    return-void

    .line 380
    :cond_3
    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lo/afk;->e(Landroid/widget/ImageView;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 381
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    const-string v7, "ImageLoader, showImg call with a view where the layout is not supported. This may result in the image being pixelated."

    invoke-interface {v4, v7}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_4
    if-eqz p4, :cond_5

    .line 388
    move-object v4, p4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {p1, v4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    :cond_5
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v4

    .line 392
    new-instance v7, Lo/DigitalClock;

    move-object v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    invoke-direct {v7, p2, v9, v10, p3}, Lo/DigitalClock;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/api/res/AssetType;)V

    if-eqz v4, :cond_6

    .line 394
    iget-boolean v8, v4, Lo/DigitalClock;->e:Z

    if-eqz v8, :cond_6

    iget-object v8, v4, Lo/DigitalClock;->d:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    iget-object v10, v7, Lo/DigitalClock;->d:Ljava/lang/String;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 395
    iput-boolean v6, v7, Lo/DigitalClock;->e:Z

    .line 397
    :cond_6
    invoke-interface {p1, v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageLoaderInfo(Lo/DigitalClock;)V

    if-eqz v4, :cond_7

    .line 399
    iget-object v4, v4, Lo/DigitalClock;->d:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    invoke-static {p2, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    return-void

    .line 407
    :cond_8
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Landroid/app/Activity;

    invoke-static {v4, v6}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "ContextUtils.requireCont\u2026(), Activity::class.java)"

    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/Activity;

    .line 408
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->c(Landroid/app/Activity;)Lo/BackupAgentHelper;

    move-result-object v4

    .line 409
    invoke-virtual {v4, p2}, Lo/BackupAgentHelper;->e(Ljava/lang/String;)Lo/BackupAgent;

    move-result-object v4

    move/from16 v6, p7

    .line 410
    invoke-direct {p0, v6}, Lo/afk;->c(I)Lcom/bumptech/glide/Priority;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/BackupAgent;->b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;

    move-result-object v4

    const-string v6, "Glide.with(activity)\n   \u2026oGlidePriority(priority))"

    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    check-cast v4, Lo/BackupAgent;

    .line 411
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->e()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 412
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result v6

    invoke-virtual {v4, v6}, Lo/BackupAgent;->d(I)Lo/PeriodicSync;

    move-result-object v4

    const-string v6, "request.placeholder(stat\u2026gConfig.placeholderResId)"

    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lo/BackupAgent;

    .line 414
    :cond_9
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->a()I

    move-result v6

    if-eqz v6, :cond_a

    .line 415
    invoke-interface/range {p5 .. p5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->a()I

    move-result v6

    invoke-virtual {v4, v6}, Lo/BackupAgent;->c(I)Lo/PeriodicSync;

    move-result-object v4

    const-string v6, "request.error(staticImgConfig.onFailResId)"

    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lo/BackupAgent;

    :cond_a
    if-eqz p6, :cond_b

    .line 418
    new-instance v6, Lo/afk$Activity;

    invoke-direct {v6}, Lo/afk$Activity;-><init>()V

    check-cast v6, Lo/AndroidTestBaseUpdater;

    invoke-static {v6}, Lo/SdpSapsRecord;->d(Lo/AndroidTestBaseUpdater;)Lo/SdpSapsRecord;

    move-result-object v6

    check-cast v6, Lo/BackupDataInput;

    invoke-virtual {v4, v6}, Lo/BackupAgent;->b(Lo/BackupDataInput;)Lo/BackupAgent;

    move-result-object v4

    const-string v6, "request.transition(Drawa\u2026ith(TransitionFactory()))"

    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    :cond_b
    invoke-virtual {v4}, Lo/BackupAgent;->j()Lo/PeriodicSync;

    move-result-object v4

    const-string v6, "request.centerInside()"

    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lo/BackupAgent;

    if-eqz v3, :cond_c

    .line 423
    new-instance v6, Lo/afh;

    iget-object v7, v0, Lo/afk;->i:Landroid/content/Context;

    invoke-direct {v6, v7}, Lo/afh;-><init>(Landroid/content/Context;)V

    check-cast v6, Lo/RestoreObserver;

    invoke-static {v6}, Lo/SearchRecentSuggestionsProvider;->d(Lo/RestoreObserver;)Lo/SearchRecentSuggestionsProvider;

    move-result-object v6

    check-cast v6, Lo/PeriodicSync;

    invoke-virtual {v4, v6}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object v4

    const-string v6, "request.apply(RequestOpt\u2026Transformation(context)))"

    invoke-static {v4, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    :cond_c
    invoke-direct {p0, p2, v3}, Lo/afk;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 427
    new-instance v6, Lo/afk$StateListAnimator;

    invoke-direct {v6, v3}, Lo/afk$StateListAnimator;-><init>(Ljava/lang/String;)V

    check-cast v6, Lo/FileBackupHelperBase;

    invoke-static {v6}, Lo/SearchRecentSuggestionsProvider;->d(Lo/FileBackupHelperBase;)Lo/SearchRecentSuggestionsProvider;

    move-result-object v3

    check-cast v3, Lo/PeriodicSync;

    invoke-virtual {v4, v3}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object v3

    const-string v4, "request.apply(RequestOpt\u2026ustomCacheKey(cacheKey)))"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    new-instance v4, Lo/aeW;

    invoke-direct {v4, p1, p2, v5}, Lo/aeW;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Z)V

    .line 434
    iget-object v5, v0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v4, v5}, Lo/aeW;->d(Ljava/util/Map;)V

    .line 437
    new-instance v5, Lo/afk$Fragment;

    move-object p3, v5

    move-object p4, p0

    move-object/from16 p5, v4

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move-object/from16 p8, p10

    invoke-direct/range {p3 .. p8}, Lo/afk$Fragment;-><init>(Lo/afk;Lo/aeW;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    check-cast v5, Lo/ReceiverCallNotAllowedException;

    invoke-virtual {v3, v5}, Lo/BackupAgent;->b(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;

    move-result-object v2

    const-string v3, "request.listener(object \u2026\n            }\n        })"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lo/BackupAgent;->d(Landroid/widget/ImageView;)Lo/UndoManager;

    move-result-object v1

    const-string v2, "request.into(imageView)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    iget-object v2, v0, Lo/afk;->c:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lo/afk;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 370
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

    invoke-direct/range {v1 .. v11}, Lo/afk;->b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method private final c(I)Lcom/bumptech/glide/Priority;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 572
    sget-object p1, Lcom/bumptech/glide/Priority;->a:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 571
    :cond_0
    sget-object p1, Lcom/bumptech/glide/Priority;->a:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 570
    :cond_1
    sget-object p1, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    :goto_0
    return-object p1
.end method

.method private final c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "com.netflix.BlurTransformation.v1"

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 639
    :goto_0
    invoke-static {p1}, Lo/afT;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {p1}, Lo/afT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 648
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final c(Lo/afk$Application;)V
    .locals 2

    .line 625
    invoke-virtual {p1}, Lo/afk$Application;->e()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v0

    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-virtual {p1}, Lo/afk$Application;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->b(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static final synthetic c(Lo/afk;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lo/afk;->e()V

    return-void
.end method

.method private final d(Lcom/bumptech/glide/load/DataSource;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
    .locals 1

    .line 559
    sget-object v0, Lo/afj;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/DataSource;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 564
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 563
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    goto :goto_0

    .line 562
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    goto :goto_0

    .line 561
    :cond_3
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    goto :goto_0

    .line 560
    :cond_4
    sget-object p1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    :goto_0
    return-object p1
.end method

.method public static final synthetic d(Lo/afk;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/afk;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic d(Lo/afk;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/afk;->h:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic d(Lo/afk;Lo/afk$Application;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lo/afk;->c(Lo/afk$Application;)V

    return-void
.end method

.method private final e(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;
    .locals 1

    .line 535
    new-instance v0, Lo/afk$TaskStackBuilder;

    invoke-direct {v0, p1}, Lo/afk$TaskStackBuilder;-><init>(Lo/bP;)V

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    return-object v0
.end method

.method public static final synthetic e(Lo/afk;Lcom/bumptech/glide/load/DataSource;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lo/afk;->d(Lcom/bumptech/glide/load/DataSource;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object p0

    return-object p0
.end method

.method private final e()V
    .locals 6

    .line 587
    iget-object v0, p0, Lo/afk;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 716
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 717
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

    check-cast v4, Lo/afk$TaskDescription;

    .line 587
    invoke-virtual {v4}, Lo/afk$TaskDescription;->a()Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

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

    .line 718
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 588
    iget-object v0, p0, Lo/afk;->b:Ljava/util/ArrayList;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 589
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/afk$TaskDescription;

    .line 590
    invoke-direct {p0, v1}, Lo/afk;->a(Lo/afk$TaskDescription;)V

    goto :goto_2

    .line 593
    :cond_3
    iget-object v0, p0, Lo/afk;->h:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/afk;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lo/afk;->a:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    :cond_5
    const-wide/16 v0, 0x64

    .line 595
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 596
    new-instance v1, Lo/afk$PendingIntent;

    invoke-direct {v1, p0}, Lo/afk$PendingIntent;-><init>(Lo/afk;)V

    check-cast v1, Lio/reactivex/functions/Action;

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/afk;->h:Lio/reactivex/disposables/Disposable;

    :cond_6
    return-void
.end method

.method public static final synthetic e(Lo/afk;Lo/afk$TaskDescription;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lo/afk;->a(Lo/afk$TaskDescription;)V

    return-void
.end method

.method private final e(Landroid/widget/ImageView;)Z
    .locals 2

    .line 523
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 524
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 168
    iget-object v0, p0, Lo/afk;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UndoOwner;

    .line 169
    iget-object v2, p0, Lo/afk;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lo/BackupAgentHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lo/afk;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 173
    iget-object v0, p0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 174
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d()V

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lo/afk;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 3

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 182
    sget-object p1, Lo/afk;->d:Lo/afk$ActionBar;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 186
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    if-nez v0, :cond_1

    .line 188
    sget-object p1, Lo/afk;->d:Lo/afk$ActionBar;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 192
    :cond_1
    iget-object v1, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    sget-object p1, Lo/afk;->d:Lo/afk$ActionBar;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 199
    :cond_2
    iget-object v2, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    const/4 v4, 0x0

    .line 202
    invoke-virtual {v0}, Lo/DigitalClock;->d()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    move-result-object v5

    const-string v1, "info.getImgViewConfig()"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 205
    iget-object v8, v0, Lo/DigitalClock;->b:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 197
    invoke-static/range {v0 .. v12}, Lo/afk;->b(Lo/afk;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;ILjava/lang/Object;)V

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

    .line 148
    sget-object v4, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 145
    invoke-direct/range {v1 .. v11}, Lo/afk;->b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method public b(Ljava/lang/String;III)Lio/reactivex/Single;
    .locals 3
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

    .line 329
    invoke-static {v1, v0, v2, v1}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 330
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    invoke-direct {p0, p1, v0}, Lo/afk;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lo/afk;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lo/BackupAgentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lo/BackupAgentHelper;->g()Lo/BackupAgent;

    move-result-object v1

    .line 337
    invoke-virtual {v1, p1}, Lo/BackupAgent;->c(Ljava/lang/String;)Lo/BackupAgent;

    move-result-object p1

    .line 338
    invoke-direct {p0, p4}, Lo/afk;->c(I)Lcom/bumptech/glide/Priority;

    move-result-object p4

    invoke-virtual {p1, p4}, Lo/BackupAgent;->b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/BackupAgent;

    .line 339
    new-instance p4, Lo/afk$StateListAnimator;

    invoke-direct {p4, v0}, Lo/afk$StateListAnimator;-><init>(Ljava/lang/String;)V

    check-cast p4, Lo/FileBackupHelperBase;

    invoke-static {p4}, Lo/SearchRecentSuggestionsProvider;->d(Lo/FileBackupHelperBase;)Lo/SearchRecentSuggestionsProvider;

    move-result-object p4

    check-cast p4, Lo/PeriodicSync;

    invoke-virtual {p1, p4}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object p1

    const-string p4, "Glide.with(context).down\u2026ustomCacheKey(cacheKey)))"

    invoke-static {p1, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p4, -0x80000000

    if-nez p2, :cond_0

    const/high16 p2, -0x80000000

    :cond_0
    if-nez p3, :cond_1

    const/high16 p3, -0x80000000

    .line 343
    :cond_1
    invoke-virtual {p1, p2, p3}, Lo/BackupAgent;->b(II)Lo/MutableContextWrapper;

    move-result-object p1

    const-string p2, "request.submit(desiredWidth, desiredHeight)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance p2, Lo/afk$Dialog;

    invoke-direct {p2, p1}, Lo/afk$Dialog;-><init>(Lo/MutableContextWrapper;)V

    check-cast p2, Lio/reactivex/SingleOnSubscribe;

    invoke-static {p2}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    .line 352
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.create<DownloadIm\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 331
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 82
    iget-object v0, p0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 124
    sget-object v4, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    move-object v1, p0

    .line 125
    invoke-direct {p0, v0}, Lo/afk;->e(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-result-object v5

    move-object v2, p0

    move v6, p2

    move v7, p3

    move/from16 v8, p6

    move/from16 v10, p5

    move/from16 v11, p8

    .line 122
    invoke-direct/range {v2 .. v11}, Lo/afk;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
    .locals 1

    const-string v0, "trackerId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lo/afk;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    return-object p1
.end method

.method public e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 2

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    check-cast v0, Lo/DigitalClock;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageLoaderInfo(Lo/DigitalClock;)V

    .line 162
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/afk;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lo/BackupAgentHelper;

    move-result-object v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lo/BackupAgentHelper;->b(Landroid/view/View;)V

    :cond_0
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

    .line 101
    sget-object v4, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 102
    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    move-object v2, p0

    move v6, p2

    move v7, p3

    move/from16 v8, p6

    move/from16 v10, p5

    move/from16 v11, p8

    .line 99
    invoke-direct/range {v2 .. v11}, Lo/afk;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V

    return-void
.end method
