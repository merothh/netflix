.class Lo/Message$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Message;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Message;


# direct methods
.method constructor <init>(Lo/Message;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lo/Message$3;->d:Lo/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-object v0, p0, Lo/Message$3;->d:Lo/Message;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/Message$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/Message;->e(Lo/Message$StateListAnimator;)V

    const/4 p1, 0x1

    return p1
.end method
