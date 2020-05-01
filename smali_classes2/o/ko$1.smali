.class Lo/ko$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ko;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ko;


# direct methods
.method constructor <init>(Lo/ko;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lo/ko$1;->c:Lo/ko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MdxAgent"

    const-string v1, "onAccountDeactivate stopping the mdx"

    .line 734
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lo/ko$1;->c:Lo/ko;

    invoke-static {v0}, Lo/ko;->c(Lo/ko;)Lo/kO;

    move-result-object v0

    invoke-virtual {v0}, Lo/kO;->e()V

    .line 736
    iget-object v0, p0, Lo/ko$1;->c:Lo/ko;

    invoke-static {v0}, Lo/ko;->b(Lo/ko;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 737
    iget-object v0, p0, Lo/ko$1;->c:Lo/ko;

    invoke-static {v0}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v0

    invoke-virtual {v0}, Lo/kI;->h()V

    .line 738
    iget-object v0, p0, Lo/ko$1;->c:Lo/ko;

    invoke-static {v0}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v0

    invoke-virtual {v0}, Lo/kI;->u()Lo/kF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/kF;->d(Lo/mo;)V

    .line 739
    iget-object v0, p0, Lo/ko$1;->c:Lo/ko;

    invoke-static {v0}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v0

    invoke-virtual {v0}, Lo/kI;->k()V

    return-void
.end method
