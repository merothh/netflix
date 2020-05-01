.class public Lo/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FragmentManagerNonConfig$Activity;,
        Lo/FragmentManagerNonConfig$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/android/volley/VolleyError;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Z

.field public final d:Lo/ContextImpl$StateListAnimator;


# direct methods
.method private constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lo/FragmentManagerNonConfig;->c:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lo/FragmentManagerNonConfig;->b:Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    .line 83
    iput-object p1, p0, Lo/FragmentManagerNonConfig;->a:Lcom/android/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/ContextImpl$StateListAnimator;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lo/FragmentManagerNonConfig;->c:Z

    .line 75
    iput-object p1, p0, Lo/FragmentManagerNonConfig;->b:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lo/FragmentManagerNonConfig;->a:Lcom/android/volley/VolleyError;

    return-void
.end method

.method public static a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/VolleyError;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lo/FragmentManagerNonConfig;

    invoke-direct {v0, p0}, Lo/FragmentManagerNonConfig;-><init>(Lcom/android/volley/VolleyError;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/ContextImpl$StateListAnimator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lo/FragmentManagerNonConfig;

    invoke-direct {v0, p0, p1}, Lo/FragmentManagerNonConfig;-><init>(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)V

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lo/FragmentManagerNonConfig;->a:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
