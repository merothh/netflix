.class final Lo/Object$StateListAnimator$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Override$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Object$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lo/Object$StateListAnimator;

.field private final b:Lo/Override;

.field private d:Z


# direct methods
.method public constructor <init>(Lo/Object$StateListAnimator;Ljava/lang/Object;)V
    .locals 0

    .line 2846
    iput-object p1, p0, Lo/Object$StateListAnimator$TaskDescription;->a:Lo/Object$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2847
    iget-object p1, p1, Lo/Object$StateListAnimator;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lo/Override;->a(Landroid/content/Context;Ljava/lang/Object;)Lo/Override;

    move-result-object p1

    iput-object p1, p0, Lo/Object$StateListAnimator$TaskDescription;->b:Lo/Override;

    .line 2848
    iget-object p1, p0, Lo/Object$StateListAnimator$TaskDescription;->b:Lo/Override;

    invoke-virtual {p1, p0}, Lo/Override;->d(Lo/Override$Application;)V

    .line 2849
    invoke-virtual {p0}, Lo/Object$StateListAnimator$TaskDescription;->c()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 2853
    iget-object v0, p0, Lo/Object$StateListAnimator$TaskDescription;->b:Lo/Override;

    invoke-virtual {v0}, Lo/Override;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 2874
    iget-boolean v0, p0, Lo/Object$StateListAnimator$TaskDescription;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Object$StateListAnimator$TaskDescription;->a:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->i:Lo/Object$LoaderManager;

    if-eqz v0, :cond_0

    .line 2875
    iget-object v0, p0, Lo/Object$StateListAnimator$TaskDescription;->a:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->i:Lo/Object$LoaderManager;

    invoke-virtual {v0, p1}, Lo/Object$LoaderManager;->a(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2862
    iget-object v0, p0, Lo/Object$StateListAnimator$TaskDescription;->b:Lo/Override;

    iget-object v1, p0, Lo/Object$StateListAnimator$TaskDescription;->a:Lo/Object$StateListAnimator;

    iget-object v1, v1, Lo/Object$StateListAnimator;->d:Lo/Override$Activity;

    invoke-virtual {v0, v1}, Lo/Override;->d(Lo/Override$Activity;)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    .line 2857
    iput-boolean v0, p0, Lo/Object$StateListAnimator$TaskDescription;->d:Z

    .line 2858
    iget-object v0, p0, Lo/Object$StateListAnimator$TaskDescription;->b:Lo/Override;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Override;->d(Lo/Override$Application;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 2867
    iget-boolean v0, p0, Lo/Object$StateListAnimator$TaskDescription;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Object$StateListAnimator$TaskDescription;->a:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->i:Lo/Object$LoaderManager;

    if-eqz v0, :cond_0

    .line 2868
    iget-object v0, p0, Lo/Object$StateListAnimator$TaskDescription;->a:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->i:Lo/Object$LoaderManager;

    invoke-virtual {v0, p1}, Lo/Object$LoaderManager;->c(I)V

    :cond_0
    return-void
.end method
