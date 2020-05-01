.class public final Lo/OffHostApduService;
.super Lo/Zv;
.source ""

# interfaces
.implements Lo/ErrorCodes;
.implements Lo/FormatException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OffHostApduService$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Zv<",
        "Lo/xZ;",
        ">;",
        "Lo/ErrorCodes;",
        "Lo/FormatException;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final e:Lo/OffHostApduService$StateListAnimator;


# instance fields
.field private final a:Lo/NfcAdapter;

.field private final b:Landroid/content/Context;

.field private final j:Lo/NfcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/OffHostApduService$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/OffHostApduService$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/OffHostApduService;->e:Lo/OffHostApduService$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/NfcAdapter;Lo/NfcManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoadingTrackers"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lo/Zv;-><init>()V

    iput-object p1, p0, Lo/OffHostApduService;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/OffHostApduService;->a:Lo/NfcAdapter;

    iput-object p3, p0, Lo/OffHostApduService;->j:Lo/NfcManager;

    return-void
.end method

.method public static final synthetic a(Lo/OffHostApduService;Lo/xZ;)Lo/TransceiveResult;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lo/OffHostApduService;->b(Lo/xZ;)Lo/TransceiveResult;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lo/xZ;)Lo/TransceiveResult;
    .locals 1

    .line 364
    invoke-interface {p1}, Lo/xZ;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/TransceiveResult;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.android.imageloader.impl.ForMigrationOnlyImageLoader"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c(Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)Lo/Ndef;
    .locals 4

    .line 310
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->e()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_2
    iget-object v0, p0, Lo/OffHostApduService;->a:Lo/NfcAdapter;

    invoke-interface {v0}, Lo/NfcAdapter;->d()I

    move-result v0

    .line 316
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 317
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_5
    iget-object p1, p0, Lo/OffHostApduService;->a:Lo/NfcAdapter;

    invoke-interface {p1}, Lo/NfcAdapter;->e()I

    move-result v2

    .line 320
    :goto_1
    new-instance p1, Lo/Ndef;

    invoke-direct {p1, v0, v2}, Lo/Ndef;-><init>(II)V

    return-object p1
.end method

