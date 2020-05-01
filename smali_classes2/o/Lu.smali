.class Lo/Lu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final e:Lo/Lm;


# direct methods
.method public constructor <init>(Lo/Lm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lu;->e:Lo/Lm;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lo/Lu;->e:Lo/Lm;

    invoke-virtual {v0, p1}, Lo/Lm;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method
