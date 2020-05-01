.class Lo/Qd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private final b:Landroid/view/View;

.field private final c:Landroid/content/Context;

.field private final d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final e:Lo/nS;


# direct methods
.method public constructor <init>(Lo/nS;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Qd;->e:Lo/nS;

    iput-object p2, p0, Lo/Qd;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lo/Qd;->b:Landroid/view/View;

    iput p4, p0, Lo/Qd;->a:I

    iput-object p5, p0, Lo/Qd;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lo/Qd;->e:Lo/nS;

    iget-object v1, p0, Lo/Qd;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lo/Qd;->b:Landroid/view/View;

    iget v3, p0, Lo/Qd;->a:I

    iget-object v4, p0, Lo/Qd;->c:Landroid/content/Context;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lo/PY;->c(Lo/nS;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method
