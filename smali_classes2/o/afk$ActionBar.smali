.class public final Lo/afk$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "GlideImageLoader"

    .line 57
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/afk$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lo/H;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkManager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object v0, p0

    check-cast v0, Lo/afk$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->d(Lo/H;)V

    .line 64
    sget p2, Lo/ax$StateListAnimator;->a:I

    invoke-static {p2}, Lo/UndoManager;->b(I)V

    .line 65
    new-instance p2, Lo/afk;

    invoke-direct {p2, p1}, Lo/afk;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    return-object p2
.end method
