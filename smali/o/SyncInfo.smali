.class public abstract Lo/SyncInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UndoOwner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/UndoOwner<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private e:Lo/QuickViewConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public c()Lo/QuickViewConstants;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/SyncInfo;->e:Lo/QuickViewConstants;

    return-object v0
.end method

.method public c(Lo/QuickViewConstants;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/SyncInfo;->e:Lo/QuickViewConstants;

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
