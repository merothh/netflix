.class Lo/Executor$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Executor$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Executor;->c(Lo/DoubleStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Executor;


# direct methods
.method constructor <init>(Lo/Executor;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lo/Executor$3;->e:Lo/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/BiConsumer;Lo/Consumer;I)V
    .locals 0

    .line 178
    invoke-virtual {p2}, Lo/Consumer;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/BiConsumer;->e(Ljava/lang/Object;)V

    return-void
.end method