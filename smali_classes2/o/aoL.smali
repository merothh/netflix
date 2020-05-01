.class public final Lo/aoL;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final e()Lo/aoE;
    .locals 2

    .line 26
    new-instance v0, Lo/anL;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/anL;-><init>(Ljava/lang/Thread;)V

    check-cast v0, Lo/aoE;

    return-object v0
.end method
