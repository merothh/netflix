.class Lo/Locale$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Locale;


# direct methods
.method constructor <init>(Lo/Locale;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/Locale$3;->b:Lo/Locale;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 3

    .line 34
    :try_start_0
    iget-object v0, p0, Lo/Locale$3;->b:Lo/Locale;

    invoke-virtual {v0, p1}, Lo/Locale;->b(I)Lo/BiConsumer;

    move-result-object v0

    iget-object v1, p0, Lo/Locale$3;->b:Lo/Locale;

    .line 35
    invoke-static {v1}, Lo/Locale;->a(Lo/Locale;)I

    move-result v1

    iget-object v2, p0, Lo/Locale$3;->b:Lo/Locale;

    invoke-virtual {v2}, Lo/Locale;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lo/BiConsumer;->a(III)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 44
    iget-object v0, p0, Lo/Locale$3;->b:Lo/Locale;

    invoke-virtual {v0, p1}, Lo/Locale;->b(Ljava/lang/RuntimeException;)V

    const/4 p1, 0x1

    return p1
.end method
