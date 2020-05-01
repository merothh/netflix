.class public Lo/StreamTokenizer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final e:Lo/StringBufferInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StringBufferInputStream<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/StringBufferInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StringBufferInputStream<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    return-void
.end method

.method public static e(Lo/StringBufferInputStream;)Lo/StreamTokenizer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StringBufferInputStream<",
            "*>;)",
            "Lo/StreamTokenizer;"
        }
    .end annotation

    .line 57
    new-instance v0, Lo/StreamTokenizer;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Lo/CharArrayWriter;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/StringBufferInputStream;

    invoke-direct {v0, p0}, Lo/StreamTokenizer;-><init>(Lo/StringBufferInputStream;)V

    return-object v0
.end method


# virtual methods
.method public a()Lo/SerializablePermission;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .line 340
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->b(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 141
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->p()V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1

    .line 398
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->c(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    .line 386
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1, p2}, Lo/UncheckedIOException;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .line 424
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 134
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/UncheckedIOException;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 235
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->t()V

    return-void
.end method

.method public c(Landroid/os/Parcelable;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    instance-of v1, v0, Lo/Error;

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->c(Landroid/os/Parcelable;)V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    iget-object v1, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    invoke-virtual {v0, v1, v1, p1}, Lo/UncheckedIOException;->b(Lo/StringBufferInputStream;Lo/StreamCorruptedException;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c(Landroid/view/MenuItem;)Z
    .locals 1

    .line 411
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->q()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/content/res/Configuration;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->c(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public d(Landroid/view/Menu;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->d(Landroid/view/Menu;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 351
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0, p1}, Lo/UncheckedIOException;->d(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 246
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->r()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 268
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->y()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 290
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->w()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 257
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->s()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 329
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->v()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 279
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->x()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 374
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->C()V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lo/StreamTokenizer;->e:Lo/StringBufferInputStream;

    iget-object v0, v0, Lo/StringBufferInputStream;->e:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->n()Z

    move-result v0

    return v0
.end method
