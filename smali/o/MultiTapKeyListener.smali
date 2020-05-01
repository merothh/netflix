.class public final Lo/MultiTapKeyListener;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MultiTapKeyListener$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/MultiTapKeyListener$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

.field private final d:Lo/PasswordTransformationMethod;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/MetaKeyKeyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;Lo/PasswordTransformationMethod;)V
    .locals 1

    const-string v0, "termsAndConsentsComponent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allCheckBoxesClickedListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/MultiTapKeyListener;->c:Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    iput-object p2, p0, Lo/MultiTapKeyListener;->d:Lo/PasswordTransformationMethod;

    .line 16
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/MultiTapKeyListener;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/MultiTapKeyListener;->c:Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    return-object v0
.end method

.method public final a(Z)V
    .locals 3

    .line 36
    iget-object v0, p0, Lo/MultiTapKeyListener;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MetaKeyKeyListener;

    .line 37
    invoke-virtual {v1}, Lo/MetaKeyKeyListener;->c()Lo/AutoGrowArray;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/AutoGrowArray;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/MetaKeyKeyListener;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lo/MultiTapKeyListener;->e:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/MetaKeyKeyListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapterData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lo/MultiTapKeyListener;->e:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lo/MultiTapKeyListener;->notifyDataSetChanged()V

    return-void
.end method

.method public final d()Lo/PasswordTransformationMethod;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/MultiTapKeyListener;->d:Lo/PasswordTransformationMethod;

    return-object v0
.end method

.method public d(Lo/MultiTapKeyListener$Application;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lo/MultiTapKeyListener;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/MetaKeyKeyListener;

    .line 52
    invoke-virtual {p1}, Lo/MultiTapKeyListener$Application;->e()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "holder.textView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    invoke-virtual {p1}, Lo/MultiTapKeyListener$Application;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/MetaKeyKeyListener;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lo/MultiTapKeyListener$Application;->d()Landroid/widget/CheckBox;

    move-result-object v0

    const-string v1, "holder.checkBox"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/MetaKeyKeyListener;->c()Lo/AutoGrowArray;

    move-result-object v2

    invoke-virtual {v2}, Lo/AutoGrowArray;->c()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    invoke-virtual {p1}, Lo/MultiTapKeyListener$Application;->d()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/MetaKeyKeyListener;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setActivated(Z)V

    .line 56
    invoke-virtual {p1}, Lo/MultiTapKeyListener$Application;->d()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lo/MultiTapKeyListener$Activity;

    invoke-direct {v1, p0, p2, p1}, Lo/MultiTapKeyListener$Activity;-><init>(Lo/MultiTapKeyListener;Lo/MetaKeyKeyListener;Lo/MultiTapKeyListener$Application;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lo/MultiTapKeyListener$Application;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cs:I

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lo/MultiTapKeyListener$Application;

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lo/MultiTapKeyListener$Application;-><init>(Lo/MultiTapKeyListener;Landroid/view/View;)V

    return-object p2
.end method

.method public final e()Z
    .locals 5

    .line 24
    iget-object v0, p0, Lo/MultiTapKeyListener;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MetaKeyKeyListener;

    .line 25
    invoke-virtual {v3, v1}, Lo/MetaKeyKeyListener;->b(Z)V

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v3}, Lo/MetaKeyKeyListener;->c()Lo/AutoGrowArray;

    move-result-object v2

    invoke-virtual {v2}, Lo/AutoGrowArray;->c()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return v2
.end method

.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lo/MultiTapKeyListener;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 14
    check-cast p1, Lo/MultiTapKeyListener$Application;

    invoke-virtual {p0, p1, p2}, Lo/MultiTapKeyListener;->d(Lo/MultiTapKeyListener$Application;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lo/MultiTapKeyListener;->e(Landroid/view/ViewGroup;I)Lo/MultiTapKeyListener$Application;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
