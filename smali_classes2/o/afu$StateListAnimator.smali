.class Lo/afu$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field public final c:Landroid/graphics/Bitmap;

.field public final e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lo/afu$StateListAnimator;->c:Landroid/graphics/Bitmap;

    .line 606
    iput-object p2, p0, Lo/afu$StateListAnimator;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-void
.end method
