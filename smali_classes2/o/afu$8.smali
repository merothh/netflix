.class Lo/afu$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afu;->a(Ljava/lang/String;Lo/aeS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/afu;

.field final synthetic d:Lo/aeS;


# direct methods
.method constructor <init>(Lo/afu;Lo/aeS;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lo/afu$8;->c:Lo/afu;

    iput-object p2, p0, Lo/afu$8;->d:Lo/aeS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 868
    iget-object v0, p0, Lo/afu$8;->c:Lo/afu;

    invoke-static {v0}, Lo/afu;->b(Lo/afu;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aeS;

    .line 869
    iget-object v3, v1, Lo/aeS;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/aeU;

    .line 873
    iget-object v5, v4, Lo/aeU;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    if-nez v5, :cond_1

    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {v1}, Lo/aeS;->b()Lcom/android/volley/VolleyError;

    move-result-object v5

    if-nez v5, :cond_3

    .line 877
    iget-object v5, v1, Lo/aeS;->c:Landroid/graphics/Bitmap;

    iput-object v5, v4, Lo/aeU;->b:Landroid/graphics/Bitmap;

    .line 878
    iget-object v5, p0, Lo/afu$8;->d:Lo/aeS;

    invoke-virtual {v5}, Lo/aeS;->d()Lcom/android/volley/Request$ResourceLocationType;

    move-result-object v5

    sget-object v6, Lcom/android/volley/Request$ResourceLocationType;->b:Lcom/android/volley/Request$ResourceLocationType;

    if-ne v5, v6, :cond_2

    .line 879
    iget-object v5, v4, Lo/aeU;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    sget-object v6, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-interface {v5, v4, v6, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    goto :goto_0

    .line 881
    :cond_2
    iget-object v5, v4, Lo/aeU;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    sget-object v6, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-interface {v5, v4, v6, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V

    goto :goto_0

    .line 884
    :cond_3
    iget-object v4, v4, Lo/aeU;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-virtual {v1}, Lo/aeS;->b()Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;->b(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 888
    :cond_4
    iget-object v0, p0, Lo/afu$8;->c:Lo/afu;

    invoke-static {v0}, Lo/afu;->b(Lo/afu;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 889
    iget-object v0, p0, Lo/afu$8;->c:Lo/afu;

    invoke-static {v0, v2}, Lo/afu;->c(Lo/afu;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
