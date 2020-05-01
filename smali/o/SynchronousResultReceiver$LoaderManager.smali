.class final Lo/SynchronousResultReceiver$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynchronousResultReceiver;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic d:Lo/SynchronousResultReceiver;


# direct methods
.method constructor <init>(Lo/SynchronousResultReceiver;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/SynchronousResultReceiver$LoaderManager;->d:Lo/SynchronousResultReceiver;

    iput-object p2, p0, Lo/SynchronousResultReceiver$LoaderManager;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lo/SynchronousResultReceiver$LoaderManager;->d:Lo/SynchronousResultReceiver;

    invoke-static {p1}, Lo/SynchronousResultReceiver;->b(Lo/SynchronousResultReceiver;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
