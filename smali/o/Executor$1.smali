.class Lo/Executor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Executor$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Executor;->e(Lo/DoubleStream;Lo/BiConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Executor;

.field final synthetic b:Lo/Executor;


# direct methods
.method constructor <init>(Lo/Executor;Lo/Executor;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lo/Executor$1;->a:Lo/Executor;

    iput-object p2, p0, Lo/Executor$1;->b:Lo/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/BiConsumer;Lo/Consumer;I)V
    .locals 6

    .line 142
    invoke-static {p1, p2}, Lo/Executor;->b(Lo/BiConsumer;Lo/Consumer;)V

    .line 144
    iget-object v0, p0, Lo/Executor$1;->b:Lo/Executor;

    iget-object v0, v0, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 145
    iget-object v0, p0, Lo/Executor$1;->b:Lo/Executor;

    iget-object v0, v0, Lo/Executor;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 146
    invoke-virtual {v0}, Lo/BiConsumer;->d()J

    move-result-wide v1

    invoke-virtual {p1}, Lo/BiConsumer;->d()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1, p3}, Lo/Consumer;->d(Lo/BiConsumer;Lo/BiConsumer;Ljava/util/List;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1, p3}, Lo/Consumer;->d(Lo/BiConsumer;Lo/BiConsumer;Ljava/util/List;I)V

    return-void
.end method
