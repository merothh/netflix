.class public final Lo/ZL$StateListAnimator;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic c:Lo/ZL;

.field private final d:Lo/zU;

.field private final e:J


# direct methods
.method public constructor <init>(Lo/ZL;Lo/zU;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/zU;",
            "J)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lo/ZL$StateListAnimator;->c:Lo/ZL;

    .line 150
    invoke-direct {p0}, Lo/Ai;-><init>()V

    iput-object p2, p0, Lo/ZL$StateListAnimator;->d:Lo/zU;

    iput-wide p3, p0, Lo/ZL$StateListAnimator;->e:J

    return-void
.end method


# virtual methods
.method public b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-wide v0, p0, Lo/ZL$StateListAnimator;->e:J

    iget-object v2, p0, Lo/ZL$StateListAnimator;->c:Lo/ZL;

    invoke-static {v2}, Lo/ZL;->a(Lo/ZL;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 153
    iget-object v0, p0, Lo/ZL$StateListAnimator;->d:Lo/zU;

    invoke-interface {v0, p1, p2}, Lo/zU;->b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
