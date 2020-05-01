.class public Lo/agV;
.super Lo/agO;
.source ""


# static fields
.field private static final c:Lorg/slf4j/Logger;


# instance fields
.field final b:Lo/ahS;

.field final e:Lo/aih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lo/agV;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lo/agV;->c:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lo/aih;Lo/ahS;)V
    .locals 1

    .line 38
    sget-object v0, Lo/agX;->m:Lo/agT;

    invoke-direct {p0, v0}, Lo/agO;-><init>(Lo/agT;)V

    .line 39
    iput-object p2, p0, Lo/agV;->b:Lo/ahS;

    .line 40
    iput-object p1, p0, Lo/agV;->e:Lo/aih;

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;
    .locals 3

    .line 57
    instance-of v0, p2, Lo/agU;

    if-eqz v0, :cond_2

    .line 62
    check-cast p2, Lo/agU;

    .line 64
    invoke-virtual {p2}, Lo/agU;->d()Lo/ahS;

    move-result-object v0

    iget-object v1, p0, Lo/agV;->b:Lo/ahS;

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p2}, Lo/agU;->e()Lo/agQ;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lo/agQ;->b()Lo/agT;

    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Lcom/netflix/msl/util/MslContext;->c(Lo/agT;)Lo/agO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v2, p1, v0}, Lo/agO;->b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    sget-object p1, Lo/agV;->c:Lorg/slf4j/Logger;

    const-string v0, "Could not find entity auth factory for scheme {}"

    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v0, Lo/agz;->bb:Lo/agz;

    invoke-virtual {v1}, Lo/agT;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    throw p1

    .line 65
    :cond_1
    sget-object p1, Lo/agV;->c:Lorg/slf4j/Logger;

    const-string p2, "MasterToken mismatch between entity auth data and MSL context."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 66
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object p2, Lo/agz;->by:Lo/agz;

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;)V

    throw p1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    const-class v1, Lo/agU;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "expected %s, received %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    sget-object p2, Lo/agV;->c:Lorg/slf4j/Logger;

    const-string v0, "Incorrect authentication data type: {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect authentication data type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/agQ;
    .locals 1

    .line 48
    new-instance v0, Lo/agU;

    invoke-direct {v0, p1, p2}, Lo/agU;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V

    return-object v0
.end method
