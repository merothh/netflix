.class public final Lo/ZL$Application;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZL;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ZL;


# direct methods
.method constructor <init>(Lo/ZL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lo/ZL$Application;->c:Lo/ZL;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 90
    iget-object p1, p0, Lo/ZL$Application;->c:Lo/ZL;

    invoke-virtual {p1}, Lo/ZL;->getActivity()Lo/Serializable;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Serializable;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 92
    iget-object p2, p0, Lo/ZL$Application;->c:Lo/ZL;

    invoke-virtual {p2}, Lo/ZL;->getActivity()Lo/Serializable;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, p1}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    :cond_2
    return-void
.end method
