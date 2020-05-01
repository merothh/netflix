.class Lo/MultiWindowModeChangeItem$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MultiWindowModeChangeItem;-><init>(ZLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/MultiWindowModeChangeItem;


# direct methods
.method constructor <init>(Lo/MultiWindowModeChangeItem;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/MultiWindowModeChangeItem$5;->a:Lo/MultiWindowModeChangeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/MultiWindowModeChangeItem$5;->a:Lo/MultiWindowModeChangeItem;

    invoke-virtual {v0}, Lo/MultiWindowModeChangeItem;->c()V

    return-void
.end method
