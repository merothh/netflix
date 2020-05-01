.class public abstract Lo/Sy;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sy$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Sy$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lo/Bb;

.field public b:Lo/AS;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aN:I

    return v0
.end method

.method public c(Lo/Sy$Activity;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lo/Sy$Activity;->a()Lo/Sx;

    move-result-object p1

    iget-object v0, p0, Lo/Sy;->b:Lo/AS;

    if-nez v0, :cond_0

    const-string v1, "episodeDetails"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lo/Sy;->a:Lo/Bb;

    if-nez v1, :cond_1

    const-string v2, "showDetails"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0, v1}, Lo/Sx;->a(Lo/AS;Lo/Bb;)V

    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Sy$Activity;

    invoke-virtual {p0, p1}, Lo/Sy;->c(Lo/Sy$Activity;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Sy$Activity;

    invoke-virtual {p0, p1}, Lo/Sy;->c(Lo/Sy$Activity;)V

    return-void
.end method
