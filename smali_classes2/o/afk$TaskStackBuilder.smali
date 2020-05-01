.class public final Lo/afk$TaskStackBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afk;->e(Lo/bP;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/bP;


# direct methods
.method constructor <init>(Lo/bP;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lo/afk$TaskStackBuilder;->b:Lo/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lo/afk$TaskStackBuilder;->b:Lo/bP;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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

    const-string p3, "type"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 546
    iget-object p1, p0, Lo/afk$TaskStackBuilder;->b:Lo/bP;

    invoke-interface {p1, p2, p2, p2}, Lo/bP;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lo/CompatibilityInfo;)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object p3, p0, Lo/afk$TaskStackBuilder;->b:Lo/bP;

    invoke-virtual {p1}, Lo/aeU;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lo/aeU;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1, p2}, Lo/bP;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lo/CompatibilityInfo;)V

    :goto_0
    return-void
.end method
