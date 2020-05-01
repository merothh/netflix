.class Lo/TypeVariable$2;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TypeVariable;->a(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/TypeVariable;


# direct methods
.method constructor <init>(Lo/TypeVariable;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lo/TypeVariable$2;->e:Lo/TypeVariable;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 444
    iget-object p2, p0, Lo/TypeVariable$2;->e:Lo/TypeVariable;

    invoke-virtual {p2, p1}, Lo/TypeVariable;->d(F)V

    return-void
.end method
