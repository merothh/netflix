.class public final Lo/aeY$Activity;
.super Lo/AbstractWindowedCursor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AbstractWindowedCursor<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/afg;

.field final synthetic d:Lo/aeY;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/aeY;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lo/afg;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;",
            "Lo/afg;",
            "Z)V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lo/aeY$Activity;->d:Lo/aeY;

    iput-object p2, p0, Lo/aeY$Activity;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/aeY$Activity;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    iput-object p4, p0, Lo/aeY$Activity;->c:Lo/afg;

    iput-boolean p5, p0, Lo/aeY$Activity;->e:Z

    invoke-direct {p0}, Lo/AbstractWindowedCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected e(Lo/XmlResourceParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lo/aeY$Activity;->d:Lo/aeY;

    invoke-static {v0}, Lo/aeY;->d(Lo/aeY;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {p1}, Lo/XmlResourceParser;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CompatibilityInfo;

    if-eqz p1, :cond_2

    .line 345
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LegacyRequestMapper;

    .line 346
    instance-of v0, v0, Lo/LegacyFocusStateMapper;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lo/aeY$Activity;->d:Lo/aeY;

    invoke-static {v0}, Lo/aeY;->c(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object v0

    .line 348
    new-instance v1, Lo/aeY$ActionBar;

    .line 350
    iget-object v2, p0, Lo/aeY$Activity;->b:Ljava/lang/String;

    .line 351
    iget-object v3, p0, Lo/aeY$Activity;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    .line 352
    iget-object v4, p0, Lo/aeY$Activity;->d:Lo/aeY;

    iget-object v5, p0, Lo/aeY$Activity;->c:Lo/afg;

    iget-boolean v6, p0, Lo/aeY$Activity;->e:Z

    invoke-static {v4, v5, v6}, Lo/aeY;->e(Lo/aeY;Lo/afg;Z)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object v4

    .line 348
    invoke-direct {v1, p1, v2, v3, v4}, Lo/aeY$ActionBar;-><init>(Lo/CompatibilityInfo;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)V

    .line 347
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object p1, p0, Lo/aeY$Activity;->d:Lo/aeY;

    invoke-static {p1}, Lo/aeY;->b(Lo/aeY;)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected h(Lo/XmlResourceParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lo/aeY$Activity;->d:Lo/aeY;

    invoke-static {v0}, Lo/aeY;->d(Lo/aeY;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lo/aeY$Activity;->d:Lo/aeY;

    invoke-static {v0}, Lo/aeY;->e(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lo/aeY$TaskDescription;

    iget-object v2, p0, Lo/aeY$Activity;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-interface {p1}, Lo/XmlResourceParser;->j()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lo/aeY$TaskDescription;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object p1, p0, Lo/aeY$Activity;->d:Lo/aeY;

    invoke-static {p1}, Lo/aeY;->b(Lo/aeY;)V

    return-void
.end method
