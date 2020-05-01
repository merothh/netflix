.class public abstract Lo/HO;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HO$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HO$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/GR;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 27
    sget v0, Lo/GS$FragmentManager;->r:I

    return v0
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 18
    check-cast p1, Lo/HO$Activity;

    invoke-virtual {p0, p1}, Lo/HO;->e(Lo/HO$Activity;)V

    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/HO;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lo/HO$Activity;

    invoke-virtual {p0, p1}, Lo/HO;->e(Lo/HO$Activity;)V

    return-void
.end method

.method public e(Lo/HO$Activity;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lo/HO$Activity;->c()Lo/ImageSwitcher;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lo/HO;->i:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/NdefFormatable;->a(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/HO;->p()Lo/HO$Activity;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected p()Lo/HO$Activity;
    .locals 1

    .line 29
    new-instance v0, Lo/HO$Activity;

    invoke-direct {v0}, Lo/HO$Activity;-><init>()V

    return-object v0
.end method

.method public final r()Ljava/lang/CharSequence;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/HO;->i:Ljava/lang/CharSequence;

    return-object v0
.end method
