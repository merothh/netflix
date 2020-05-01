.class final Lo/MifareUltralight;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/reactivex/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultObserver"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MifareUltralight;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/MifareUltralight;->e:Lio/reactivex/SingleObserver;

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    .line 481
    sget-object v0, Lo/BasicTagTechnology;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 487
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->a:Lcom/netflix/android/imageloader/api/ImageDataSource;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 486
    :cond_1
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    goto :goto_0

    .line 485
    :cond_2
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    :goto_0
    return-object p1

    .line 483
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected placeholder image"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lo/MifareUltralight;->e:Lio/reactivex/SingleObserver;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aeU;",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p1}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 463
    iget-object p1, p0, Lo/MifareUltralight;->e:Lio/reactivex/SingleObserver;

    .line 464
    new-instance p3, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    .line 465
    invoke-direct {p0, p2}, Lo/MifareUltralight;->a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object p2

    const/4 v0, 0x0

    .line 464
    invoke-direct {p3, v0, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;-><init>(ZLcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 463
    invoke-interface {p1, p3}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
