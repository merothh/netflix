.class final Lo/ApduServiceInfo$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ApduServiceInfo;->d(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ApduServiceInfo;

.field final synthetic d:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

.field final synthetic e:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lo/ApduServiceInfo;Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)V
    .locals 0

    iput-object p1, p0, Lo/ApduServiceInfo$StateListAnimator;->a:Lo/ApduServiceInfo;

    iput-object p2, p0, Lo/ApduServiceInfo$StateListAnimator;->e:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lo/ApduServiceInfo$StateListAnimator;->d:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lo/ApduServiceInfo$StateListAnimator;->a:Lo/ApduServiceInfo;

    iget-object v1, p0, Lo/ApduServiceInfo$StateListAnimator;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lo/ApduServiceInfo$StateListAnimator;->d:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-static {v0, v1, v2}, Lo/ApduServiceInfo;->b(Lo/ApduServiceInfo;Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
