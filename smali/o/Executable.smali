.class public Lo/Executable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Executable$ActionBar;,
        Lo/Executable$Activity;
    }
.end annotation


# instance fields
.field final c:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            "Lo/Executable$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    .line 47
    new-instance v0, Lo/Params;

    invoke-direct {v0}, Lo/Params;-><init>()V

    iput-object v0, p0, Lo/Executable;->c:Lo/Params;

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 3

    .line 101
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v1, p1}, Lo/TextWatcher;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Executable$ActionBar;

    if-eqz v1, :cond_4

    .line 106
    iget v2, v1, Lo/Executable$ActionBar;->e:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    .line 107
    iget v0, v1, Lo/Executable$ActionBar;->e:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Lo/Executable$ActionBar;->e:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 110
    iget-object p2, v1, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 112
    iget-object p2, v1, Lo/Executable$ActionBar;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    .line 117
    :goto_0
    iget v0, v1, Lo/Executable$ActionBar;->e:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->e(I)Ljava/lang/Object;

    .line 119
    invoke-static {v1}, Lo/Executable$ActionBar;->c(Lo/Executable$ActionBar;)V

    :cond_2
    return-object p2

    .line 114
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 273
    invoke-static {}, Lo/Executable$ActionBar;->c()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Executable$ActionBar;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lo/Executable$ActionBar;->e()Lo/Executable$ActionBar;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v1, p1, v0}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iput-object p2, v0, Lo/Executable$ActionBar;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    .line 188
    iget p1, v0, Lo/Executable$ActionBar;->e:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lo/Executable$ActionBar;->e:I

    return-void
.end method

.method public a(Lo/Executable$Activity;)V
    .locals 5

    .line 219
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 220
    iget-object v1, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v1, v0}, Lo/TextWatcher;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    .line 221
    iget-object v2, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v2, v0}, Lo/TextWatcher;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Executable$ActionBar;

    .line 222
    iget v3, v2, Lo/Executable$ActionBar;->e:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 224
    invoke-interface {p1, v1}, Lo/Executable$Activity;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    goto :goto_1

    .line 225
    :cond_0
    iget v3, v2, Lo/Executable$ActionBar;->e:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, v2, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    if-nez v3, :cond_1

    .line 230
    invoke-interface {p1, v1}, Lo/Executable$Activity;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    goto :goto_1

    .line 232
    :cond_1
    iget-object v3, v2, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    iget-object v4, v2, Lo/Executable$ActionBar;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    invoke-interface {p1, v1, v3, v4}, Lo/Executable$Activity;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V

    goto :goto_1

    .line 234
    :cond_2
    iget v3, v2, Lo/Executable$ActionBar;->e:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 236
    iget-object v3, v2, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    iget-object v4, v2, Lo/Executable$ActionBar;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    invoke-interface {p1, v1, v3, v4}, Lo/Executable$Activity;->a(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V

    goto :goto_1

    .line 237
    :cond_3
    iget v3, v2, Lo/Executable$ActionBar;->e:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 239
    iget-object v3, v2, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    iget-object v4, v2, Lo/Executable$ActionBar;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    invoke-interface {p1, v1, v3, v4}, Lo/Executable$Activity;->b(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V

    goto :goto_1

    .line 240
    :cond_4
    iget v3, v2, Lo/Executable$ActionBar;->e:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 242
    iget-object v3, v2, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lo/Executable$Activity;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V

    goto :goto_1

    .line 243
    :cond_5
    iget v3, v2, Lo/Executable$ActionBar;->e:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 245
    iget-object v3, v2, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    iget-object v4, v2, Lo/Executable$ActionBar;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    invoke-interface {p1, v1, v3, v4}, Lo/Executable$Activity;->a(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V

    goto :goto_1

    .line 246
    :cond_6
    iget v1, v2, Lo/Executable$ActionBar;->e:I

    .line 251
    :goto_1
    invoke-static {v2}, Lo/Executable$ActionBar;->c(Lo/Executable$ActionBar;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Executable$ActionBar;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 75
    iget p1, p1, Lo/Executable$ActionBar;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Intent;)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 1

    const/4 v0, 0x4

    .line 86
    invoke-direct {p0, p1, v0}, Lo/Executable;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 1

    .line 173
    iget-object v0, p0, Lo/Executable;->c:Lo/Params;

    invoke-virtual {v0, p1, p2}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Executable$ActionBar;

    if-eqz p1, :cond_0

    .line 162
    iget p1, p1, Lo/Executable$ActionBar;->e:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0}, Lo/TextWatcher;->clear()V

    .line 55
    iget-object v0, p0, Lo/Executable;->c:Lo/Params;

    invoke-virtual {v0}, Lo/Params;->d()V

    return-void
.end method

.method public d(JLandroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/Executable;->c:Lo/Params;

    invoke-virtual {v0, p1, p2, p3}, Lo/Params;->b(JLjava/lang/Object;)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Executable$ActionBar;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lo/Executable$ActionBar;->e()Lo/Executable$ActionBar;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v1, p1, v0}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    iget p1, v0, Lo/Executable$ActionBar;->e:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lo/Executable$ActionBar;->e:I

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Executable$ActionBar;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lo/Executable$ActionBar;->e()Lo/Executable$ActionBar;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v1, p1, v0}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget p1, v0, Lo/Executable$ActionBar;->e:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lo/Executable$ActionBar;->e:I

    .line 151
    iput-object p2, v0, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$Intent;)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;
    .locals 1

    const/16 v0, 0x8

    .line 97
    invoke-direct {p0, p1, v0}, Lo/Executable;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$Intent;Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Executable$ActionBar;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lo/Executable$ActionBar;->e()Lo/Executable$ActionBar;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v1, p1, v0}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iput-object p2, v0, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    .line 70
    iget p1, v0, Lo/Executable$ActionBar;->e:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lo/Executable$ActionBar;->e:I

    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Executable$ActionBar;

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget v0, p1, Lo/Executable$ActionBar;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lo/Executable$ActionBar;->e:I

    return-void
.end method

.method public i(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lo/Executable;->c:Lo/Params;

    invoke-virtual {v0}, Lo/Params;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 261
    iget-object v1, p0, Lo/Executable;->c:Lo/Params;

    invoke-virtual {v1, v0}, Lo/Params;->b(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 262
    iget-object v1, p0, Lo/Executable;->c:Lo/Params;

    invoke-virtual {v1, v0}, Lo/Params;->a(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/Executable;->d:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Executable$ActionBar;

    if-eqz p1, :cond_2

    .line 268
    invoke-static {p1}, Lo/Executable$ActionBar;->c(Lo/Executable$ActionBar;)V

    :cond_2
    return-void
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Lo/Executable;->f(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    return-void
.end method
