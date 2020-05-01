.class public Lo/UriPermission;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AndroidTestBaseUpdater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AndroidTestBaseUpdater<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:Z

.field private e:Lo/UndoOperation;


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lo/UriPermission;->b:I

    .line 25
    iput-boolean p2, p0, Lo/UriPermission;->c:Z

    return-void
.end method

.method private d()Lo/AppsQueryHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AppsQueryHelper<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/UriPermission;->e:Lo/UndoOperation;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lo/UndoOperation;

    iget v1, p0, Lo/UriPermission;->b:I

    iget-boolean v2, p0, Lo/UriPermission;->c:Z

    invoke-direct {v0, v1, v2}, Lo/UndoOperation;-><init>(IZ)V

    iput-object v0, p0, Lo/UriPermission;->e:Lo/UndoOperation;

    .line 38
    :cond_0
    iget-object v0, p0, Lo/UriPermission;->e:Lo/UndoOperation;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/load/DataSource;Z)Lo/AppsQueryHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lo/AppsQueryHelper<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object p2, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p2, :cond_0

    .line 31
    invoke-static {}, Lo/UriMatcher;->e()Lo/AppsQueryHelper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/UriPermission;->d()Lo/AppsQueryHelper;

    move-result-object p1

    :goto_0
    return-object p1
.end method
