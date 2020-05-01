.class public final Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/au$Application;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alS<",
        "Ljava/lang/Float;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;->c:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;->d:Ljava/lang/String;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 22
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;->c(FIJJ)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final c(FIJJ)V
    .locals 8

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    iget-object p2, p0, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;->c:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, p2, Lkotlin/jvm/internal/Ref$LongRef;->a:J

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    .line 34
    iget-object v1, p0, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;->d:Ljava/lang/String;

    .line 38
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 39
    sget-object p2, Lo/ap;->e:Lo/ap$Activity;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/ap$Activity;->d(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fps"

    invoke-virtual {v7, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "PERF"

    move-wide v3, p5

    move-wide v5, p3

    .line 33
    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object p1

    .line 41
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object p1

    .line 42
    sget-object p3, Lo/au;->a:Lo/au$Application;

    check-cast p3, Lo/MessagePdu;

    .line 41
    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 44
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;->c:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->a:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method
