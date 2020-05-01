.class Lo/Short$2;
.super Lo/DataInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Short;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Short;


# direct methods
.method constructor <init>(Lo/Short;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/Short$2;->e:Lo/Short;

    invoke-direct {p0}, Lo/DataInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lo/Short$2;->e:Lo/Short;

    iget-object v0, v0, Lo/Short;->a:Lo/DataInputStream;

    invoke-virtual {v0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V

    .line 55
    iget-object v0, p0, Lo/Short$2;->e:Lo/Short;

    iget-object v0, v0, Lo/Short;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 57
    iget-object v0, p0, Lo/Short$2;->e:Lo/Short;

    iget-object v0, v0, Lo/Short;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    .line 58
    instance-of v1, v0, Lo/SecurityManager;

    if-nez v1, :cond_0

    return-void

    .line 62
    :cond_0
    check-cast v0, Lo/SecurityManager;

    .line 63
    invoke-virtual {v0, p1}, Lo/SecurityManager;->e(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 68
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->c(Lo/LineNumberInputStream;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lo/Short$2;->e:Lo/Short;

    iget-object v0, v0, Lo/Short;->a:Lo/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lo/DataInputStream;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
