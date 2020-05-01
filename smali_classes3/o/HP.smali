.class public abstract Lo/HP;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HP$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HP$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Ljava/lang/Integer;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/GR;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 30
    sget v0, Lo/GS$FragmentManager;->w:I

    return v0
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/HP;->g:Ljava/lang/Integer;

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lo/HP;->j:Ljava/util/List;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p1, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HP;->d(Lo/HP$StateListAnimator;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/HP$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HP;->d(Lo/HP$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/HP$StateListAnimator;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lo/HP;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lo/HP$StateListAnimator;->c()Lo/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {p1}, Lo/HP$StateListAnimator;->c()Lo/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/ImageView;->c(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/HP;

    invoke-virtual {p1}, Lo/HP$StateListAnimator;->c()Lo/ImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 38
    :goto_0
    invoke-virtual {p1}, Lo/HP$StateListAnimator;->c()Lo/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/HP;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lo/HP$StateListAnimator;->a()I

    move-result p1

    :goto_1
    invoke-virtual {v0, p1}, Lo/ImageView;->setSeparatorColor(I)V

    return-void
.end method

.method public final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/HP;->j:Ljava/util/List;

    return-object v0
.end method

.method public final r()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/HP;->g:Ljava/lang/Integer;

    return-object v0
.end method
