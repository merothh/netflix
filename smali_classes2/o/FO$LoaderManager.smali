.class public final Lo/FO$LoaderManager;
.super Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FO;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/FO;


# direct methods
.method constructor <init>(Lo/FO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lo/FO$LoaderManager;->e:Lo/FO;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 1

    .line 231
    iget-object v0, p0, Lo/FO$LoaderManager;->e:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lo/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lo/MultiAutoCompleteTextView;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p1, p0, Lo/FO$LoaderManager;->e:Lo/FO;

    invoke-virtual {p1}, Lo/FO;->t()I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 235
    iget-object p1, p0, Lo/FO$LoaderManager;->e:Lo/FO;

    invoke-virtual {p1}, Lo/FO;->t()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 231
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.RecyclerViewHeaderAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
