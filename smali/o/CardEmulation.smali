.class final Lo/CardEmulation;
.super Lo/aeW;
.source ""


# instance fields
.field private final b:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 433
    invoke-direct {p0, v0, p1, v1}, Lo/aeW;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Z)V

    iput-object p2, p0, Lo/CardEmulation;->b:Lio/reactivex/SingleEmitter;

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 448
    invoke-super {p0, p1}, Lo/aeW;->b(Lcom/android/volley/VolleyError;)V

    .line 449
    iget-object v0, p0, Lo/CardEmulation;->b:Lio/reactivex/SingleEmitter;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V
    .locals 2
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

    .line 439
    invoke-super {p0, p1, p2, p3}, Lo/aeW;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p1}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 443
    iget-object p2, p0, Lo/CardEmulation;->b:Lio/reactivex/SingleEmitter;

    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    sget-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-direct {v0, p1, p3, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;-><init>(Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    invoke-interface {p2, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
