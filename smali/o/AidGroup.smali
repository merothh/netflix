.class final Lo/AidGroup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bP;


# instance fields
.field private final e:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AidGroup;->e:Lio/reactivex/SingleEmitter;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Lo/CompatibilityInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 421
    iget-object p2, p0, Lo/AidGroup;->e:Lio/reactivex/SingleEmitter;

    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    sget-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-direct {v0, p1, p3, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;-><init>(Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    invoke-interface {p2, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 426
    iget-object v0, p0, Lo/AidGroup;->e:Lio/reactivex/SingleEmitter;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
