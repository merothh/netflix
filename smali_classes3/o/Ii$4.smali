.class final Lo/Ii$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ii;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ii;


# direct methods
.method constructor <init>(Lo/Ii;)V
    .locals 0

    iput-object p1, p0, Lo/Ii$4;->a:Lo/Ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 2

    const-string v0, "TrailerVideoView"

    const-string v1, "onPlaybackError no retry"

    .line 67
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lo/Ii$4;->a:Lo/Ii;

    invoke-static {v0}, Lo/Ii;->d(Lo/Ii;)Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    :cond_0
    return-void
.end method
