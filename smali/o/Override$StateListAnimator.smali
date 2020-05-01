.class Lo/Override$StateListAnimator;
.super Lo/Override;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Override;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Override$StateListAnimator$ActionBar;
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private h:Z

.field private final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 131
    invoke-direct {p0, p1, p2}, Lo/Override;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 133
    invoke-static {p1}, Lo/NumberFormatException;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/Override$StateListAnimator;->e:Ljava/lang/Object;

    .line 134
    iget-object p1, p0, Lo/Override$StateListAnimator;->e:Ljava/lang/Object;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lo/NumberFormatException;->e(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/Override$StateListAnimator;->d:Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lo/Override$StateListAnimator;->e:Ljava/lang/Object;

    iget-object p2, p0, Lo/Override$StateListAnimator;->d:Ljava/lang/Object;

    invoke-static {p1, p2}, Lo/NumberFormatException;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(Lo/Override$Activity;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    iget v1, p1, Lo/Override$Activity;->b:I

    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->d(Ljava/lang/Object;I)V

    .line 144
    iget-object v0, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    iget v1, p1, Lo/Override$Activity;->a:I

    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->c(Ljava/lang/Object;I)V

    .line 146
    iget-object v0, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    iget v1, p1, Lo/Override$Activity;->c:I

    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->a(Ljava/lang/Object;I)V

    .line 148
    iget-object v0, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    iget v1, p1, Lo/Override$Activity;->e:I

    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->e(Ljava/lang/Object;I)V

    .line 150
    iget-object v0, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    iget p1, p1, Lo/Override$Activity;->d:I

    invoke-static {v0, p1}, Lo/NumberFormatException$Fragment;->b(Ljava/lang/Object;I)V

    .line 153
    iget-boolean p1, p0, Lo/Override$StateListAnimator;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lo/Override$StateListAnimator;->h:Z

    .line 155
    iget-object p1, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    new-instance v0, Lo/Override$StateListAnimator$ActionBar;

    invoke-direct {v0, p0}, Lo/Override$StateListAnimator$ActionBar;-><init>(Lo/Override$StateListAnimator;)V

    .line 156
    invoke-static {v0}, Lo/NumberFormatException;->c(Lo/NumberFormatException$Dialog;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    invoke-static {p1, v0}, Lo/NumberFormatException$Fragment;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lo/Override$StateListAnimator;->j:Ljava/lang/Object;

    iget-object v0, p0, Lo/Override$StateListAnimator;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lo/NumberFormatException$Fragment;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
