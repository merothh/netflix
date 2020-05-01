.class public final Lo/BJ;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BJ$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/BJ$TaskDescription;

.field private static d:Lo/BJ;


# instance fields
.field private final e:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/BJ$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/BJ$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/BJ;->c:Lo/BJ$TaskDescription;

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V
    .locals 1

    const-string v0, "OfflinePlayableRepo"

    .line 12
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/BJ;->e:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;Lo/amc;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/BJ;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V

    return-void
.end method

.method public static final synthetic b()Lo/BJ;
    .locals 1

    .line 12
    sget-object v0, Lo/BJ;->d:Lo/BJ;

    return-object v0
.end method

.method public static final synthetic d(Lo/BJ;)V
    .locals 0

    .line 12
    sput-object p0, Lo/BJ;->d:Lo/BJ;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Cc;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 50
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    iget-object v0, p0, Lo/BJ;->e:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->d()Lo/BN;

    move-result-object v0

    invoke-interface {v0}, Lo/BN;->a()Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    move-object v1, p0

    check-cast v1, Lo/MessagePdu;

    const-string v1, "items"

    .line 55
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lo/Cc;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    iget-object v0, p0, Lo/BJ;->e:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->d()Lo/BN;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BN;->b(Lo/Cc;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Cc;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 60
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    iget-object v0, p0, Lo/BJ;->e:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->d()Lo/BN;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BN;->c(Ljava/util/List;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Cc;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 32
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lo/BJ;->e:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->d()Lo/BN;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BN;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
