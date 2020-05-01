.class Lo/IL$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IL;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic e:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;I)V
    .locals 0

    .line 464
    iput-object p1, p0, Lo/IL$2;->e:Lo/IL;

    iput p2, p0, Lo/IL$2;->b:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 1

    .line 468
    iget-object v0, p0, Lo/IL$2;->e:Lo/IL;

    invoke-static {v0}, Lo/IL;->e(Lo/IL;)Lo/IL$Activity;

    move-result-object v0

    invoke-virtual {v0}, Lo/IL$Activity;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 469
    iget p1, p0, Lo/IL$2;->b:I

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
