.class Lo/ot$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lo/ot$7;->c:Lo/ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 696
    iget-object v0, p0, Lo/ot$7;->c:Lo/ot;

    invoke-static {v0}, Lo/ot;->e(Lo/ot;)Lo/oz;

    move-result-object v0

    invoke-interface {v0}, Lo/oz;->a()V

    return-void
.end method
