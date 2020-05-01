.class Lo/hY$15$3;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY$15;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/hY$15;


# direct methods
.method constructor <init>(Lo/hY$15;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lo/hY$15$3;->b:Lo/hY$15;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1053
    :cond_0
    invoke-interface {p1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v1

    .line 1054
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1055
    invoke-interface {p1}, Lo/Bb;->ay()I

    move-result p1

    .line 1056
    iget-object p2, p0, Lo/hY$15$3;->b:Lo/hY$15;

    iget-object v0, p2, Lo/hY$15;->d:Lo/hY;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v5, Lo/hY$15$3$1;

    invoke-direct {v5, p0, p1}, Lo/hY$15$3$1;-><init>(Lo/hY$15$3;I)V

    invoke-virtual/range {v0 .. v5}, Lo/hY;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    :cond_1
    return-void
.end method
