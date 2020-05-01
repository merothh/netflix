.class Lo/Lm$5;
.super Lo/aen;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lm;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Lm;


# direct methods
.method constructor <init>(Lo/Lm;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lo/Lm$5;->d:Lo/Lm;

    invoke-direct {p0}, Lo/aen;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lo/Lm$5;->d:Lo/Lm;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Lm;->a(Z)V

    return-void
.end method
