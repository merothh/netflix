.class Lo/Factory$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Factory;


# direct methods
.method constructor <init>(Lo/Factory;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lo/Factory$1;->b:Lo/Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 98
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/Factory$Application;

    .line 99
    iget-object v0, p1, Lo/Factory$Application;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lo/Factory$1;->b:Lo/Factory;

    iget-object v0, v0, Lo/Factory;->d:Landroid/view/LayoutInflater;

    iget v1, p1, Lo/Factory$Application;->d:I

    iget-object v2, p1, Lo/Factory$Application;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lo/Factory$Application;->c:Landroid/view/View;

    .line 103
    :cond_0
    iget-object v0, p1, Lo/Factory$Application;->a:Lo/Factory$StateListAnimator;

    iget-object v1, p1, Lo/Factory$Application;->c:Landroid/view/View;

    iget v2, p1, Lo/Factory$Application;->d:I

    iget-object v3, p1, Lo/Factory$Application;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v3}, Lo/Factory$StateListAnimator;->a(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 105
    iget-object v0, p0, Lo/Factory$1;->b:Lo/Factory;

    iget-object v0, v0, Lo/Factory;->b:Lo/Factory$TaskDescription;

    invoke-virtual {v0, p1}, Lo/Factory$TaskDescription;->d(Lo/Factory$Application;)V

    const/4 p1, 0x1

    return p1
.end method
