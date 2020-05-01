.class Lo/StatFs$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatFs;-><init>(Landroid/content/Context;Lo/SimpleClock$Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/StatFs;


# direct methods
.method constructor <init>(Lo/StatFs;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->e(Lo/StatFs;)Lo/StatFs$Activity;

    move-result-object v0

    invoke-virtual {v0}, Lo/StatFs$Activity;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 181
    :cond_0
    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    if-eq p1, v0, :cond_5

    invoke-static {v0}, Lo/StatFs;->b(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->d(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 184
    iget-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->c(Lo/StatFs;)Lo/SimpleClock$Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 185
    iget-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->c(Lo/StatFs;)Lo/SimpleClock$Activity;

    move-result-object p1

    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v1}, Lo/StatFs;->i(Lo/StatFs;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lo/SimpleClock$Activity;->d(Lo/SystemVibrator;I)V

    .line 187
    :cond_2
    iget-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->e(Lo/StatFs;)Lo/StatFs$Activity;

    move-result-object p1

    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->f(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object v0

    new-instance v1, Lo/StatFs$2$3;

    invoke-direct {v1, p0}, Lo/StatFs$2$3;-><init>(Lo/StatFs$2;)V

    invoke-static {p1, v0, v1}, Lo/StatFs$Activity;->e(Lo/StatFs$Activity;Lo/StatFs$TaskDescription;Lo/StatFs$StateListAnimator;)V

    goto :goto_1

    .line 193
    :cond_3
    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->h(Lo/StatFs;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 194
    iget-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->c(Lo/StatFs;)Lo/SimpleClock$Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 195
    iget-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->c(Lo/StatFs;)Lo/SimpleClock$Activity;

    move-result-object p1

    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->a(Lo/StatFs;)Lo/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v1}, Lo/StatFs;->g(Lo/StatFs;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lo/SimpleClock$Activity;->d(Lo/SystemVibrator;I)V

    .line 197
    :cond_4
    iget-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {p1}, Lo/StatFs;->e(Lo/StatFs;)Lo/StatFs$Activity;

    move-result-object p1

    iget-object v0, p0, Lo/StatFs$2;->b:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->j(Lo/StatFs;)Lo/StatFs$TaskDescription;

    move-result-object v0

    new-instance v1, Lo/StatFs$2$2;

    invoke-direct {v1, p0}, Lo/StatFs$2$2;-><init>(Lo/StatFs$2;)V

    invoke-static {p1, v0, v1}, Lo/StatFs$Activity;->e(Lo/StatFs$Activity;Lo/StatFs$TaskDescription;Lo/StatFs$StateListAnimator;)V

    goto :goto_1

    .line 182
    :cond_5
    :goto_0
    iget-object p1, p0, Lo/StatFs$2;->b:Lo/StatFs;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/StatFs;->d(Lo/StatFs;Z)V

    :cond_6
    :goto_1
    return-void
.end method
