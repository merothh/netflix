.class public Lo/ki;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/ki;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lo/ki;->d:I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(I)V

    return-void
.end method
