.class public abstract Lo/SyncAdaptersCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UndoOwner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/UndoOwner<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lo/QuickViewConstants;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 56
    invoke-direct {p0, v0, v0}, Lo/SyncAdaptersCache;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1, p2}, Lo/FallbackCategoryProvider;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iput p1, p0, Lo/SyncAdaptersCache;->d:I

    .line 75
    iput p2, p0, Lo/SyncAdaptersCache;->e:I

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final c()Lo/QuickViewConstants;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/SyncAdaptersCache;->a:Lo/QuickViewConstants;

    return-object v0
.end method

.method public final c(Lo/QuickViewConstants;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/SyncAdaptersCache;->a:Lo/QuickViewConstants;

    return-void
.end method

.method public final c(Lo/SyncStatusInfo;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final e(Lo/SyncStatusInfo;)V
    .locals 2

    .line 105
    iget v0, p0, Lo/SyncAdaptersCache;->d:I

    iget v1, p0, Lo/SyncAdaptersCache;->e:I

    invoke-interface {p1, v0, v1}, Lo/SyncStatusInfo;->c(II)V

    return-void
.end method
