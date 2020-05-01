.class final Lo/FN$Activity$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN$Activity;->d(Lo/DG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/FN$Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Long;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/FN$Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/FN$Activity$TaskDescription;->a:Lo/FN$Activity;

    iput-object p2, p0, Lo/FN$Activity$TaskDescription;->c:Ljava/lang/Long;

    iput-object p3, p0, Lo/FN$Activity$TaskDescription;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/FN$Activity$TaskDescription;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 736
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 737
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 738
    new-instance v2, Lcom/netflix/cl/model/event/session/command/CancelCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/CancelCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 737
    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    .line 736
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 741
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/FN$Activity$TaskDescription;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method
