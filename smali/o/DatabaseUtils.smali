.class public Lo/DatabaseUtils;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/SQLiteCompatibilityWalFlags;

.field private b:Lo/TriggerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/Executor;

.field private d:Lo/LegacyCameraDevice;

.field private e:Landroid/content/res/Resources;

.field private g:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lo/CursorJoiner;
    .locals 7

    .line 50
    iget-object v1, p0, Lo/DatabaseUtils;->e:Landroid/content/res/Resources;

    iget-object v2, p0, Lo/DatabaseUtils;->a:Lo/SQLiteCompatibilityWalFlags;

    iget-object v3, p0, Lo/DatabaseUtils;->d:Lo/LegacyCameraDevice;

    iget-object v4, p0, Lo/DatabaseUtils;->c:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lo/DatabaseUtils;->b:Lo/TriggerEventListener;

    iget-object v6, p0, Lo/DatabaseUtils;->j:Lcom/facebook/common/internal/ImmutableList;

    move-object v0, p0

    .line 51
    invoke-virtual/range {v0 .. v6}, Lo/DatabaseUtils;->e(Landroid/content/res/Resources;Lo/SQLiteCompatibilityWalFlags;Lo/LegacyCameraDevice;Ljava/util/concurrent/Executor;Lo/TriggerEventListener;Lcom/facebook/common/internal/ImmutableList;)Lo/CursorJoiner;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lo/DatabaseUtils;->g:Lo/UserInfo;

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/CursorJoiner;->c(Z)V

    :cond_0
    return-object v0
.end method

.method protected e(Landroid/content/res/Resources;Lo/SQLiteCompatibilityWalFlags;Lo/LegacyCameraDevice;Ljava/util/concurrent/Executor;Lo/TriggerEventListener;Lcom/facebook/common/internal/ImmutableList;)Lo/CursorJoiner;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/SQLiteCompatibilityWalFlags;",
            "Lo/LegacyCameraDevice;",
            "Ljava/util/concurrent/Executor;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;)",
            "Lo/CursorJoiner;"
        }
    .end annotation

    .line 71
    new-instance v7, Lo/CursorJoiner;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lo/CursorJoiner;-><init>(Landroid/content/res/Resources;Lo/SQLiteCompatibilityWalFlags;Lo/LegacyCameraDevice;Ljava/util/concurrent/Executor;Lo/TriggerEventListener;Lcom/facebook/common/internal/ImmutableList;)V

    return-object v7
.end method

.method public e(Landroid/content/res/Resources;Lo/SQLiteCompatibilityWalFlags;Lo/LegacyCameraDevice;Ljava/util/concurrent/Executor;Lo/TriggerEventListener;Lcom/facebook/common/internal/ImmutableList;Lo/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/SQLiteCompatibilityWalFlags;",
            "Lo/LegacyCameraDevice;",
            "Ljava/util/concurrent/Executor;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;",
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lo/DatabaseUtils;->e:Landroid/content/res/Resources;

    .line 41
    iput-object p2, p0, Lo/DatabaseUtils;->a:Lo/SQLiteCompatibilityWalFlags;

    .line 42
    iput-object p3, p0, Lo/DatabaseUtils;->d:Lo/LegacyCameraDevice;

    .line 43
    iput-object p4, p0, Lo/DatabaseUtils;->c:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p5, p0, Lo/DatabaseUtils;->b:Lo/TriggerEventListener;

    .line 45
    iput-object p6, p0, Lo/DatabaseUtils;->j:Lcom/facebook/common/internal/ImmutableList;

    .line 46
    iput-object p7, p0, Lo/DatabaseUtils;->g:Lo/UserInfo;

    return-void
.end method
