.class final Lo/apb$TaskDescription;
.super Lo/anT;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/apb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/anT<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lo/apb;


# direct methods
.method public constructor <init>(Lo/ale;Lo/apb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-TT;>;",
            "Lo/apb;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1161
    invoke-direct {p0, p1, v0}, Lo/anT;-><init>(Lo/ale;I)V

    iput-object p2, p0, Lo/apb$TaskDescription;->b:Lo/apb;

    return-void
.end method


# virtual methods
.method public a(Lo/aoU;)Ljava/lang/Throwable;
    .locals 2

    .line 1163
    iget-object v0, p0, Lo/apb$TaskDescription;->b:Lo/apb;

    invoke-virtual {v0}, Lo/apb;->k()Ljava/lang/Object;

    move-result-object v0

    .line 1168
    instance-of v1, v0, Lo/apb$Application;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lo/apb$Application;

    invoke-virtual {v1}, Lo/apb$Application;->d()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 1169
    :cond_0
    instance-of v1, v0, Lo/aob;

    if-eqz v1, :cond_1

    check-cast v0, Lo/aob;

    iget-object p1, v0, Lo/aob;->d:Ljava/lang/Throwable;

    return-object p1

    .line 1170
    :cond_1
    invoke-interface {p1}, Lo/aoU;->n()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
