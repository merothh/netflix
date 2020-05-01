.class Lo/NegativeArraySizeException$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NegativeArraySizeException;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/NegativeArraySizeException;


# direct methods
.method constructor <init>(Lo/NegativeArraySizeException;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-boolean v1, v0, Lo/NegativeArraySizeException;->e:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lo/NegativeArraySizeException;->e:Z

    .line 73
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-boolean v0, v0, Lo/NegativeArraySizeException;->e:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v1, v0, Lo/NegativeArraySizeException;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Lo/NegativeArraySizeException;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v0, v0, Lo/NegativeArraySizeException;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 76
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v1, v0, Lo/NegativeArraySizeException;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/NegativeArraySizeException;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v1, v0, Lo/NegativeArraySizeException;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Lo/NegativeArraySizeException;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v0, v0, Lo/NegativeArraySizeException;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 80
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v1, v0, Lo/NegativeArraySizeException;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/NegativeArraySizeException;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v0, v0, Lo/NegativeArraySizeException;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lo/NegativeArraySizeException$2;->c:Lo/NegativeArraySizeException;

    iget-object v0, v0, Lo/NegativeArraySizeException;->f:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
