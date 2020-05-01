.class final Lo/aez$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aez;->d(Landroid/content/Context;Lo/MultiAutoCompleteTextView;)Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/MultiAutoCompleteTextView;


# direct methods
.method constructor <init>(Lo/MultiAutoCompleteTextView;I)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/aez$1;->b:Lo/MultiAutoCompleteTextView;

    iput p2, p0, Lo/aez$1;->a:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 1

    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Lo/aez$1;->b:Lo/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lo/MultiAutoCompleteTextView;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 46
    :cond_1
    :goto_0
    iget p1, p0, Lo/aez$1;->a:I

    return p1
.end method
