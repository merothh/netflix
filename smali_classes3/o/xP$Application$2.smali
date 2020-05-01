.class Lo/xP$Application$2;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xP$Application;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/xP$Application;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/xP$Application;I)V
    .locals 0

    .line 357
    iput-object p1, p0, Lo/xP$Application$2;->a:Lo/xP$Application;

    iput p2, p0, Lo/xP$Application$2;->e:I

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string p1, "nf_preappagent"

    const-string p2, "fetchPreAppData - prefetch done"

    .line 360
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p1, p0, Lo/xP$Application$2;->a:Lo/xP$Application;

    iget-object p1, p1, Lo/xP$Application;->a:Lo/xP;

    invoke-static {p1}, Lo/xP;->b(Lo/xP;)Lo/iu;

    move-result-object p1

    iget-object p2, p0, Lo/xP$Application$2;->a:Lo/xP$Application;

    iget-object p2, p2, Lo/xP$Application;->a:Lo/xP;

    invoke-static {p2}, Lo/xP;->a(Lo/xP;)Lo/xP$Application;

    move-result-object p2

    iget v0, p0, Lo/xP$Application$2;->e:I

    invoke-interface {p1, p2, v0}, Lo/iu;->c(Lo/iw;I)V

    return-void
.end method
