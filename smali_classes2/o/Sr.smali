.class public abstract Lo/Sr;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sr$ActionBar;,
        Lo/Sr$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Sr$ActionBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/Sr$Application;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Sr$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Sr$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Sr;->c:Lo/Sr$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/Sr;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/Sr;->g:Ljava/lang/String;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ar:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/Sr;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Lo/Sr$ActionBar;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lo/Sr;->a:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lo/Sr;->b:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lo/Sr;->g:Ljava/lang/String;

    .line 37
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_8

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_8

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-static {v3}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    goto :goto_5

    .line 42
    :cond_6
    invoke-virtual {p1}, Lo/Sr$ActionBar;->c()Lo/GridView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lo/Sr$ActionBar;->e()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lo/Sr$ActionBar;->b()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lo/Sr$ActionBar;->d()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lo/Sr;->f:Z

    if-eqz v1, :cond_7

    const/16 v5, 0x8

    :cond_7
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p1}, Lo/Sr$ActionBar;->a()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/Sr;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 38
    :cond_8
    :goto_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "DownloadedForYouMerchView: missing required params"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sr;->c(Lo/Sr$ActionBar;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sr;->c(Lo/Sr$ActionBar;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/Sr;->b:Ljava/lang/String;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lo/Sr;->f:Z

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/Sr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Landroid/view/View$OnClickListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Sr;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/Sr;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/Sr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/Sr;->f:Z

    return v0
.end method
