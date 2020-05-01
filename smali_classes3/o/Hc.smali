.class public abstract Lo/Hc;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Hc$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/Hc$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Ljava/lang/Integer;

.field private h:I

.field private j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/GR;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget p1, Lo/GS$Dialog;->H:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lo/Hc;->j:Ljava/lang/Integer;

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 24
    iput p1, p0, Lo/Hc;->h:I

    return-void
.end method

.method public c(Lo/Hc$ActionBar;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p0}, Lo/Hc$ActionBar;->a(Lo/Hc;)V

    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1}, Lo/Hc;->c(Lo/Hc$ActionBar;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Hc$ActionBar;

    invoke-virtual {p0, p1}, Lo/Hc;->c(Lo/Hc$ActionBar;)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Hc;->u()Lo/Hc$ActionBar;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/Hc;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 24
    iget v0, p0, Lo/Hc;->h:I

    return v0
.end method

.method public final r()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/Hc;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method protected u()Lo/Hc$ActionBar;
    .locals 1

    .line 44
    new-instance v0, Lo/Hc$ActionBar;

    invoke-direct {v0}, Lo/Hc$ActionBar;-><init>()V

    return-object v0
.end method
