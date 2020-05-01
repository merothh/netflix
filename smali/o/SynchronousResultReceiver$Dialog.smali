.class final Lo/SynchronousResultReceiver$Dialog;
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
.field final synthetic d:Lo/SynchronousResultReceiver;


# direct methods
.method constructor <init>(Lo/SynchronousResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lo/SynchronousResultReceiver$Dialog;->d:Lo/SynchronousResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lo/SynchronousResultReceiver$Dialog;->d:Lo/SynchronousResultReceiver;

    invoke-virtual {p1}, Lo/SynchronousResultReceiver;->dismiss()V

    return-void
.end method
