.class public final Lo/apa;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lo/apN;

.field private static final b:Lo/apN;

.field public static final c:Lo/apN;

.field private static final d:Lo/apN;

.field private static final e:Lo/apN;

.field private static final f:Lo/aoF;

.field private static final j:Lo/aoF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1287
    new-instance v0, Lo/apN;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apa;->e:Lo/apN;

    .line 1290
    new-instance v0, Lo/apN;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apa;->c:Lo/apN;

    .line 1292
    new-instance v0, Lo/apN;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apa;->d:Lo/apN;

    .line 1294
    new-instance v0, Lo/apN;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apa;->a:Lo/apN;

    .line 1301
    new-instance v0, Lo/apN;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apa;->b:Lo/apN;

    .line 1303
    new-instance v0, Lo/aoF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aoF;-><init>(Z)V

    sput-object v0, Lo/apa;->j:Lo/aoF;

    .line 1305
    new-instance v0, Lo/aoF;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/aoF;-><init>(Z)V

    sput-object v0, Lo/apa;->f:Lo/aoF;

    return-void
.end method

.method public static final synthetic a()Lo/aoF;
    .locals 1

    .line 1
    sget-object v0, Lo/apa;->f:Lo/aoF;

    return-object v0
.end method

.method public static final synthetic b()Lo/apN;
    .locals 1

    .line 1
    sget-object v0, Lo/apa;->d:Lo/apN;

    return-object v0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1281
    instance-of v0, p0, Lo/aoO;

    if-eqz v0, :cond_0

    new-instance v0, Lo/aoP;

    check-cast p0, Lo/aoO;

    invoke-direct {v0, p0}, Lo/aoP;-><init>(Lo/aoO;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic c()Lo/apN;
    .locals 1

    .line 1
    sget-object v0, Lo/apa;->e:Lo/apN;

    return-object v0
.end method

.method public static final synthetic d()Lo/apN;
    .locals 1

    .line 1
    sget-object v0, Lo/apa;->a:Lo/apN;

    return-object v0
.end method

.method public static final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1282
    instance-of v0, p0, Lo/aoP;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lo/aoP;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/aoP;->d:Lo/aoO;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final synthetic e()Lo/apN;
    .locals 1

    .line 1
    sget-object v0, Lo/apa;->b:Lo/apN;

    return-object v0
.end method

.method public static final synthetic i()Lo/aoF;
    .locals 1

    .line 1
    sget-object v0, Lo/apa;->j:Lo/aoF;

    return-object v0
.end method
