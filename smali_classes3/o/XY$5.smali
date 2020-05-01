.class final Lo/XY$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XY;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/XY;


# direct methods
.method constructor <init>(Lo/XY;)V
    .locals 0

    iput-object p1, p0, Lo/XY$5;->b:Lo/XY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/XY$5;->b:Lo/XY;

    invoke-static {v0}, Lo/XY;->e(Lo/XY;)Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    :cond_0
    return-void
.end method