.method private final d(Landroid/widget/ImageView;)V
    .locals 2

    .line 328
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    sget-object p1, Lo/OffHostApduService;->e:Lo/OffHostApduService$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 334
    sget-object v0, Lo/OffHostApduService;->e:Lo/OffHostApduService$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_2

    .line 341
    sget-object v0, Lo/OffHostApduService;->e:Lo/OffHostApduService$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 353
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 354
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    if-nez v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 356
    :cond_4
    sget-object p1, Lo/OffHostApduService;->e:Lo/OffHostApduService$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Lo/NfcEvent$Activity;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NfcEvent$Activity;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/NfcEvent$StateListAnimator;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "ImageLoaderRepository called from non-main thread"

    .line 58
    invoke-static {v1, v0}, Lo/aeB;->b(Ljava/lang/String;Z)Z

    .line 59
    invoke-virtual {p1}, Lo/NfcEvent$Activity;->c()Z

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    .line 62
    new-instance v2, Lo/OffHostApduService$Fragment;

    invoke-direct {v2, p0, p1, v0, v1}, Lo/OffHostApduService$Fragment;-><init>(Lo/OffHostApduService;Lo/NfcEvent$Activity;ZI)V

    check-cast v2, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v2}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "Single.create<PrefetchIm\u2026              )\n        }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lo/OffHostApduService;->j:Lo/NfcManager;

    invoke-interface {v1}, Lo/NfcManager;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Tag;

    .line 83
    invoke-interface {v2, p1, v0}, Lo/Tag;->a(Lo/NfcEvent$Activity;Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lo/OffHostApduService;->d()Lo/xZ;

    move-result-object v0

    return-object v0
.end method

.method public b(Lo/NfcActivityManager$Activity;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/NfcActivityManager$Activity;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/NfcActivityManager$ActionBar;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lo/OffHostApduService;->g()Lio/reactivex/Single;

    move-result-object v0

    .line 91
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 92
    new-instance v1, Lo/OffHostApduService$Activity;

    invoke-direct {v1, p0, p1}, Lo/OffHostApduService$Activity;-><init>(Lo/OffHostApduService;Lo/NfcActivityManager$Activity;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "requestAgentSingle()\n   \u2026          )\n            }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lo/OffHostApduService;->j:Lo/NfcManager;

    invoke-interface {v1}, Lo/NfcManager;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Tag;

    .line 101
    invoke-interface {v2, p1, v0}, Lo/Tag;->c(Lo/NfcActivityManager$Activity;Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()Z
    .locals 3

    .line 107
    sget-object v0, Lo/dN;->d:Lo/dN$ActionBar;

    invoke-virtual {v0}, Lo/dN$ActionBar;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected image loader type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 2

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImageLoaderRepository called from non-main thread"

    const/4 v1, 0x1

    .line 237
    invoke-static {v0, v1}, Lo/aeB;->b(Ljava/lang/String;Z)Z

    .line 238
    invoke-virtual {p0}, Lo/OffHostApduService;->i()Lio/reactivex/Observable;

    move-result-object v0

    .line 239
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/uber/autodispose/android/ViewScopeProvider;->b(Landroid/view/View;)Lcom/uber/autodispose/ScopeProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 241
    new-instance v1, Lo/OffHostApduService$ActionBar;

    invoke-direct {v1, p0, p1}, Lo/OffHostApduService$ActionBar;-><init>(Lo/OffHostApduService;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 244
    sget-object p1, Lo/OffHostApduService$Application;->c:Lo/OffHostApduService$Application;

    check-cast p1, Lio/reactivex/functions/Consumer;

    .line 240
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->c(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)V
    .locals 12

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "ImageLoaderRepository called from non-main thread"

    .line 179
    invoke-static {v1, v0}, Lo/aeB;->b(Ljava/lang/String;Z)Z

    .line 180
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "imageView.imageView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/OffHostApduService;->d(Landroid/widget/ImageView;)V

    .line 182
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->d()Lio/reactivex/SingleObserver;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    if-nez v6, :cond_1

    .line 185
    invoke-interface {p1, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_0

    .line 187
    new-instance p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    invoke-direct {p1, v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;-><init>(ZLcom/netflix/android/imageloader/api/ImageDataSource;)V

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 192
    :cond_1
    invoke-direct {p0, p2}, Lo/OffHostApduService;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)Lo/Ndef;

    move-result-object v7

    .line 193
    invoke-static {v6}, Lo/HostApduService;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 194
    invoke-virtual {v7}, Lo/Ndef;->a()I

    move-result p2

    if-eqz p2, :cond_2

    .line 195
    invoke-virtual {v7}, Lo/Ndef;->a()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageResource(I)V

    :cond_2
    if-eqz v1, :cond_3

    .line 198
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 203
    :cond_4
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->j()Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    move-result-object v3

    sget-object v4, Lo/HostNfcFService;->d:[I

    invoke-virtual {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v0, :cond_6

    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_0

    .line 205
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_6
    const/4 v9, 0x1

    .line 208
    :goto_0
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->f()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 211
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 209
    :cond_8
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    move-object v10, v0

    .line 212
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->e()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo/Serializable;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_c

    :goto_4
    const-string v3, "request.fragment?.lifecy\u2026?.lifecycle as Lifecycle)"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    .line 213
    new-instance v2, Lo/MifareUltralight;

    invoke-direct {v2, v6, v1}, Lo/MifareUltralight;-><init>(Ljava/lang/String;Lio/reactivex/SingleObserver;)V

    :cond_b
    move-object v11, v2

    .line 215
    invoke-virtual {p0}, Lo/OffHostApduService;->i()Lio/reactivex/Observable;

    move-result-object v1

    .line 216
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, v2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v0

    const-string v2, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 505
    check-cast v0, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v0}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableConverter;

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 218
    new-instance v1, Lo/OffHostApduService$TaskDescription;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v11}, Lo/OffHostApduService$TaskDescription;-><init>(Lo/OffHostApduService;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lo/Ndef;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;ILandroid/graphics/Bitmap$Config;Lo/MifareUltralight;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 230
    sget-object p1, Lo/OffHostApduService$Dialog;->b:Lo/OffHostApduService$Dialog;

    check-cast p1, Lio/reactivex/functions/Consumer;

    .line 217
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->c(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    .line 212
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.lifecycle.Lifecycle"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected d()Lo/xZ;
    .locals 2

    .line 304
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->h()Lo/xZ;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "agent is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "ImageLoaderRepository called from non-main thread"

    .line 129
    invoke-static {v1, v0}, Lo/aeB;->b(Ljava/lang/String;Z)Z

    .line 130
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->h()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    move-object v7, v0

    .line 135
    new-instance v0, Lo/OffHostApduService$FragmentManager;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lo/OffHostApduService$FragmentManager;-><init>(Lo/OffHostApduService;Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;ZILandroid/graphics/Bitmap$Config;)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "Single.create<GetImageRe\u2026              )\n        }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lo/OffHostApduService;->j:Lo/NfcManager;

    invoke-interface {v1}, Lo/NfcManager;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Tag;

    .line 170
    invoke-interface {v2, p1, v0}, Lo/Tag;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_2

    :cond_2
    return-object v0
.end method
