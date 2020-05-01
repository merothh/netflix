.class public final Lo/afk$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ReceiverCallNotAllowedException;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afk;->b(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ReceiverCallNotAllowedException<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

.field final synthetic b:Lo/afk;

.field final synthetic c:Lo/aeW;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# direct methods
.method constructor <init>(Lo/afk;Lo/aeW;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aeW;",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;",
            ")V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lo/afk$Fragment;->b:Lo/afk;

    iput-object p2, p0, Lo/afk$Fragment;->c:Lo/aeW;

    iput-object p3, p0, Lo/afk$Fragment;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    iput-object p4, p0, Lo/afk$Fragment;->d:Ljava/lang/String;

    iput-object p5, p0, Lo/afk$Fragment;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Z
    .locals 2

    .line 508
    iget-object v0, p0, Lo/afk$Fragment;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, v0, Lo/DigitalClock;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/afk$Fragment;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lo/UndoOwner<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const-string p1, "target"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataSource"

    invoke-static {p4, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p5, 0x3

    .line 464
    invoke-static {p2, p1, p5, p2}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 465
    iget-object p5, p0, Lo/afk$Fragment;->b:Lo/afk;

    invoke-static {p5}, Lo/afk;->b(Lo/afk;)Ljava/util/HashSet;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 466
    invoke-direct {p0}, Lo/afk$Fragment;->a()Z

    move-result p3

    const/4 p5, 0x1

    if-eqz p3, :cond_0

    return p5

    .line 471
    :cond_0
    iget-object p3, p0, Lo/afk$Fragment;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {p3}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->a()Lo/DigitalClock;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 472
    iput-boolean p5, p3, Lo/DigitalClock;->e:Z

    .line 473
    :cond_1
    iget-object p3, p0, Lo/afk$Fragment;->b:Lo/afk;

    invoke-static {p3}, Lo/afk;->d(Lo/afk;)Ljava/util/ArrayList;

    move-result-object p3

    .line 474
    new-instance p5, Lo/afk$TaskDescription;

    .line 476
    iget-object v0, p0, Lo/afk$Fragment;->d:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lo/afk$Fragment;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/afk$Fragment;->c:Lo/aeW;

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    goto :goto_0

    .line 478
    :cond_2
    new-instance v1, Lo/afk$Fragment$Activity;

    invoke-direct {v1, p0}, Lo/afk$Fragment$Activity;-><init>(Lo/afk$Fragment;)V

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    .line 499
    :goto_0
    iget-object v2, p0, Lo/afk$Fragment;->b:Lo/afk;

    invoke-static {v2, p4}, Lo/afk;->e(Lo/afk;Lcom/bumptech/glide/load/DataSource;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object p4

    .line 474
    invoke-direct {p5, p2, v0, v1, p4}, Lo/afk$TaskDescription;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)V

    .line 473
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object p2, p0, Lo/afk$Fragment;->b:Lo/afk;

    invoke-static {p2}, Lo/afk;->c(Lo/afk;)V

    return p1
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 6

    .line 437
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/afk$Fragment;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lo/UndoOwner;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lo/UndoOwner<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const-string p2, "target"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x3

    .line 444
    invoke-static {p4, p2, v0, p4}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 445
    iget-object p4, p0, Lo/afk$Fragment;->b:Lo/afk;

    invoke-static {p4}, Lo/afk;->b(Lo/afk;)Ljava/util/HashSet;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 446
    invoke-direct {p0}, Lo/afk$Fragment;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 451
    :cond_0
    iget-object p3, p0, Lo/afk$Fragment;->b:Lo/afk;

    invoke-static {p3}, Lo/afk;->a(Lo/afk;)Ljava/util/ArrayList;

    move-result-object p3

    new-instance p4, Lo/afk$Application;

    iget-object v0, p0, Lo/afk$Fragment;->c:Lo/aeW;

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p4, v0, p1}, Lo/afk$Application;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/lang/Throwable;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object p1, p0, Lo/afk$Fragment;->b:Lo/afk;

    invoke-static {p1}, Lo/afk;->c(Lo/afk;)V

    return p2
.end method
