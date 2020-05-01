.class final Lo/ak$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ak;->e(Lcom/netflix/cl/model/event/session/NavigationLevel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/cl/model/event/session/NavigationLevel;

.field final synthetic c:Z

.field final synthetic d:Lo/ak;


# direct methods
.method constructor <init>(Lo/ak;Lcom/netflix/cl/model/event/session/NavigationLevel;Z)V
    .locals 0

    iput-object p1, p0, Lo/ak$Application;->d:Lo/ak;

    iput-object p2, p0, Lo/ak$Application;->a:Lcom/netflix/cl/model/event/session/NavigationLevel;

    iput-boolean p3, p0, Lo/ak$Application;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 269
    iget-object v0, p0, Lo/ak$Application;->d:Lo/ak;

    iget-object v1, p0, Lo/ak$Application;->a:Lcom/netflix/cl/model/event/session/NavigationLevel;

    iget-boolean v2, p0, Lo/ak$Application;->c:Z

    invoke-static {v0, v1, v2}, Lo/ak;->a(Lo/ak;Lcom/netflix/cl/model/event/session/NavigationLevel;Z)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 274
    new-instance v3, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    iget-object v0, p0, Lo/ak$Application;->d:Lo/ak;

    invoke-virtual {v0}, Lo/ak;->b()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {v3, v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    .line 278
    iget-object v0, p0, Lo/ak$Application;->d:Lo/ak;

    invoke-virtual {v0}, Lo/ak;->i()J

    move-result-wide v6

    .line 279
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lo/ak$Application;->d:Lo/ak;

    invoke-virtual {v2}, Lo/ak;->i()J

    move-result-wide v4

    sub-long v8, v0, v4

    const-string v4, "performanceCapture"

    const-string v5, "PERF"

    .line 275
    invoke-virtual/range {v3 .. v10}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object v0

    const-string v1, "performanceTraceReportedBuilder.build()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 286
    sget-object v0, Lo/ak;->c:Lo/ak$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 290
    :cond_1
    iget-object v0, p0, Lo/ak$Application;->d:Lo/ak;

    invoke-static {v0}, Lo/ak;->a(Lo/ak;)V

    return-void
.end method
