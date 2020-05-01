.class public abstract Lo/ZV;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZV$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/ZV$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/ZV$Activity;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lo/ZV$Activity;->d()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/ZV;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "title"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected b()I
    .locals 2

    .line 26
    iget-object v0, p0, Lo/ZV;->b:Ljava/lang/String;

    const-string v1, "QuerySearch"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {v0}, Lo/eM$Application;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget v0, Lo/Zt$LoaderManager;->c:I

    return v0

    .line 30
    :cond_0
    sget v0, Lo/Zt$LoaderManager;->o:I

    return v0

    .line 33
    :cond_1
    sget v0, Lo/Zt$LoaderManager;->c:I

    return v0
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 15
    check-cast p1, Lo/ZV$Activity;

    invoke-virtual {p0, p1}, Lo/ZV;->a(Lo/ZV$Activity;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/ZV$Activity;

    invoke-virtual {p0, p1}, Lo/ZV;->a(Lo/ZV$Activity;)V

    return-void
.end method

.method public e(III)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/ZV;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i_(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/ZV;->b:Ljava/lang/String;

    return-void
.end method
