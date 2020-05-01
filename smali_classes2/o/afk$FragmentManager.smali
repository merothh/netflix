.class public final Lo/afk$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ReceiverCallNotAllowedException;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afk;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ReceiverCallNotAllowedException<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/afk;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# direct methods
.method constructor <init>(Lo/afk;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    iput-object p2, p0, Lo/afk$FragmentManager;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    iput-object p3, p0, Lo/afk$FragmentManager;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            "Lo/UndoOwner<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const-string p2, "target"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dataSource"

    invoke-static {p4, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x3

    .line 290
    invoke-static {p5, p2, v0, p5}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 291
    iget-object p5, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    invoke-static {p5}, Lo/afk;->d(Lo/afk;)Ljava/util/ArrayList;

    move-result-object p5

    .line 292
    new-instance v0, Lo/afk$TaskDescription;

    .line 294
    iget-object v1, p0, Lo/afk$FragmentManager;->d:Ljava/lang/String;

    .line 295
    iget-object v2, p0, Lo/afk$FragmentManager;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    .line 296
    iget-object v3, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    invoke-static {v3, p4}, Lo/afk;->e(Lo/afk;Lcom/bumptech/glide/load/DataSource;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object p4

    .line 292
    invoke-direct {v0, p1, v1, v2, p4}, Lo/afk$TaskDescription;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)V

    .line 291
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object p1, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    invoke-static {p1}, Lo/afk;->c(Lo/afk;)V

    .line 300
    iget-object p1, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    invoke-static {p1}, Lo/afk;->b(Lo/afk;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return p2
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 268
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lo/afk$FragmentManager;->b(Landroid/graphics/Bitmap;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lo/UndoOwner;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lo/UndoOwner<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    const-string p2, "target"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x3

    .line 275
    invoke-static {p4, p2, v0, p4}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 276
    iget-object p4, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    invoke-static {p4}, Lo/afk;->a(Lo/afk;)Ljava/util/ArrayList;

    move-result-object p4

    new-instance v0, Lo/afk$Application;

    iget-object v1, p0, Lo/afk$FragmentManager;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lo/afk$Application;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object p1, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    invoke-static {p1}, Lo/afk;->c(Lo/afk;)V

    .line 278
    iget-object p1, p0, Lo/afk$FragmentManager;->c:Lo/afk;

    invoke-static {p1}, Lo/afk;->b(Lo/afk;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return p2
.end method
