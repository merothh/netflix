.class public final Lo/Vm$LoaderManager;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic e:Lo/Vm;


# direct methods
.method constructor <init>(Lo/Vm;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lo/Vm$LoaderManager;->e:Lo/Vm;

    iput-object p2, p0, Lo/Vm$LoaderManager;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lo/Vm$LoaderManager;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 166
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 167
    iget-object p1, p0, Lo/Vm$LoaderManager;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lo/Vm$LoaderManager;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-nez p1, :cond_0

    .line 177
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 178
    iget-object p1, p0, Lo/Vm$LoaderManager;->b:Landroid/view/View;

    const-string v0, "timerBarFillView"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lo/Vm$LoaderManager;->e:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->c(Lo/Vm;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 171
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 172
    iget-object p1, p0, Lo/Vm$LoaderManager;->e:Lo/Vm;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/Vm;->b(Lo/Vm;Z)V

    return-void
.end method
