.class public abstract Lo/HS;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HS$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HS$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnClickListener;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lo/GR;-><init>()V

    .line 33
    new-instance v0, Lo/HS$Application;

    invoke-direct {v0, p0}, Lo/HS$Application;-><init>(Lo/HS;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lo/HS;->h:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/HS;->g:Ljava/lang/String;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 46
    sget v0, Lo/GS$FragmentManager;->y:I

    return v0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HS$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HS;->e(Lo/HS$TaskDescription;)V

    return-void
.end method

.method public c(Lo/HS$TaskDescription;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lo/HS;->g:Ljava/lang/String;

    iget-object v1, p0, Lo/HS;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/HS$TaskDescription;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object p1

    iget-object v0, p0, Lo/HS;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HS$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HS;->c(Lo/HS$TaskDescription;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HS$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HS;->c(Lo/HS$TaskDescription;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lo/HS;->j:Ljava/lang/String;

    return-void
.end method

.method public e(Lo/HS$TaskDescription;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->i()V

    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HS$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HS;->e(Lo/HS$TaskDescription;)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lo/HS;->q()Lo/HS$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/HS;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected q()Lo/HS$TaskDescription;
    .locals 1

    .line 24
    new-instance v0, Lo/HS$TaskDescription;

    invoke-direct {v0}, Lo/HS$TaskDescription;-><init>()V

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/HS;->g:Ljava/lang/String;

    return-object v0
.end method
