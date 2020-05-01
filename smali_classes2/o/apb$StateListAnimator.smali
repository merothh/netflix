.class final Lo/apb$StateListAnimator;
.super Lo/aoX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/apb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aoX<",
        "Lo/aoU;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/apb;

.field private final e:Lo/apb$Application;

.field private final h:Ljava/lang/Object;

.field private final j:Lo/anY;


# direct methods
.method public constructor <init>(Lo/apb;Lo/apb$Application;Lo/anY;Ljava/lang/Object;)V
    .locals 1

    .line 1150
    iget-object v0, p3, Lo/anY;->a:Lo/aod;

    check-cast v0, Lo/aoU;

    invoke-direct {p0, v0}, Lo/aoX;-><init>(Lo/aoU;)V

    iput-object p1, p0, Lo/apb$StateListAnimator;->a:Lo/apb;

    iput-object p2, p0, Lo/apb$StateListAnimator;->e:Lo/apb$Application;

    iput-object p3, p0, Lo/apb$StateListAnimator;->j:Lo/anY;

    iput-object p4, p0, Lo/apb$StateListAnimator;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 3

    .line 1152
    iget-object p1, p0, Lo/apb$StateListAnimator;->a:Lo/apb;

    iget-object v0, p0, Lo/apb$StateListAnimator;->e:Lo/apb$Application;

    iget-object v1, p0, Lo/apb$StateListAnimator;->j:Lo/anY;

    iget-object v2, p0, Lo/apb$StateListAnimator;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lo/apb;->d(Lo/apb;Lo/apb$Application;Lo/anY;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1145
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/apb$StateListAnimator;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/apb$StateListAnimator;->j:Lo/anY;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/apb$StateListAnimator;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
