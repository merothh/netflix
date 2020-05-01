.class public final Lo/aeY$FragmentManager;
.super Lo/SQLiteBlobTooBigException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeY;->a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SQLiteBlobTooBigException<",
        "Lo/LegacyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

.field final synthetic b:Lo/aeY;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

.field final synthetic e:Lo/aeW;

.field final synthetic g:Lo/afg;

.field final synthetic i:Z


# direct methods
.method constructor <init>(Lo/aeY;Lo/aeW;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lo/afg;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aeW;",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;",
            "Lo/afg;",
            "Z)V"
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lo/aeY$FragmentManager;->b:Lo/aeY;

    iput-object p2, p0, Lo/aeY$FragmentManager;->e:Lo/aeW;

    iput-object p3, p0, Lo/aeY$FragmentManager;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    iput-object p4, p0, Lo/aeY$FragmentManager;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/aeY$FragmentManager;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    iput-object p6, p0, Lo/aeY$FragmentManager;->g:Lo/afg;

    iput-boolean p7, p0, Lo/aeY$FragmentManager;->i:Z

    invoke-direct {p0}, Lo/SQLiteBlobTooBigException;-><init>()V

    return-void
.end method

.method private final d()Z
    .locals 2

    .line 488
    iget-object v0, p0, Lo/aeY$FragmentManager;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/aeY$FragmentManager;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public synthetic c(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 439
    check-cast p2, Lo/LegacyRequest;

    invoke-virtual {p0, p1, p2, p3}, Lo/aeY$FragmentManager;->d(Ljava/lang/String;Lo/LegacyRequest;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 441
    sget-object p1, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 442
    invoke-direct {p0}, Lo/aeY$FragmentManager;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object p1, p0, Lo/aeY$FragmentManager;->b:Lo/aeY;

    invoke-static {p1}, Lo/aeY;->e(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lo/aeY$TaskDescription;

    iget-object v1, p0, Lo/aeY$FragmentManager;->e:Lo/aeW;

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-direct {v0, v1, p2}, Lo/aeY$TaskDescription;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/lang/String;Lo/LegacyRequest;Landroid/graphics/drawable/Animatable;)V
    .locals 5

    .line 449
    sget-object p1, Lo/aeY;->e:Lo/aeY$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 450
    invoke-direct {p0}, Lo/aeY$FragmentManager;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object p1, p0, Lo/aeY$FragmentManager;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lo/DigitalClock;->e:Z

    .line 455
    :cond_1
    iget-object p1, p0, Lo/aeY$FragmentManager;->b:Lo/aeY;

    invoke-static {p1}, Lo/aeY;->c(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object p1

    .line 456
    new-instance p2, Lo/aeY$ActionBar;

    const/4 p3, 0x0

    .line 458
    iget-object v0, p0, Lo/aeY$FragmentManager;->c:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lo/aeY$FragmentManager;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/aeY$FragmentManager;->e:Lo/aeW;

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    goto :goto_0

    .line 460
    :cond_2
    new-instance v1, Lo/aeY$FragmentManager$StateListAnimator;

    invoke-direct {v1, p0}, Lo/aeY$FragmentManager$StateListAnimator;-><init>(Lo/aeY$FragmentManager;)V

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    .line 481
    :goto_0
    iget-object v2, p0, Lo/aeY$FragmentManager;->b:Lo/aeY;

    iget-object v3, p0, Lo/aeY$FragmentManager;->g:Lo/afg;

    iget-boolean v4, p0, Lo/aeY$FragmentManager;->i:Z

    invoke-static {v2, v3, v4}, Lo/aeY;->e(Lo/aeY;Lo/afg;Z)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object v2

    .line 456
    invoke-direct {p2, p3, v0, v1, v2}, Lo/aeY$ActionBar;-><init>(Lo/CompatibilityInfo;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)V

    .line 455
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object p1, p0, Lo/aeY$FragmentManager;->b:Lo/aeY;

    invoke-static {p1}, Lo/aeY;->b(Lo/aeY;)V

    return-void
.end method
