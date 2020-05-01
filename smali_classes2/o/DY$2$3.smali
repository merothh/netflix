.class Lo/DY$2$3;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DY$2;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/DY$2;


# direct methods
.method constructor <init>(Lo/DY$2;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lo/DY$2$3;->d:Lo/DY$2;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 745
    invoke-super {p0, p1, p2}, Lo/Ai;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 748
    iget-object p2, p0, Lo/DY$2$3;->d:Lo/DY$2;

    iget-object p2, p2, Lo/DY$2;->a:Lo/DY;

    invoke-virtual {p2, p1}, Lo/DY;->g(Lo/Bc;)V

    :cond_0
    return-void
.end method
