.class public final Lo/YY$SharedElementCallback;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lo/JM$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/YY;


# direct methods
.method constructor <init>(Lo/YY;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 884
    iput-object p1, p0, Lo/YY$SharedElementCallback;->c:Lo/YY;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lo/JM$TaskDescription;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    iget-object p1, p0, Lo/YY$SharedElementCallback;->c:Lo/YY;

    invoke-static {p1}, Lo/YY;->s(Lo/YY;)V

    .line 889
    iget-object p1, p0, Lo/YY$SharedElementCallback;->c:Lo/YY;

    invoke-static {p1}, Lo/YY;->q(Lo/YY;)V

    .line 890
    iget-object p1, p0, Lo/YY$SharedElementCallback;->c:Lo/YY;

    invoke-static {p1}, Lo/YY;->a(Lo/YY;)V

    .line 891
    iget-object p1, p0, Lo/YY$SharedElementCallback;->c:Lo/YY;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lo/YY;->e(Lo/YY;ZZ)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    iget-object p1, p0, Lo/YY$SharedElementCallback;->c:Lo/YY;

    invoke-virtual {p1}, Lo/YY;->s()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 884
    check-cast p1, Lo/JM$TaskDescription;

    invoke-virtual {p0, p1}, Lo/YY$SharedElementCallback;->b(Lo/JM$TaskDescription;)V

    return-void
.end method
