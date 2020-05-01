.class public Lo/Mj;
.super Lo/PendingIntent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Mj$ActionBar;,
        Lo/Mj$StateListAnimator;,
        Lo/Mj$TaskDescription;
    }
.end annotation


# instance fields
.field private b:Lo/Mj$StateListAnimator;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/PendingIntent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lo/Mj$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/Mj;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lo/Mj;->b:Lo/Mj$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/Mj$StateListAnimator;->e(Ljava/util/List;)V

    return-void
.end method

.method public b(Lo/Mj$StateListAnimator;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lo/Mj;->b:Lo/Mj$StateListAnimator;

    return-void
.end method
