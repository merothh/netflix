.class public final Lo/YC;
.super Lo/ShellCommand$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YC$TaskDescription;,
        Lo/YC$Activity;,
        Lo/YC$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/YC$ActionBar;


# instance fields
.field private final e:Lo/UpdateLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UpdateLock<",
            "Lo/YB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/YC$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YC$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/YC;->d:Lo/YC$ActionBar;

    return-void
.end method

.method public constructor <init>(Lo/UpdateLock;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UpdateLock<",
            "Lo/YB;",
            ">;",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p2}, Lo/amk;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/ShellCommand$StateListAnimator;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/YC;->e:Lo/UpdateLock;

    return-void
.end method

.method public static final synthetic c(Lo/YC;)Lo/UpdateLock;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/YC;->e:Lo/UpdateLock;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;)Lo/ShellCommand$ActionBar;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lo/gS;->b:Lo/gS$StateListAnimator;

    invoke-virtual {v0}, Lo/gS$StateListAnimator;->b()Z

    move-result v0

    const-string v1, "view"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cd:I

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance v0, Lo/YC$Activity;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lo/ShellCommand$StateListAnimator;

    invoke-direct {v0, p0, p1, v1}, Lo/YC$Activity;-><init>(Lo/YC;Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V

    check-cast v0, Lo/ShellCommand$ActionBar;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->bZ:I

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance v0, Lo/YC$TaskDescription;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lo/ShellCommand$StateListAnimator;

    invoke-direct {v0, p0, p1, v1}, Lo/YC$TaskDescription;-><init>(Lo/YC;Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V

    check-cast v0, Lo/ShellCommand$ActionBar;

    :goto_0
    return-object v0
.end method
