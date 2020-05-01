.class Lo/BroadcastReceiver$4;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/BroadcastReceiver;


# direct methods
.method constructor <init>(Lo/BroadcastReceiver;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/BroadcastReceiver$4;->e:Lo/BroadcastReceiver;

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lo/BroadcastReceiver$4;->e:Lo/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/BroadcastReceiver;->o:Lo/ColorStateList;

    .line 156
    iget-object p1, p1, Lo/BroadcastReceiver;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
