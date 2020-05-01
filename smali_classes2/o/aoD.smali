.class final Lo/aoD;
.super Lo/anQ;
.source ""


# instance fields
.field private final d:Lo/aoA;


# direct methods
.method public constructor <init>(Lo/aoA;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lo/anQ;-><init>()V

    iput-object p1, p0, Lo/aoD;->d:Lo/aoA;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lo/aoD;->d:Lo/aoA;

    invoke-interface {p1}, Lo/aoA;->a()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/aoD;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisposeOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aoD;->d:Lo/aoA;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
