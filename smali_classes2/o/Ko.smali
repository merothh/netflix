.class Lo/Ko;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final d:Lo/Ki;

.field private final e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lo/Ki;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ko;->d:Lo/Ki;

    iput-object p2, p0, Lo/Ko;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lo/Ko;->d:Lo/Ki;

    iget-object v1, p0, Lo/Ko;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1}, Lo/Ki;->e(Lo/Ki;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
