.class public final Lo/OrientationListener;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OrientationListener$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/OrientationListener$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/RemoteAnimationDefinition;

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/RemoteAnimationDefinition;Ljava/util/List;Lo/Cloneable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RemoteAnimationDefinition;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "planClickedListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorsList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planSelectedMutableLiveData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/OrientationListener;->c:Lo/RemoteAnimationDefinition;

    iput-object p2, p0, Lo/OrientationListener;->e:Ljava/util/List;

    iput-object p3, p0, Lo/OrientationListener;->b:Lo/Cloneable;

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lo/OrientationListener;->d:I

    .line 21
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/OrientationListener;->a:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/OrientationListener;I)V
    .locals 0

    .line 14
    iput p1, p0, Lo/OrientationListener;->d:I

    return-void
.end method

.method public static final synthetic c(Lo/OrientationListener;)Lo/RemoteAnimationDefinition;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/OrientationListener;->c:Lo/RemoteAnimationDefinition;

    return-object p0
.end method

.method public static final synthetic d(Lo/OrientationListener;)I
    .locals 0

    .line 14
    iget p0, p0, Lo/OrientationListener;->d:I

    return p0
.end method

.method public static final synthetic e(Lo/OrientationListener;)Lo/Cloneable;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/OrientationListener;->b:Lo/Cloneable;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lo/OrientationListener$Application;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 35
    new-instance v0, Lo/OrientationListener$Application;

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->du:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "layoutInflater.inflate(R\u2026t_ab22912, parent, false)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lo/OrientationListener$Application;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public c(Lo/OrientationListener$Application;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lo/OrientationListener;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecordingCanvas;

    .line 41
    invoke-virtual {p1}, Lo/OrientationListener$Application;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v0}, Lo/RecordingCanvas;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Lo/OrientationListener$Application;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {p1}, Lo/OrientationListener$Application;->a()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lo/ImageSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lo/OrientationListener;->e:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setTextColor(I)V

    .line 43
    invoke-virtual {p1}, Lo/OrientationListener$Application;->b()Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v0}, Lo/RecordingCanvas;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 44
    invoke-virtual {p1}, Lo/OrientationListener$Application;->d()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v0}, Lo/RecordingCanvas;->b()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1}, Lo/OrientationListener$Application;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v0}, Lo/RecordingCanvas;->d()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lo/OrientationListener$Application;->i()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v0}, Lo/RecordingCanvas;->e()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p1}, Lo/OrientationListener$Application;->e()Lo/NotificationHeaderView;

    move-result-object v1

    invoke-virtual {v0}, Lo/RecordingCanvas;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lo/OrientationListener;->e:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lo/NotificationHeaderView;->a(Ljava/util/List;I)V

    .line 48
    invoke-virtual {p1}, Lo/OrientationListener$Application;->j()Lo/NotificationHeaderView;

    move-result-object v1

    invoke-virtual {v0}, Lo/RecordingCanvas;->j()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lo/OrientationListener;->e:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lo/NotificationHeaderView;->d(Ljava/util/List;I)V

    .line 50
    invoke-virtual {v0}, Lo/RecordingCanvas;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lo/OrientationListener$Application;->b()Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 52
    iput p2, p0, Lo/OrientationListener;->d:I

    .line 55
    :cond_0
    iget-object v1, p1, Lo/OrientationListener$Application;->itemView:Landroid/view/View;

    new-instance v2, Lo/OrientationListener$ActionBar;

    invoke-direct {v2, p0, p2, v0, p1}, Lo/OrientationListener$ActionBar;-><init>(Lo/OrientationListener;ILo/RecordingCanvas;Lo/OrientationListener$Application;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapterData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lo/OrientationListener;->a:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Lo/OrientationListener;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lo/OrientationListener;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 14
    check-cast p1, Lo/OrientationListener$Application;

    invoke-virtual {p0, p1, p2}, Lo/OrientationListener;->c(Lo/OrientationListener$Application;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lo/OrientationListener;->c(Landroid/view/ViewGroup;I)Lo/OrientationListener$Application;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
