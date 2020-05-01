.class public Lo/Xm;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WH;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xm$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/Xm$TaskDescription;


# instance fields
.field private final b:Landroid/view/View;

.field private c:Landroid/view/GestureDetector;

.field private e:Landroid/view/View$OnTouchListener;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Xm$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xm$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xm;->d:Lo/Xm$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->es:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(pare\u2026ppable_view, null, false)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Xm;->b:Landroid/view/View;

    .line 32
    invoke-virtual {p0}, Lo/Xm;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0, p1}, Lo/Xm;->a(Landroid/view/ViewGroup;)Landroid/view/GestureDetector;

    move-result-object p1

    iput-object p1, p0, Lo/Xm;->c:Landroid/view/GestureDetector;

    .line 34
    new-instance p1, Lo/Xm$2;

    invoke-direct {p1, p0}, Lo/Xm$2;-><init>(Lo/Xm;)V

    check-cast p1, Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lo/Xm;->e:Landroid/view/View$OnTouchListener;

    .line 67
    invoke-virtual {p0}, Lo/Xm;->d()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/Xm;->e:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final synthetic c(Lo/Xm;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lo/Xm;->g:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/view/GestureDetector;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/Xm$Activity;

    invoke-direct {v2, p0, p1}, Lo/Xm$Activity;-><init>(Lo/Xm;Landroid/view/ViewGroup;)V

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 120
    new-instance v0, Lo/UU$BroadcastReceiver;

    invoke-direct {v0, p1, p2}, Lo/UU$BroadcastReceiver;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lo/Xm;->g:Z

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Xm;->b:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final f()Landroid/view/GestureDetector;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Xm;->c:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lo/Xm;->g:Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 112
    sget-object v0, Lo/UU$Activity;->e:Lo/UU$Activity;

    invoke-virtual {p0, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 116
    sget-object v0, Lo/UU$ContextWrapper;->c:Lo/UU$ContextWrapper;

    invoke-virtual {p0, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    return-void
.end method
