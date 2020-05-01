.class public final Lo/GC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 2

    .line 13
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->c()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    move-result-object v0

    const-string v1, "BrowseExperience.getImageLoaderConfig()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .line 20
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->c()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    move-result-object v0

    const-string v1, "BrowseExperience.getImageLoaderConfig()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;->a()I

    move-result v0

    return v0
.end method
