.class Lo/TypeVariable$6;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TypeVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/TypeVariable;


# direct methods
.method constructor <init>(Lo/TypeVariable;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lo/TypeVariable$6;->d:Lo/TypeVariable;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1144
    iget-object p2, p0, Lo/TypeVariable$6;->d:Lo/TypeVariable;

    invoke-virtual {p2, p1}, Lo/TypeVariable;->a(F)V

    return-void
.end method
