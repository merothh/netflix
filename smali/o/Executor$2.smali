.class Lo/Executor$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Executor$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Executor;->a(Lo/DoubleStream;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Executor;


# direct methods
.method constructor <init>(Lo/Executor;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/Executor$2;->d:Lo/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/BiConsumer;Lo/Consumer;I)V
    .locals 2

    .line 124
    invoke-static {p1, p2}, Lo/Executor;->b(Lo/BiConsumer;Lo/Consumer;)V

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Lo/Consumer;->d(Lo/BiConsumer;Lo/BiConsumer;Ljava/util/List;I)V

    return-void
.end method