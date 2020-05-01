.class Lo/afu$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentManagerNonConfig$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afu;->c(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IILcom/android/volley/Request$Priority;Landroid/graphics/Bitmap$Config;ZZ)Lo/aeU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FragmentManagerNonConfig$StateListAnimator<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/afu;

.field final synthetic d:Z

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/afu;Ljava/lang/String;ZZ)V
    .locals 0

    .line 743
    iput-object p1, p0, Lo/afu$1;->c:Lo/afu;

    iput-object p2, p0, Lo/afu$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lo/afu$1;->e:Z

    iput-boolean p4, p0, Lo/afu$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic d(Lo/afu$1;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/afu$1;->e(Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lo/afu$1;->c:Lo/afu;

    invoke-static {v0, p1, p3, p2}, Lo/afu;->a(Lo/afu;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lo/afu$1;->c:Lo/afu;

    invoke-static {v0}, Lo/afu;->c(Lo/afu;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lo/afu$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aeS;

    .line 748
    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->b:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->toString()Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 750
    sget-object v1, Lo/afu$7;->c:[I

    invoke-virtual {v0}, Lo/aeS;->d()Lcom/android/volley/Request$ResourceLocationType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/Request$ResourceLocationType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->toString()Ljava/lang/String;

    goto :goto_0

    .line 752
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->toString()Ljava/lang/String;

    .line 761
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lo/afu$1;->e:Z

    if-eqz v0, :cond_3

    .line 763
    sget-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;->c(Landroid/content/Context;)Lcom/netflix/android/imageloader/api/BlurProcessor;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    .line 764
    invoke-interface {v0, p1, v1}, Lcom/netflix/android/imageloader/api/BlurProcessor;->d(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)Lio/reactivex/Single;

    move-result-object p1

    .line 765
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lo/afu$1;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lo/afu$1;->d:Z

    new-instance v2, Lo/afy;

    invoke-direct {v2, p0, v0, v1}, Lo/afy;-><init>(Lo/afu$1;Ljava/lang/String;Z)V

    .line 766
    invoke-virtual {p1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 770
    :cond_3
    iget-object v0, p0, Lo/afu$1;->c:Lo/afu;

    iget-object v1, p0, Lo/afu$1;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lo/afu$1;->d:Z

    invoke-static {v0, v1, p1, v2}, Lo/afu;->a(Lo/afu;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    :goto_1
    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 743
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/afu$1;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
