.class final Lo/Override$StateListAnimator$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NumberFormatException$Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Override$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/Override$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/Override$StateListAnimator;)V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/Override$StateListAnimator$ActionBar;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    .line 184
    iget-object p1, p0, Lo/Override$StateListAnimator$ActionBar;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Override$StateListAnimator;

    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p1, Lo/Override$StateListAnimator;->b:Lo/Override$Application;

    if-eqz v0, :cond_0

    .line 186
    iget-object p1, p1, Lo/Override$StateListAnimator;->b:Lo/Override$Application;

    invoke-interface {p1, p2}, Lo/Override$Application;->e(I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;I)V
    .locals 1

    .line 176
    iget-object p1, p0, Lo/Override$StateListAnimator$ActionBar;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Override$StateListAnimator;

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p1, Lo/Override$StateListAnimator;->b:Lo/Override$Application;

    if-eqz v0, :cond_0

    .line 178
    iget-object p1, p1, Lo/Override$StateListAnimator;->b:Lo/Override$Application;

    invoke-interface {p1, p2}, Lo/Override$Application;->a(I)V

    :cond_0
    return-void
.end method
