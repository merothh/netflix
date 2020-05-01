.class Lo/afu$Activity;
.super Lo/afu$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic i:Lo/afu;


# direct methods
.method public constructor <init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lo/afu$Activity;->i:Lo/afu;

    .line 550
    invoke-direct/range {p0 .. p6}, Lo/afu$TaskDescription;-><init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    .line 559
    iget-object p2, p0, Lo/afu$Activity;->i:Lo/afu;

    invoke-static {p2, p1}, Lo/afu;->b(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    goto :goto_0

    .line 564
    :cond_0
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lo/bO;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
