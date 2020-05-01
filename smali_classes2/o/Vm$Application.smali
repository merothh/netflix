.class public final Lo/Vm$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Vm;


# direct methods
.method constructor <init>(Lo/Vm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lo/Vm$Application;->b:Lo/Vm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 130
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 131
    iget-object p1, p0, Lo/Vm$Application;->b:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->a()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->choices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;->id()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 132
    :goto_0
    iget-object v0, p0, Lo/Vm$Application;->b:Lo/Vm;

    invoke-virtual {v0, p1}, Lo/Vm;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 134
    :cond_1
    iget-object p1, p0, Lo/Vm$Application;->b:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->e(Lo/Vm;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 138
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 139
    iget-object p1, p0, Lo/Vm$Application;->b:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->d(Lo/Vm;)Lo/ExpandableListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->setVisibility(I)V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->a(Z)V

    :cond_0
    return-void
.end method
