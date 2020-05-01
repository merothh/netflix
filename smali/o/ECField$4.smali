.class Lo/ECField$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ECField;->b(Landroid/view/ViewGroup;Lo/AlgorithmParameters;ILo/AlgorithmParameters;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic d:Lo/Key;

.field final synthetic e:Lo/ECField;


# direct methods
.method constructor <init>(Lo/ECField;Lo/Key;Landroid/view/View;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lo/ECField$4;->e:Lo/ECField;

    iput-object p2, p0, Lo/ECField$4;->d:Lo/Key;

    iput-object p3, p0, Lo/ECField$4;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 414
    iget-object p1, p0, Lo/ECField$4;->d:Lo/Key;

    iget-object v0, p0, Lo/ECField$4;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/Key;->d(Landroid/view/View;)V

    return-void
.end method
