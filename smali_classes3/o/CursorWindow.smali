.class public Lo/CursorWindow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CursorWindow$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Lo/DatabaseUtils;

.field private final b:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/MatrixCursor;

.field private final d:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/CursorWindow$StateListAnimator;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lo/CursorWindow$StateListAnimator;->e(Lo/CursorWindow$StateListAnimator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p1}, Lo/CursorWindow$StateListAnimator;->e(Lo/CursorWindow$StateListAnimator;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->e(Ljava/util/List;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/CursorWindow;->d:Lcom/facebook/common/internal/ImmutableList;

    .line 35
    invoke-static {p1}, Lo/CursorWindow$StateListAnimator;->c(Lo/CursorWindow$StateListAnimator;)Lo/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p1}, Lo/CursorWindow$StateListAnimator;->c(Lo/CursorWindow$StateListAnimator;)Lo/UserInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lo/VerifierDeviceIdentity;->e(Ljava/lang/Object;)Lo/UserInfo;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/CursorWindow;->b:Lo/UserInfo;

    .line 38
    invoke-static {p1}, Lo/CursorWindow$StateListAnimator;->b(Lo/CursorWindow$StateListAnimator;)Lo/DatabaseUtils;

    move-result-object v0

    iput-object v0, p0, Lo/CursorWindow;->a:Lo/DatabaseUtils;

    .line 39
    invoke-static {p1}, Lo/CursorWindow$StateListAnimator;->a(Lo/CursorWindow$StateListAnimator;)Lo/MatrixCursor;

    move-result-object p1

    iput-object p1, p0, Lo/CursorWindow;->c:Lo/MatrixCursor;

    return-void
.end method

.method synthetic constructor <init>(Lo/CursorWindow$StateListAnimator;Lo/CursorWindow$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/CursorWindow;-><init>(Lo/CursorWindow$StateListAnimator;)V

    return-void
.end method

.method public static b()Lo/CursorWindow$StateListAnimator;
    .locals 1

    .line 58
    new-instance v0, Lo/CursorWindow$StateListAnimator;

    invoke-direct {v0}, Lo/CursorWindow$StateListAnimator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lo/MatrixCursor;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/CursorWindow;->c:Lo/MatrixCursor;

    return-object v0
.end method

.method public c()Lcom/facebook/common/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/CursorWindow;->d:Lcom/facebook/common/internal/ImmutableList;

    return-object v0
.end method

.method public d()Lo/DatabaseUtils;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/CursorWindow;->a:Lo/DatabaseUtils;

    return-object v0
.end method

.method public e()Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/CursorWindow;->b:Lo/UserInfo;

    return-object v0
.end method
