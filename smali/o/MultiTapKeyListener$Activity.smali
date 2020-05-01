.class final Lo/MultiTapKeyListener$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MultiTapKeyListener;->d(Lo/MultiTapKeyListener$Application;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/MetaKeyKeyListener;

.field final synthetic b:Lo/MultiTapKeyListener;

.field final synthetic d:Lo/MultiTapKeyListener$Application;


# direct methods
.method constructor <init>(Lo/MultiTapKeyListener;Lo/MetaKeyKeyListener;Lo/MultiTapKeyListener$Application;)V
    .locals 0

    iput-object p1, p0, Lo/MultiTapKeyListener$Activity;->b:Lo/MultiTapKeyListener;

    iput-object p2, p0, Lo/MultiTapKeyListener$Activity;->a:Lo/MetaKeyKeyListener;

    iput-object p3, p0, Lo/MultiTapKeyListener$Activity;->d:Lo/MultiTapKeyListener$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 57
    iget-object p1, p0, Lo/MultiTapKeyListener$Activity;->a:Lo/MetaKeyKeyListener;

    invoke-virtual {p1}, Lo/MetaKeyKeyListener;->c()Lo/AutoGrowArray;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/AutoGrowArray;->a(Ljava/lang/Boolean;)V

    .line 58
    iget-object p1, p0, Lo/MultiTapKeyListener$Activity;->a:Lo/MetaKeyKeyListener;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/MetaKeyKeyListener;->b(Z)V

    .line 59
    iget-object p1, p0, Lo/MultiTapKeyListener$Activity;->d:Lo/MultiTapKeyListener$Application;

    invoke-virtual {p1}, Lo/MultiTapKeyListener$Application;->d()Landroid/widget/CheckBox;

    move-result-object p1

    const-string v0, "holder.checkBox"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/MultiTapKeyListener$Activity;->a:Lo/MetaKeyKeyListener;

    invoke-virtual {v0}, Lo/MetaKeyKeyListener;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setActivated(Z)V

    if-nez p2, :cond_0

    .line 61
    iget-object p1, p0, Lo/MultiTapKeyListener$Activity;->b:Lo/MultiTapKeyListener;

    invoke-virtual {p1}, Lo/MultiTapKeyListener;->a()Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;->hasAcceptedRequiredCheckBoxes()Z

    .line 64
    :cond_0
    iget-object p1, p0, Lo/MultiTapKeyListener$Activity;->b:Lo/MultiTapKeyListener;

    invoke-virtual {p1}, Lo/MultiTapKeyListener;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lo/MultiTapKeyListener$Activity;->b:Lo/MultiTapKeyListener;

    invoke-virtual {p1}, Lo/MultiTapKeyListener;->d()Lo/PasswordTransformationMethod;

    move-result-object p1

    invoke-interface {p1}, Lo/PasswordTransformationMethod;->b()V

    :cond_1
    return-void
.end method
