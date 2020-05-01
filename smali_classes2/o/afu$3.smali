.class Lo/afu$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afu;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;IIILandroid/graphics/Bitmap$Config;ZZLio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/afu;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lo/afu;Lio/reactivex/SingleEmitter;Ljava/lang/String;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lo/afu$3;->b:Lo/afu;

    iput-object p2, p0, Lo/afu$3;->d:Lio/reactivex/SingleEmitter;

    iput-object p3, p0, Lo/afu$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lo/afu$3;->d:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

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

    .line 631
    invoke-virtual {p1}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 632
    iget-object p3, p0, Lo/afu$3;->d:Lio/reactivex/SingleEmitter;

    new-instance v0, Lo/afu$StateListAnimator;

    .line 633
    invoke-virtual {p1}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lo/afu$StateListAnimator;-><init>(Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)V

    .line 632
    invoke-interface {p3, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
