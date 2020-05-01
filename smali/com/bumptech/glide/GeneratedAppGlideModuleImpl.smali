.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lo/SecurityLog;
.source ""


# instance fields
.field private final c:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lo/SecurityLog;-><init>()V

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->c:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;

    const-string v0, "Glide"

    const/4 v1, 0x3

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Discovered AppGlideModule from annotation: com.netflix.mediaclient.util.gfx.glide.NetflixGlideModule"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lo/BackupDataInputStream;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->c:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a(Landroid/content/Context;Lo/BackupDataInputStream;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->c:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic b()Lo/ContentProviderOperation$StateListAnimator;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->c()Lo/SystemUpdatePolicy;

    move-result-object v0

    return-object v0
.end method

.method c()Lo/SystemUpdatePolicy;
    .locals 1

    .line 49
    new-instance v0, Lo/SystemUpdatePolicy;

    invoke-direct {v0}, Lo/SystemUpdatePolicy;-><init>()V

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->c:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->e(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    return-void
.end method
