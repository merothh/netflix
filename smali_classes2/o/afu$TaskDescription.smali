.class Lo/afu$TaskDescription;
.super Lo/aeW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field protected final b:Landroid/graphics/Bitmap$Config;

.field protected final d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

.field protected final f:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

.field final synthetic h:Lo/afu;


# direct methods
.method public constructor <init>(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lo/afu$TaskDescription;->h:Lo/afu;

    const/4 p1, 0x0

    .line 459
    invoke-direct {p0, p2, p3, p1}, Lo/aeW;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Z)V

    .line 460
    iput-object p4, p0, Lo/afu$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    .line 461
    iput-object p5, p0, Lo/afu$TaskDescription;->b:Landroid/graphics/Bitmap$Config;

    .line 462
    iput-object p6, p0, Lo/afu$TaskDescription;->f:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    return-void
.end method

.method private a()Z
    .locals 2

    .line 536
    iget-object v0, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    .line 538
    :goto_0
    iget-object v1, p0, Lo/afu$TaskDescription;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 467
    invoke-super {p0, p1}, Lo/aeW;->b(Lcom/android/volley/VolleyError;)V

    .line 468
    iget-object v0, p0, Lo/afu$TaskDescription;->f:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->b(Lcom/android/volley/VolleyError;)V

    .line 471
    :cond_0
    invoke-direct {p0}, Lo/afu$TaskDescription;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 475
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading bitmap for url: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/afu$TaskDescription;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VolleyImageLoader"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object p1, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/afu$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->a()I

    move-result p1

    if-eqz p1, :cond_2

    .line 477
    iget-object p1, p0, Lo/afu$TaskDescription;->h:Lo/afu;

    iget-object v0, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    iget-object v1, p0, Lo/afu$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    .line 478
    invoke-interface {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->a()I

    move-result v1

    .line 477
    invoke-static {p1, v0, v1}, Lo/afu;->d(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;I)V

    :cond_2
    return-void
.end method

.method protected b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p2, :cond_0

    .line 521
    iget-object p2, p0, Lo/afu$TaskDescription;->h:Lo/afu;

    invoke-static {p2, p1}, Lo/afu;->b(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lo/afu$TaskDescription;->h:Lo/afu;

    invoke-static {v0, p1, p2}, Lo/afu;->a(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V
    .locals 3
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

    const/4 p3, 0x0

    .line 485
    invoke-super {p0, p1, p2, p3}, Lo/aeW;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    .line 486
    invoke-direct {p0}, Lo/afu$TaskDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-virtual {p1}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 496
    iget-object v1, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/DigitalClock;->d(Z)V

    .line 502
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    iget-object v1, p0, Lo/afu$TaskDescription;->h:Lo/afu;

    iget-object v2, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-static {v1, v2, v0}, Lo/afu;->a(Lo/afu;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-virtual {p0, v1, v0}, Lo/afu$TaskDescription;->b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 509
    :cond_3
    iget-object v1, p0, Lo/afu$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-virtual {p0, v1, v0}, Lo/afu$TaskDescription;->b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Landroid/graphics/Bitmap;)V

    .line 511
    :goto_0
    iget-object v0, p0, Lo/afu$TaskDescription;->f:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    if-eqz v0, :cond_4

    .line 512
    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    :cond_4
    return-void
.end method
