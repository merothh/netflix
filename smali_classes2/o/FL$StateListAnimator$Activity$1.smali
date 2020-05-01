.class public final Lo/FL$StateListAnimator$Activity$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL$StateListAnimator$Activity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/FL$StateListAnimator$Activity;


# direct methods
.method constructor <init>(Lo/FL$StateListAnimator$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/FL$StateListAnimator$Activity$1;->e:Lo/FL$StateListAnimator$Activity;

    .line 125
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2}, Lo/cq;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 131
    sget-object p1, Lo/FL;->c:Lo/FL$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 132
    invoke-static {}, Lo/FL;->e()Ljava/util/HashSet;

    move-result-object p1

    iget-object p2, p0, Lo/FL$StateListAnimator$Activity$1;->e:Lo/FL$StateListAnimator$Activity;

    iget-object p2, p2, Lo/FL$StateListAnimator$Activity;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    sget-object p1, Lo/FL;->c:Lo/FL$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 136
    :cond_0
    sget-object p1, Lo/FL;->c:Lo/FL$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :goto_0
    return-void
.end method
