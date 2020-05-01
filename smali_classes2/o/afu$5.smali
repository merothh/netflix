.class Lo/afu$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afu;->e(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/bP;

.field final synthetic d:Lo/afu;


# direct methods
.method constructor <init>(Lo/afu;Lo/bP;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lo/afu$5;->d:Lo/afu;

    iput-object p2, p0, Lo/afu$5;->c:Lo/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lo/afu$5;->c:Lo/bP;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lo/bP;->c(Ljava/lang/String;)V

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

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 314
    iget-object p1, p0, Lo/afu$5;->c:Lo/bP;

    invoke-interface {p1, p2, p2, p2}, Lo/bP;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lo/CompatibilityInfo;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object p3, p0, Lo/afu$5;->c:Lo/bP;

    invoke-virtual {p1}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lo/aeU;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1, p2}, Lo/bP;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lo/CompatibilityInfo;)V

    :goto_0
    return-void
.end method
