.class Lo/afu$ActionBar;
.super Lo/afu$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic g:Lo/afu;


# direct methods
.method public constructor <init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lo/afu$ActionBar;->g:Lo/afu;

    .line 572
    invoke-direct/range {p0 .. p6}, Lo/afu$TaskDescription;-><init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p2, :cond_0

    .line 581
    iget-object p2, p0, Lo/afu$ActionBar;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    invoke-interface {p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result p2

    if-eqz p2, :cond_1

    .line 582
    iget-object p2, p0, Lo/afu$ActionBar;->g:Lo/afu;

    iget-object v0, p0, Lo/afu$ActionBar;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result v0

    invoke-static {p2, p1, v0}, Lo/afu;->d(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;I)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lo/afu$ActionBar;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    .line 590
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v1

    .line 591
    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lo/afu$ActionBar;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    invoke-interface {v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result v2

    invoke-static {p1, v2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 589
    invoke-interface {v0, v1, p1, p2}, Lo/bO;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
