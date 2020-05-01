.class public final Lo/StringBuffer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StringBuffer$StateListAnimator;
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
.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lo/State$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/State$StateListAnimator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/State$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lo/State$StateListAnimator<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/StringBuffer;->b:Ljava/util/concurrent/Executor;

    .line 49
    iput-object p2, p0, Lo/StringBuffer;->c:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p3, p0, Lo/StringBuffer;->d:Lo/State$StateListAnimator;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/StringBuffer;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()Lo/State$StateListAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/State$StateListAnimator<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/StringBuffer;->d:Lo/State$StateListAnimator;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/StringBuffer;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method
