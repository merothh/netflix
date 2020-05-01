.class public Lo/UndoOperation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsQueryHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppsQueryHelper<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final c:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lo/UndoOperation;->c:I

    .line 33
    iput-boolean p2, p0, Lo/UndoOperation;->a:Z

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;Lo/AppsQueryHelper$Application;)Z
    .locals 0

    .line 15
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lo/UndoOperation;->d(Landroid/graphics/drawable/Drawable;Lo/AppsQueryHelper$Application;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/graphics/drawable/Drawable;Lo/AppsQueryHelper$Application;)Z
    .locals 4

    .line 49
    invoke-interface {p2}, Lo/AppsQueryHelper$Application;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 53
    :cond_0
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-boolean p1, p0, Lo/UndoOperation;->a:Z

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 56
    iget p1, p0, Lo/UndoOperation;->c:I

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 57
    invoke-interface {p2, v2}, Lo/AppsQueryHelper$Application;->c(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method
