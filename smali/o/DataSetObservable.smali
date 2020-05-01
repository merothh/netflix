.class public Lo/DataSetObservable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserInfo<",
        "Lo/CursorWindowAllocationException;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lo/DatabaseUtils;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/DngCreator;

.field private final e:Lo/MatrixCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/CallbackProxies;Ljava/util/Set;Lo/CursorWindow;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/CallbackProxies;",
            "Ljava/util/Set<",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException;",
            ">;",
            "Lo/CursorWindow;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/DataSetObservable;->a:Landroid/content/Context;

    .line 53
    invoke-virtual {p2}, Lo/CallbackProxies;->f()Lo/DngCreator;

    move-result-object v0

    iput-object v0, p0, Lo/DataSetObservable;->d:Lo/DngCreator;

    if-eqz p4, :cond_0

    .line 55
    invoke-virtual {p4}, Lo/CursorWindow;->d()Lo/DatabaseUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p4}, Lo/CursorWindow;->d()Lo/DatabaseUtils;

    move-result-object v0

    iput-object v0, p0, Lo/DataSetObservable;->b:Lo/DatabaseUtils;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lo/DatabaseUtils;

    invoke-direct {v0}, Lo/DatabaseUtils;-><init>()V

    iput-object v0, p0, Lo/DataSetObservable;->b:Lo/DatabaseUtils;

    .line 60
    :goto_0
    iget-object v1, p0, Lo/DataSetObservable;->b:Lo/DatabaseUtils;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    invoke-static {}, Lo/SQLiteCompatibilityWalFlags;->c()Lo/SQLiteCompatibilityWalFlags;

    move-result-object v3

    .line 63
    invoke-virtual {p2, p1}, Lo/CallbackProxies;->e(Landroid/content/Context;)Lo/LegacyCameraDevice;

    move-result-object v4

    .line 64
    invoke-static {}, Lo/ResolveInfo;->c()Lo/ResolveInfo;

    move-result-object v5

    iget-object p1, p0, Lo/DataSetObservable;->d:Lo/DngCreator;

    .line 65
    invoke-virtual {p1}, Lo/DngCreator;->e()Lo/TriggerEventListener;

    move-result-object v6

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 67
    invoke-virtual {p4}, Lo/CursorWindow;->c()Lcom/facebook/common/internal/ImmutableList;

    move-result-object p2

    move-object v7, p2

    goto :goto_1

    :cond_1
    move-object v7, p1

    :goto_1
    if-eqz p4, :cond_2

    .line 70
    invoke-virtual {p4}, Lo/CursorWindow;->e()Lo/UserInfo;

    move-result-object p2

    move-object v8, p2

    goto :goto_2

    :cond_2
    move-object v8, p1

    .line 60
    :goto_2
    invoke-virtual/range {v1 .. v8}, Lo/DatabaseUtils;->e(Landroid/content/res/Resources;Lo/SQLiteCompatibilityWalFlags;Lo/LegacyCameraDevice;Ljava/util/concurrent/Executor;Lo/TriggerEventListener;Lcom/facebook/common/internal/ImmutableList;Lo/UserInfo;)V

    .line 72
    iput-object p3, p0, Lo/DataSetObservable;->c:Ljava/util/Set;

    if-eqz p4, :cond_3

    .line 75
    invoke-virtual {p4}, Lo/CursorWindow;->a()Lo/MatrixCursor;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lo/DataSetObservable;->e:Lo/MatrixCursor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/CallbackProxies;Lo/CursorWindow;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0, p3}, Lo/DataSetObservable;-><init>(Landroid/content/Context;Lo/CallbackProxies;Ljava/util/Set;Lo/CursorWindow;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/CursorWindow;)V
    .locals 1

    .line 37
    invoke-static {}, Lo/CallbackProxies;->b()Lo/CallbackProxies;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lo/DataSetObservable;-><init>(Landroid/content/Context;Lo/CallbackProxies;Lo/CursorWindow;)V

    return-void
.end method


# virtual methods
.method public b()Lo/CursorWindowAllocationException;
    .locals 5

    .line 80
    new-instance v0, Lo/CursorWindowAllocationException;

    iget-object v1, p0, Lo/DataSetObservable;->a:Landroid/content/Context;

    iget-object v2, p0, Lo/DataSetObservable;->b:Lo/DatabaseUtils;

    iget-object v3, p0, Lo/DataSetObservable;->d:Lo/DngCreator;

    iget-object v4, p0, Lo/DataSetObservable;->c:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/CursorWindowAllocationException;-><init>(Landroid/content/Context;Lo/DatabaseUtils;Lo/DngCreator;Ljava/util/Set;)V

    .line 83
    iget-object v1, p0, Lo/DataSetObservable;->e:Lo/MatrixCursor;

    invoke-virtual {v0, v1}, Lo/CursorWindowAllocationException;->c(Lo/MatrixCursor;)Lo/CursorWindowAllocationException;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/DataSetObservable;->b()Lo/CursorWindowAllocationException;

    move-result-object v0

    return-object v0
.end method
