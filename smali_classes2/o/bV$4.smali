.class Lo/bV$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bV;->init(Lo/bV$TaskDescription;Lo/bV$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/bV;


# direct methods
.method constructor <init>(Lo/bV;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lo/bV$4;->d:Lo/bV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lo/bV$4;->d:Lo/bV;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_service_ServiceAgent"

    const-string v2, "Initing %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    iget-object v0, p0, Lo/bV$4;->d:Lo/bV;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/bV;->access$002(Lo/bV;J)J

    .line 111
    iget-object v0, p0, Lo/bV$4;->d:Lo/bV;

    invoke-virtual {v0}, Lo/bV;->doInit()V

    return-void
.end method
