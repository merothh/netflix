.class Lo/BroadcastReceiver$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InvalidObjectException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/BroadcastReceiver;


# direct methods
.method constructor <init>(Lo/BroadcastReceiver;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lo/BroadcastReceiver$3;->d:Lo/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lo/BroadcastReceiver$3;->d:Lo/BroadcastReceiver;

    iget-object p1, p1, Lo/BroadcastReceiver;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 165
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
