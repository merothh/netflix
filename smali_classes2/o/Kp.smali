.class Lo/Kp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lo/Ki;

.field private final d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lo/Ki;IILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Kp;->c:Lo/Ki;

    iput p2, p0, Lo/Kp;->b:I

    iput p3, p0, Lo/Kp;->a:I

    iput-object p4, p0, Lo/Kp;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lo/Kp;->c:Lo/Ki;

    iget v1, p0, Lo/Kp;->b:I

    iget v2, p0, Lo/Kp;->a:I

    iget-object v3, p0, Lo/Kp;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v3, p1}, Lo/Ki;->a(Lo/Ki;IILandroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
