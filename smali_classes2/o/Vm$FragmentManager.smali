.class public final Lo/Vm$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic e:Lo/Vm;


# direct methods
.method constructor <init>(Lo/Vm;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lo/Vm$FragmentManager;->e:Lo/Vm;

    iput-object p2, p0, Lo/Vm$FragmentManager;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lo/Vm$FragmentManager;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .line 238
    iget-object p1, p0, Lo/Vm$FragmentManager;->e:Lo/Vm;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/Vm;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lo/Vm$FragmentManager;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-nez p1, :cond_0

    .line 240
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 241
    iget-object p1, p0, Lo/Vm$FragmentManager;->e:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->s()Lo/Xt;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 243
    iget-object p1, p0, Lo/Vm$FragmentManager;->e:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    .line 244
    iget-object v4, p0, Lo/Vm$FragmentManager;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    .line 241
    invoke-interface/range {v0 .. v6}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
