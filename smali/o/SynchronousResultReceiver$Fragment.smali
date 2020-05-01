.class final Lo/SynchronousResultReceiver$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynchronousResultReceiver;-><init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/SynchronousResultReceiver;


# direct methods
.method constructor <init>(Lo/SynchronousResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lo/SynchronousResultReceiver$Fragment;->b:Lo/SynchronousResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/SynchronousResultReceiver$Fragment;->b:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->f(Lo/SynchronousResultReceiver;)Lo/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method
