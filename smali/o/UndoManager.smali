.class public abstract Lo/UndoManager;
.super Lo/SyncInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UndoManager$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SyncInfo<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static c:Z

.field private static d:Ljava/lang/Integer;


# instance fields
.field private final a:Lo/UndoManager$ActionBar;

.field private b:Landroid/view/View$OnAttachStateChangeListener;

.field protected final e:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lo/SyncInfo;-><init>()V

    .line 65
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lo/UndoManager;->e:Landroid/view/View;

    .line 66
    new-instance v0, Lo/UndoManager$ActionBar;

    invoke-direct {v0, p1}, Lo/UndoManager$ActionBar;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lo/UndoManager;->a:Lo/UndoManager$ActionBar;

    return-void
.end method

.method public static b(I)V
    .locals 1

    .line 322
    sget-object v0, Lo/UndoManager;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-boolean v0, Lo/UndoManager;->c:Z

    if-nez v0, :cond_0

    .line 326
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lo/UndoManager;->d:Ljava/lang/Integer;

    return-void

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .line 284
    sget-object v0, Lo/UndoManager;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 285
    sput-boolean v0, Lo/UndoManager;->c:Z

    .line 286
    iget-object v0, p0, Lo/UndoManager;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lo/UndoManager;->e:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 184
    iget-object v0, p0, Lo/UndoManager;->b:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lo/UndoManager;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lo/UndoManager;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lo/UndoManager;->i:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 193
    iget-object v0, p0, Lo/UndoManager;->b:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lo/UndoManager;->i:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p0, Lo/UndoManager;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lo/UndoManager;->i:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private i()Ljava/lang/Object;
    .locals 2

    .line 294
    sget-object v0, Lo/UndoManager;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lo/UndoManager;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    iget-object v1, p0, Lo/UndoManager;->e:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Lo/SyncInfo;->a(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p1, p0, Lo/UndoManager;->a:Lo/UndoManager$ActionBar;

    invoke-virtual {p1}, Lo/UndoManager$ActionBar;->c()V

    .line 236
    iget-boolean p1, p0, Lo/UndoManager;->j:Z

    if-nez p1, :cond_0

    .line 237
    invoke-direct {p0}, Lo/UndoManager;->h()V

    :cond_0
    return-void
.end method

.method public c()Lo/QuickViewConstants;
    .locals 2

    .line 265
    invoke-direct {p0}, Lo/UndoManager;->i()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    instance-of v1, v0, Lo/QuickViewConstants;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Lo/QuickViewConstants;

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Lo/QuickViewConstants;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1}, Lo/UndoManager;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lo/SyncStatusInfo;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lo/UndoManager;->a:Lo/UndoManager$ActionBar;

    invoke-virtual {v0, p1}, Lo/UndoManager$ActionBar;->a(Lo/SyncStatusInfo;)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lo/SyncInfo;->e(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-direct {p0}, Lo/UndoManager;->f()V

    return-void
.end method

.method public e(Lo/SyncStatusInfo;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lo/UndoManager;->a:Lo/UndoManager$ActionBar;

    invoke-virtual {v0, p1}, Lo/UndoManager$ActionBar;->e(Lo/SyncStatusInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/UndoManager;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
