.class Lo/TC$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lo/TC$20;->a:Lo/TC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lo/TC$20;->a:Lo/TC;

    invoke-virtual {v0, p1}, Lo/TC;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void
.end method
