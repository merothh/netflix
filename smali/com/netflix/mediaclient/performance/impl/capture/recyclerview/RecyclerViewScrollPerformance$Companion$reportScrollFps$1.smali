.class public final Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


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
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$1;->a:Lkotlin/jvm/internal/Ref$LongRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$1;->a:Lkotlin/jvm/internal/Ref$LongRef;

    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/context/PerformanceTrace;

    invoke-direct {v2}, Lcom/netflix/cl/model/context/PerformanceTrace;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->a:J

    .line 29
    sget-object v0, Lo/au;->a:Lo/au$Application;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$1;->e()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
