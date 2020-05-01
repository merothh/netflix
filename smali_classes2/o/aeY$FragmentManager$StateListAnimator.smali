.class public final Lo/aeY$FragmentManager$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeY$FragmentManager;->d(Ljava/lang/String;Lo/LegacyRequest;Landroid/graphics/drawable/Animatable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/aeY$FragmentManager;


# direct methods
.method constructor <init>(Lo/aeY$FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 460
    iput-object p1, p0, Lo/aeY$FragmentManager$StateListAnimator;->d:Lo/aeY$FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lo/aeY$FragmentManager$StateListAnimator;->d:Lo/aeY$FragmentManager;

    iget-object v0, v0, Lo/aeY$FragmentManager;->e:Lo/aeW;

    invoke-virtual {v0, p1}, Lo/aeW;->b(Lcom/android/volley/VolleyError;)V

    .line 478
    iget-object v0, p0, Lo/aeY$FragmentManager$StateListAnimator;->d:Lo/aeY$FragmentManager;

    iget-object v0, v0, Lo/aeY$FragmentManager;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

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

    .line 466
    iget-object v0, p0, Lo/aeY$FragmentManager$StateListAnimator;->d:Lo/aeY$FragmentManager;

    iget-object v0, v0, Lo/aeY$FragmentManager;->e:Lo/aeW;

    invoke-virtual {v0, p1, p2, p3}, Lo/aeW;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    .line 467
    iget-object v0, p0, Lo/aeY$FragmentManager$StateListAnimator;->d:Lo/aeY$FragmentManager;

    iget-object v0, v0, Lo/aeY$FragmentManager;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    return-void
.end method
