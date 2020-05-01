.class Lo/ko$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ko$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ko$2;


# direct methods
.method constructor <init>(Lo/ko$2;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lo/ko$2$2;->c:Lo/ko$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MdxAgent"

    const-string v1, "Finished initializing Cast.  Finalizing MDX init..."

    .line 709
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lo/ko$2$2;->c:Lo/ko$2;

    iget-object v0, v0, Lo/ko$2;->b:Lo/ko;

    invoke-static {v0}, Lo/ko;->d(Lo/ko;)V

    return-void
.end method
