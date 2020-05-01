.class Lo/Readable$TaskDescription;
.super Lo/Readable$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Readable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/Readable$Dialog;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1, p2}, Lo/Readable$StateListAnimator;-><init>(Landroid/content/Context;Lo/Readable$Dialog;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V
    .locals 0

    .line 819
    invoke-super {p0, p1, p2}, Lo/Readable$StateListAnimator;->a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V

    .line 821
    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 822
    invoke-static {p1}, Lo/ProcessBuilder$StateListAnimator;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 824
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/NoSuchFieldException$Application;->e(Ljava/lang/String;)Lo/NoSuchFieldException$Application;

    :cond_0
    return-void
.end method

.method protected c(Lo/Readable$Application$StateListAnimator;)V
    .locals 1

    .line 841
    invoke-super {p0, p1}, Lo/Readable$StateListAnimator;->c(Lo/Readable$Application$StateListAnimator;)V

    .line 843
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    iget-object p1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 844
    invoke-virtual {p1}, Lo/Object$LoaderManager;->d()Ljava/lang/String;

    move-result-object p1

    .line 843
    invoke-static {v0, p1}, Lo/ProcessBuilder$ActionBar;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected c(Lo/Readable$Application$ActionBar;)Z
    .locals 0

    .line 861
    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    invoke-static {p1}, Lo/ProcessBuilder$StateListAnimator;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 2

    .line 830
    iget-object v0, p0, Lo/Readable$TaskDescription;->c:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1, p1}, Lo/NumberFormatException;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method protected g()Ljava/lang/Object;
    .locals 1

    .line 836
    iget-object v0, p0, Lo/Readable$TaskDescription;->c:Ljava/lang/Object;

    invoke-static {v0}, Lo/ProcessBuilder;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 4

    .line 849
    iget-boolean v0, p0, Lo/Readable$TaskDescription;->j:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lo/Readable$TaskDescription;->c:Ljava/lang/Object;

    iget-object v1, p0, Lo/Readable$TaskDescription;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/NumberFormatException;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 853
    iput-boolean v0, p0, Lo/Readable$TaskDescription;->j:Z

    .line 854
    iget-object v0, p0, Lo/Readable$TaskDescription;->c:Ljava/lang/Object;

    iget v1, p0, Lo/Readable$TaskDescription;->a:I

    iget-object v2, p0, Lo/Readable$TaskDescription;->e:Ljava/lang/Object;

    iget-boolean v3, p0, Lo/Readable$TaskDescription;->i:Z

    or-int/lit8 v3, v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lo/ProcessBuilder;->b(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method
