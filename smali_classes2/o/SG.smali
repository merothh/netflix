.class public abstract Lo/SG;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SG$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/SG$Application;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lo/UpdateEngine;

.field public c:Lo/ES;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 27
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aP:I

    return v0
.end method

.method public h()Lo/SG$Application;
    .locals 5

    .line 30
    new-instance v0, Lo/SG$Application;

    iget-object v1, p0, Lo/SG;->b:Lo/UpdateEngine;

    if-nez v1, :cond_0

    const-string v2, "eventBusFactory"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lo/SG;->c:Lo/ES;

    if-nez v2, :cond_1

    const-string v3, "repository"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lo/SG;->a:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v4, "videoId"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v0, v1, v2, v3}, Lo/SG$Application;-><init>(Lo/UpdateEngine;Lo/ES;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/SG;->h()Lo/SG$Application;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method
