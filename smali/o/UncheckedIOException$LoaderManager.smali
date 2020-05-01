.class Lo/UncheckedIOException$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UncheckedIOException$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UncheckedIOException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoaderManager"
.end annotation


# instance fields
.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final synthetic e:Lo/UncheckedIOException;


# direct methods
.method constructor <init>(Lo/UncheckedIOException;Ljava/lang/String;II)V
    .locals 0

    .line 3295
    iput-object p1, p0, Lo/UncheckedIOException$LoaderManager;->e:Lo/UncheckedIOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3296
    iput-object p2, p0, Lo/UncheckedIOException$LoaderManager;->d:Ljava/lang/String;

    .line 3297
    iput p3, p0, Lo/UncheckedIOException$LoaderManager;->c:I

    .line 3298
    iput p4, p0, Lo/UncheckedIOException$LoaderManager;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/Reader;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3304
    iget-object v0, p0, Lo/UncheckedIOException$LoaderManager;->e:Lo/UncheckedIOException;

    iget-object v0, v0, Lo/UncheckedIOException;->r:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lo/UncheckedIOException$LoaderManager;->c:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lo/UncheckedIOException$LoaderManager;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3307
    iget-object v0, p0, Lo/UncheckedIOException$LoaderManager;->e:Lo/UncheckedIOException;

    iget-object v0, v0, Lo/UncheckedIOException;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    .line 3308
    invoke-virtual {v0}, Lo/SerializablePermission;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3314
    :cond_0
    iget-object v0, p0, Lo/UncheckedIOException$LoaderManager;->e:Lo/UncheckedIOException;

    iget-object v3, p0, Lo/UncheckedIOException$LoaderManager;->d:Ljava/lang/String;

    iget v4, p0, Lo/UncheckedIOException$LoaderManager;->c:I

    iget v5, p0, Lo/UncheckedIOException$LoaderManager;->b:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lo/UncheckedIOException;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
