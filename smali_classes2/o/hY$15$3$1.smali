.class Lo/hY$15$3$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY$15$3;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lo/hY$15$3;


# direct methods
.method constructor <init>(Lo/hY$15$3;I)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lo/hY$15$3$1;->c:Lo/hY$15$3;

    iput p2, p0, Lo/hY$15$3$1;->b:I

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1074
    :cond_0
    invoke-interface {p1}, Lo/AS;->t()Ljava/lang/String;

    move-result-object v1

    .line 1076
    iget p1, p0, Lo/hY$15$3$1;->b:I

    div-int/lit8 p1, p1, 0x28

    mul-int/lit8 v3, p1, 0x28

    add-int/lit8 p1, v3, 0x28

    add-int/lit8 v4, p1, -0x1

    .line 1080
    iget-object p1, p0, Lo/hY$15$3$1;->c:Lo/hY$15$3;

    iget-object p1, p1, Lo/hY$15$3;->b:Lo/hY$15;

    iget-object v0, p1, Lo/hY$15;->d:Lo/hY;

    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v5, Lo/hY$15$3$1$3;

    invoke-direct {v5, p0}, Lo/hY$15$3$1$3;-><init>(Lo/hY$15$3$1;)V

    invoke-virtual/range {v0 .. v5}, Lo/hY;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    return-void
.end method
