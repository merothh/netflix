.class public final Lo/afk$Fragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afk$Fragment;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lo/UndoOwner;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/afk$Fragment;


# direct methods
.method constructor <init>(Lo/afk$Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 478
    iput-object p1, p0, Lo/afk$Fragment$Activity;->a:Lo/afk$Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lo/afk$Fragment$Activity;->a:Lo/afk$Fragment;

    iget-object v0, v0, Lo/afk$Fragment;->c:Lo/aeW;

    invoke-virtual {v0, p1}, Lo/aeW;->b(Lcom/android/volley/VolleyError;)V

    .line 496
    iget-object v0, p0, Lo/afk$Fragment$Activity;->a:Lo/afk$Fragment;

    iget-object v0, v0, Lo/afk$Fragment;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->b(Lcom/android/volley/VolleyError;)V

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

    .line 484
    iget-object v0, p0, Lo/afk$Fragment$Activity;->a:Lo/afk$Fragment;

    iget-object v0, v0, Lo/afk$Fragment;->c:Lo/aeW;

    invoke-virtual {v0, p1, p2, p3}, Lo/aeW;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    .line 485
    iget-object v0, p0, Lo/afk$Fragment$Activity;->a:Lo/afk$Fragment;

    iget-object v0, v0, Lo/afk$Fragment;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    return-void
.end method
