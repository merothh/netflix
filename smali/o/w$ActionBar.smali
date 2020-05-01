.class Lo/w$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/w$ActionBar$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/w$ActionBar$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(III)V
    .locals 3

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lo/w$ActionBar;->a:Ljava/util/Deque;

    .line 242
    iput p3, p0, Lo/w$ActionBar;->b:I

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 244
    iget-object v0, p0, Lo/w$ActionBar;->a:Ljava/util/Deque;

    new-instance v1, Lo/w$ActionBar$StateListAnimator;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lo/w$ActionBar$StateListAnimator;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lo/w$ActionBar$StateListAnimator;
    .locals 3

    .line 249
    iget-object v0, p0, Lo/w$ActionBar;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/w$ActionBar$StateListAnimator;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lo/w$ActionBar$StateListAnimator;

    iget v1, p0, Lo/w$ActionBar;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/w$ActionBar$StateListAnimator;-><init>(IZ)V

    :cond_0
    return-object v0
.end method

.method public b(Lo/w$ActionBar$StateListAnimator;)V
    .locals 1

    .line 257
    iget-boolean v0, p1, Lo/w$ActionBar$StateListAnimator;->c:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p1, Lo/w$ActionBar$StateListAnimator;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    iget-object v0, p0, Lo/w$ActionBar;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
