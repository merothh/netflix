.class Lo/Looper$Application;
.super Lo/Looper$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/Looper$ActionBar<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/Looper$StateListAnimator;Lo/Looper$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2}, Lo/Looper$ActionBar;-><init>(Lo/Looper$StateListAnimator;Lo/Looper$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method a(Lo/Looper$StateListAnimator;)Lo/Looper$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;)",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 310
    iget-object p1, p1, Lo/Looper$StateListAnimator;->c:Lo/Looper$StateListAnimator;

    return-object p1
.end method

.method b(Lo/Looper$StateListAnimator;)Lo/Looper$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;)",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 305
    iget-object p1, p1, Lo/Looper$StateListAnimator;->e:Lo/Looper$StateListAnimator;

    return-object p1
.end method
