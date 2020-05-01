.class Lo/lg$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lg;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Z

.field final synthetic d:Lo/lg;


# direct methods
.method constructor <init>(Lo/lg;Z)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/lg$2;->d:Lo/lg;

    iput-boolean p2, p0, Lo/lg$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MdxStackCaf"

    const-string v1, "setMdxNetworkInterface - disabling stack"

    .line 108
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lo/lg$2;->d:Lo/lg;

    invoke-virtual {v1}, Lo/lg;->r()V

    .line 110
    iget-object v1, p0, Lo/lg$2;->d:Lo/lg;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/lg;->b(Z)V

    .line 111
    iget-object v1, p0, Lo/lg$2;->d:Lo/lg;

    iget-object v1, v1, Lo/lg;->a:Lo/kH;

    invoke-interface {v1}, Lo/kH;->e()V

    .line 113
    iget-boolean v1, p0, Lo/lg$2;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "setMdxNetworkInterface - enabling stack"

    .line 114
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lo/lg$2;->d:Lo/lg;

    invoke-virtual {v0}, Lo/lg;->p()V

    :cond_0
    return-void
.end method
